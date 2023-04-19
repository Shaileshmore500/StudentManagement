	
	$(document).ready(function () {
		
		$('#save_profile').click(function () {
			var user=$('#exampleInputName').val();
			if (user.length<=2 || user.length>=25) {
				$('#nameHelp').html("<b style='color:red'>**Please enter name between 3-25 letters</b>");
				return false;
			}
			if (user.length>=2 || user.length<=25) {
				$('#nameHelp').html("");				
			}
			
			var contact=$('#number').val();
			if(contact.length>10||contact.length==1||contact.length==2||contact.length==3||contact.length==4||contact.length==5||contact.length==6||contact.length==7||contact.length==8||contact.length==9)
			{
				$('#contactHelp').html('<b style="color:red">**please enter 10 digit valide number</b>');
				return false;
			}
			if(contact.length==10)
			{
				$('#contactHelp').html("");
				
			}
			var password=$('#exampleInputPassword1').val();
			if(password.length<6)
			{
				$('#passwordtHelp').html('<b style="color:red">**Password must contain atleast 6 letters</b>');
				return false;
			}
			
				
				
			
		})	
	});