$( document ).ready(function() {
	$('#UploadForm').on('submit', uploadFiles);
	$('input[type=file]').on('change', prepareUpload);	

	var files;

	function prepareUpload(event)
	{
	  files = event.target.files;
	}

	// Catch the form submit and upload the files
	function uploadFiles(event)
	{
		event.stopPropagation();
		event.preventDefault();
		
		$('#response').text("Checking new firmware...");


		// Create a formdata object and add the files
		var data = new FormData();
		$.each(files, function(key, value)
		{
			data.append(key, value);
		});
		
		var formData = new FormData($(this)[0]);
		
		
		
		console.log(formData);
		
	
		$.ajax({
			url: 'upload',
			type: 'POST',
			data: formData,
			cache: false,
			dataType: 'json',
			processData: false,
			contentType: false
		}).then(function(res){
			$('#response').text("Sending firmware to device...");
			return $.ajax({
				url: 'flash',
				type: 'POST',
				data: data,
				cache: false,
				dataType: 'json',
				processData: false,
				contentType: false
			});
		}).then(function(res){
			$('#response').text("SUCCESS!!! Firmware uploaded.");
		});

		
	}
	
	
});


