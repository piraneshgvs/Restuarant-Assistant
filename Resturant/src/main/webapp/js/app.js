// Create a Recaptcha verifier instance globally
        // Calls submitPhoneNumberAuth() when the captcha is verified
       
       
        
           
        window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
            "recaptcha-container",
            {
                size: "normal",
                callback: function (response) {
                    submitPhoneNumberAuth();
                }
            }
        );

        // This function runs when the 'sign-in-button' is clicked
        // Takes the value from the 'phoneNumber' input and sends SMS to that phone number
        function submitPhoneNumberAuth() {
        var phoneNumber = document.getElementById("phoneNumber").value;
        $.ajax({
              url:"/sessionlock",
              type:'POST',
              data:{phone:phoneNumber},
             });
              
              
        localStorage.setItem("phone",phoneNumber);
            var appVerifier = window.recaptchaVerifier;
            firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier).then((confirmationResult)=>{
                window.confirmationResult = confirmationResult;
            }).catch((err)=>{
                console.log(err)
            })
            
        }

        // This function runs when the 'confirm-code' button is clicked
        // Takes the value from the 'code' input and submits the code to verify the phone number
        // Return a user object if the authentication was successful, and auth is complete
        function submitPhoneNumberAuthCode() {
            var code = document.getElementById("code").value;
            confirmationResult.confirm(code).then((result)=>{
                var user = result.user;
                console.log(user);
            }).catch((err)=>{
	            alert("wrong otp");
                console.log(err)
            })
        }
        function logout(){
          $.ajax({
          url:"/logout",
          type:'POST',
          
          });
        
            firebase.auth().signOut().then(()=>
            {
          
            window.location.href="../view/index.jsp"
            
            
            }
            ).catch((err)=>{
                console.log(err)
            })
        }
        

        //This function runs everytime the auth state changes. Use to verify if the user is logged in
        firebase.auth().onAuthStateChanged( (user)=> {
            if (user) {
                console.log("USER LOGGED IN");
                window.location.href="../view/Token.jsp";
            } else {
                // No user is signed in.
                console.log("USER NOT LOGGED IN");
            }
        });