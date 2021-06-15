
function paymentProcess() {

        var amount=localStorage.getItem("total");
        amount=amount*100;
      

    var options = {
        "key": "rzp_test_PpOinqLyVBHOcP", // Enter the Key ID generated from the Dashboard
        "amount":amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 means 50000 paise or ₹500.
        "currency": "INR",
        "name": "Jungle Restaurant",
        "description": "Welcome",
        
        "handler": function (response){
            savetoDB(response);
            $('#myModal').modal();
        },
       
    }
    var propay = new Razorpay(options);
    propay.open();
}


