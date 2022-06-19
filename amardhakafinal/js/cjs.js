function validateForm() {
    var cid = document.getElementById("cid").value;
    var name = document.getElementById("name").value;
    var pass = document.getElementById("pass").value;
    var address = document.getElementById("address").value;
    var phone = document.getElementById("phone").value;
    // var patt =  /^[0-9]+$/;
    // var res = patt.test(nid);

    if (cid == "" || cid.length < 3) {
        document.getElementById("errorcid").innerHTML="Please fill out the userid";
         return false;
    }
    if (name == "") {
        document.getElementById("errorname").innerHTML="Please fill out the name";
         return false;
    }
    if (pass == "") {
        document.getElementById("errorpass").innerHTML="Please fill out the password";
         return false;
    }
    if ( phone == "" || phone.length==10){
        document.getElementById("errorphone").innerHTML="Please fill out the number";
        return false;
    }   
}
function cidval()

  {
    var cid = document.getElementById("cid").value;
    if (cid == "" || cid.length < 3 ) {
        document.getElementById("errorcid").innerHTML="Please insert a valid userid";
       }
       else
       {
        document.getElementById("errorcid").innerHTML="Userid is valid ";

       }
  }
  function passval()

  {
    var pass = document.getElementById("pass").value;
    if ( pass == "" || pass.length < 6) {
        document.getElementById("errorpass").innerHTML="Password must be in 6 charecter";
         return false;
    }
       else
       {
        document.getElementById("errorpass").innerHTML="Strong Pass";

       }
  }
  function numval()

  {
    var phone = document.getElementById("phone").value;
    if ( phone == "" || phone.length==10) {
        document.getElementById("errorphone").innerHTML="Invalid number format";
         return false;
    }
       else
       {
        document.getElementById("errorphone").innerHTML="Mobile number is accepted";

       }
  }
  function nameval()
  {
    var name = document.getElementById("name").value;
    if ( name == "" || name.length < 2) {
        document.getElementById("errorname").innerHTML=" invalid name ";
         return false;
    }
       else
       {
        document.getElementById("errorname").innerHTML="name accepted";

       }
    }
  function addressval()

  {
    var address = document.getElementById("address").value;
    if ( address == "" || address.length < 2) {
        document.getElementById("erroraddress").innerHTML=" invalid address ";
         return false;
    }
       else
       {
        document.getElementById("erroraddress").innerHTML="address accepted";

       }
    }