function registervalidateform()
{

    var user=document.registerform.uname.value;
    var pass=document.registerform.pass.value;
    var cpass=document.registerform.cpass.value;
    var gender=document.registerform.gender.value;
    var dob=document.registerform.dob.value;
    var occupation=document.registerform.occupation.value;
    var email=document.registerform.email.value;
    var address=document.registerform.address.value;
    var pincode=document.registerform.pincode.value;
    var phone=document.registerform.phone.value;
    var nationality=document.registerform.nationality.value;
    var x = document.getElementById("business").checked;
  	var y = document.getElementById("personal").checked;
    if(user == null || user == "" || pass == null || pass == "" || cpass == null || cpass == "" || gender == null || gender == "" 
    	|| dob == null || dob == "" || occupation == null || occupation == "" || email == null || email == "" || address == null || address == "" ||
    	 pincode == null || pincode == "" || phone == null || phone == "" || nationality == null || nationality == ""){
    	alert("Enter or select all details");
    	return false;
    }
    if(x == false && y == false){
    	alert("Enter or select all details");
    	return false;
    }
    if(pass != cpass)
    {
    	alert("Enter same password");
    	alert(pincode.length);
    	alert(phone.length);
    	return false;
    }
    if(isNaN(pincode)){
    	alert("Enter only numbers in the pincode field");
    	return false;
    }
    if(isNaN(phone)){
    	alert("Enter only numbers in the phone number field");
    	return false;
    }
    if(pincode.length != 6){
    	alert("Enter a valid pincode");
    	return false;
    }
    if(phone.length != 10){
    	alert("Enter a valid phone number");
    	return false;
    }
}

function loginvalidateform()
{
	var user=document.registerform.uname.value;
    var pass=document.registerform.pass.value;
    if(user == null || user=="" || pass=="" || pass==null){
    	alert("Enter all fields");
    	return false;
    }
}