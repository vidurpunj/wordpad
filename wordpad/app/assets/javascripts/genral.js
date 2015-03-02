function validateForm() {
    alert("hello");
    var sub = true;
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var email = $('#user_email').val();
    var result = regex.test(email);
    if (result == false) {
        $('#email').replaceWith('<label id="email">Email is required</label>');
        sub = false;
    } else {
        $('#email').replaceWith('<label id="email"></label>');
    }
    if ($('#user_password').val().length <= 20) {
        $('#password1').replaceWith('<label id="password1"> Password is required</label>');
        sub = false;
    } else {
        $('#password1').replaceWith('<label id="password1"></label>');
    }
    return false;

}