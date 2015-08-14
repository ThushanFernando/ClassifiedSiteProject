function  email_unblock() {

    document.getElementById("email_unblock_spanid").innerHTML = 'Do you want to unblock email ' + document.getElementById("emailId").value + '?';
    document.getElementById("email_unblockid").value = document.getElementById("emailId").value;
}
function  email_block() {

    document.getElementById("email_block_spanid").innerHTML = 'Do you want to block email ' + document.getElementById("emailId").value + '?';
    document.getElementById("email_blockid").value = document.getElementById("emailId").value;
}
function email_val() {
    var email = document.getElementById("emailId");
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
        document.getElementById("B1").style.display = "none";
        document.getElementById("B2").style.display = "none";
    } else {
        document.getElementById("B1").style.display = "block";
        document.getElementById("B2").style.display = "block";
    }
}