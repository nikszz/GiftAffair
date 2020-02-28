function validation()
{
	
	var pass=document.regform.pwd.value;
	var cpass=document.regform.cpwd.value;
	
	if (regform.fname.value == "") 
	{
		document.forms["regform"]["fname"].style.borderColor="red";
		alert("First Name Should not be Empty...!");
		return false;
	}
	 	
	 if (regform.lname.value == "") 
	 {
        document.forms["regform"]["lname"].style.borderColor="red";
        alert("Last Name Should not be Empty...!");
        return false;
     }
	 
	 if (regform.address.value == "") 
		{
			document.forms["regform"]["address"].style.borderColor="red";
			alert("Address Should not be Empty...!");
			return false;
		}
	 
	 if (regform.email.value == "") 
	 {
        document.forms["regform"]["email"].style.borderColor="red";
        alert("Email Should not be Empty / It Should Be in Valid Form..!");
        return false;
     }
	 if (regform.birthdate.value == "") 
	 {
        document.forms["regform"]["birthdate"].style.borderColor="red";
        alert("You Must Have To Provide Your D.O.B");
        return false;
     }
	 if (regform.phn.value == "") 
	 {
        document.forms["regform"]["phn"].style.borderColor="red";
        alert("Please Provide Phone No in Numeric form..! Only ");
        return false;
     }
	
	 if (regform.pwd.value == "") 
	 {
        document.forms["regform"]["pwd"].style.borderColor="red";
        alert("Password Must Contain Numeric+Alphabet...!");
        return false;
     }

	 if (regform.cpwd.value == "") 
	 {
        document.forms["regform"]["cpwd"].style.borderColor="red";
        alert("Confirm Your Password..! First");
        return false;
     }
	
	 if (pass != cpass)
	 {
         alert("Passwords do not match.");
         document.forms["regform"]["cpwd"].value="";
         document.forms["regform"]["cpwd"].style.borderColor="red";
         return false;
     }
     return true;
}

function loginvalidation()
{
	if (login.lemail.value == "") 
	{
		document.forms["login"]["lemail"].style.borderColor="red";
		alert("Please Provide Valid Email Address...!");
		return false;
	}
	 	
	 if (login.lpswd.value == "") 
	 {
        document.forms["login"]["lpswd"].style.borderColor="red";
        alert("Please Provide Valid Password...!");
        document.forms["login"]["lpswd"].value="";
        return false;
     }
	 
}


function customercare()
{
	 if (ccare.name.value == "") 
	 {
        document.forms["ccare"]["name"].style.borderColor="red";
        alert("Please Provide Your Full Name...!");
        document.forms["ccare"]["name"].value="";
        return false;
     }
	 
	 if (ccare.email.value == "") 
	 {
        document.forms["ccare"]["email"].style.borderColor="red";
        alert("Please Provide Your Full Email Address in Valid Form...!");
        document.forms["ccare"]["email"].value="";
        return false;
     }
	 if (ccare.sub.value == "") 
	 {
        document.forms["ccare"]["sub"].style.borderColor="red";
        alert("Please Provide Your Subject...!");
        document.forms["ccare"]["sub"].value="";
        return false;
     }
	 if (ccare.msg.value == "") 
	 {
        document.forms["ccare"]["msg"].style.borderColor="red";
        alert("Please Provide Your Query Under Message Section...!");
        document.forms["ccare"]["msg"].value="";
        return false;
     }
}


function adminvalidation()
{
	if (adminlogin.email.value == "") 
	 {
       document.forms["adminlogin"]["email"].style.borderColor="red";
       alert("Please Provide Your Email in Valid form..!!");
       return false;
    }
	
	if (adminlogin.pswd.value == "") 
	 {
      document.forms["adminlogin"]["pswd"].style.borderColor="red";
      alert("Please Provide Your Valid Password..!!");
      return false;
   }
		
}

function updateuser()
{
	
	var pass=document.regform.pwd.value;
	var cpass=document.regform.cpwd.value;
	
	if (edituser.fname.value == "") 
	{
		document.forms["regform"]["fname"].style.borderColor="red";
		alert("First Name Should not be Empty...!");
		return false;
	}
	 	
	 if (edituser.lname.value == "") 
	 {
        document.forms["edituser"]["lname"].style.borderColor="red";
        alert("Last Name Should not be Empty...!");
        return false;
     }
	 
	 if (edituser.address.value == "") 
		{
			document.forms["edituser"]["address"].style.borderColor="red";
			alert("Address Should not be Empty...!");
			return false;
		}
	 
	 if (edituser.email.value == "") 
	 {
        document.forms["edituser"]["email"].style.borderColor="red";
        alert("Email Should not be Empty / It Should Be in Valid Form..!");
        return false;
     }
	 if (edituser.birthdate.value == "") 
	 {
        document.forms["edituser"]["birthdate"].style.borderColor="red";
        alert("You Must Have To Provide Your D.O.B");
        return false;
     }
	 if (edituser.phn.value == "") 
	 {
        document.forms["edituser"]["phn"].style.borderColor="red";
        alert("Please Provide Phone No in Numeric form..! Only ");
        return false;
     }
	
	 if (edituser.pwd.value == "") 
	 {
        document.forms["edituser"]["pwd"].style.borderColor="red";
        alert("Password Must Contain Numeric+Alphabet...!");
        return false;
     }

	 if (edituser.cpwd.value == "") 
	 {
        document.forms["edituser"]["cpwd"].style.borderColor="red";
        alert("Confirm Your Password..! First");
        return false;
     }
	
	 if (pass != cpass)
	 {
         alert("Passwords do not match.");
         document.forms["edituser"]["cpwd"].value="";
         document.forms["edituser"]["cpwd"].style.borderColor="red";
         return false;
     }
     return true;
}

function subscriber()
{
	if (sub.email.value == "") 
	 {
       document.forms["sub"]["email"].style.borderColor="red";
       alert("Please Provide Your Email Under Section...!");
       document.forms["sub"]["email"].value="";
       return false;
    }
}