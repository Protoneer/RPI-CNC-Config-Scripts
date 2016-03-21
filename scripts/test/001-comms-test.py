
import serial
import time
import sys
import smtplib
ser = serial.Serial('/dev/ttyAMA0',115200,timeout=1)
import os



# Reset
print("Reset....")
ser.flushInput()
ser.flushOutput()
ser.write("\030")
ser.write("x0y0z0\n")
time.sleep(5)
print(ser.readline())
print(ser.readline())
print(ser.readline())

maxTries = 900

def email(subject,msg):
	fromaddr = 'xxx@gmail.com'
	toaddrs  = 'xxx@gmail.com'

	# Credentials (if needed)
	username = 'xxx@gmail.com'
	password = 'xxx'

	# The actual mail send
	server = smtplib.SMTP('smtp.gmail.com:587')
	server.starttls()
	server.login(username,password)
	
	server.sendmail(fromaddr, toaddrs, 'Subject: %s\n\n%s' % (subject, msg))
	server.quit()

def failed(message):
  print(message)
	#email("CNC-1 Test Failed",message);
	sys.exit()


def test(x):
	temp = 'x' + str(x) + 'y' + str(x) + 'z'+ str(x)
	ser.write(temp + "\n")
	print(temp)
	time.sleep(1)
	ser.readline()
	ser.write('?')
	time.sleep(0.1)
	returned = ser.readline()
	expected = "<Idle,MPos:"+str(x)+".000,"+str(x)+".000,"+str(x)+".000,WPos:"+str(x)+".000,"+str(x)+".000,"+str(x)+".000>"
	result = returned.startswith(expected)
	print('Received:'+returned)
	if not result:
		failed("Received:" + returned + " Expected:"+expected)

for x in range(0,maxTries+1):
	test(x)
	
for x in range(maxTries,-1,-1):
	test(x)
	


#email("CNC-1 Test SUCCESS","")
	
# <Idle,MPos:0.000,0.000,0.000,WPos:0.000,0.000,0.000>
ser.close()
#os.system("sudo shutdown -h now")
