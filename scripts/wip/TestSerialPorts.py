import sys
import glob
import time
import serial

serialPortList = ['/dev/ttyAMA0','/dev/ttyS0','/dev/serial0','/dev/serial1','/dev/serial2','/dev/USB0','/dev/USB1']

def serial_ports():
    """ Lists serial port names

        :raises EnvironmentError:
            On unsupported or unknown platforms
        :returns:
            A list of the serial ports available on the system
    """
    if sys.platform.startswith('win'):
        ports = ['COM%s' % (i + 1) for i in range(256)]
    elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
        # this excludes your current terminal "/dev/tty"
        ports = glob.glob('/dev/tty[A-Za-z]*')
    elif sys.platform.startswith('darwin'):
        ports = glob.glob('/dev/tty.*')
    else:
        raise EnvironmentError('Unsupported platform')

    result = []
    for port in ports:
        try:
            s = serial.Serial(port)
            s.close()
            result.append(port)
        except (OSError, serial.SerialException):
            pass
    return result

def TestSerial(sport):
	out = ''
	try:	
		# configure the serial connections (the parameters differs on the device you are connecting to)
		ser = serial.Serial(
			port=sport,
			baudrate=115200
		)
	
		ser.isOpen()
		ser.write('?')
		time.sleep(1)
		while ser.inWaiting() > 0:
			out += ser.read(1)
	except:
		out = ''
	
	return 'MPos' in out and 'WPos' in out

#print 'Serial Port :' + str(serial_ports())	

for port in serial_ports():
	print str(port) + ' : ' + str(TestSerial(port))
	
for port in serialPortList:
	print str(port) + ' : ' + str(TestSerial(port))
