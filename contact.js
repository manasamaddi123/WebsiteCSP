
var contactus = $(`.contactus`)


var submitBtn = $(`.submit-btn`);

submitBtn.on("click", appendFunction);


function appendFunction (){
  event.preventDefault()
  var nameInput = $(`.userFirstName`).val();
  var lastInput = $(`.userLastName`).val();
  var emailInput = $(`.userEmail`).val();
  //Now that you've saved the inputs you can clear out the input fields to take new user information, I used new variables so there wouldn't be issues with the values of nameInput and emailInput changing
    var nameClear = $(`.userFirstName`)
    var lastClear = $(`.userLastName`)
    var emailClear = $(`.userEmail`)
  
  //Now set the variables to be empty
    nameClear.val("");
    lastClear.val("");
    emailClear.val("");

  //You can remove your previous contact-msg using the class and the .remove function:
    $("p").remove(".contact-msg");

  //You can change your append to include the class with the p like this:
  contactus.append(`<p class = "contact-msg"> Thank you for filling out the form ${nameInput}, ${lastInput} we will contact you soon at the email, ${emailInput} provided!!</p>`);
}