$(document).on('click', 'clickedReport', function () {

    document.getElementById("itemreporter").value = document.getElementById('itemRE' + this.id).value;
    document.getElementById("itemtitle").value = document.getElementById('itemT' + this.id).value;
    document.getElementById("itemstatus").innerHTML = 'State: ' + document.getElementById('itemS' + this.id).value;
    document.getElementById("itemreason").value = document.getElementById('itemR' + this.id).value;
    document.getElementById("itemreportmessage").value = document.getElementById('itemM' + this.id).value;
});
$(document).on('click', 'clickedReportBlockAd', function () {
    document.getElementById("subjectidBA").value = 'About disabeling your ad \"' + document.getElementById('itemT' + this.id).value + '\"';
    document.getElementById("contentidBA").value = 'Content regarding Blocking Your Ad \"' + document.getElementById('itemT' + this.id).value + '\"';
    document.getElementById("itemidBA").value = document.getElementById('itemIN' + this.id).value;
    document.getElementById("reportidBA").value = document.getElementById('itemRI' + this.id).value;
    document.getElementById("reasonidBA").value = document.getElementById('itemR' + this.id).value;
    document.getElementById("toidBA").value = document.getElementById('itemU' + this.id).value;
    document.getElementById('itemR' + this.id).value = '';

});
$(document).on('click', 'clickedReportBlockUser', function () {
    document.getElementById("subjectidBU").value = 'About disabeling your account in Superb.lk';
    document.getElementById("contentidBU").value = 'Content About disabeling your account in Superb.lk';
    document.getElementById("reportidBU").value = document.getElementById('itemRI' + this.id).value;
    document.getElementById("toidBU").value = document.getElementById('itemU' + this.id).value;

});
$(document).on('click', 'clickedViewMessage', function () {
    document.getElementById("senderVMId").value = document.getElementById('messageS' + this.id).value;
    document.getElementById("receiverVMId").value = document.getElementById('messageR' + this.id).value;
    document.getElementById("contentVMId").value = document.getElementById('messageC' + this.id).value;
    document.getElementById("sentVMId").value = document.getElementById('messageT' + this.id).value;
    document.getElementById("reasonVMId").value = document.getElementById('messageRs' + this.id).value;

});
$(document).on('click', 'clickedBlockMessage', function () {
    document.getElementById("subjectidBM").value = 'About Blocking your message in Superb.lk';
    document.getElementById("contentidBM").value = 'Content About Blocking your message in Superb.lk -\"' + document.getElementById('messageC' + this.id).value + '\"';
    document.getElementById("messageidBM").value = document.getElementById('messageI' + this.id).value;
    document.getElementById("toidBM").value = document.getElementById('messageS' + this.id).value;

});
$(document).on('click', 'clickedBlockMessageUser', function () {
    document.getElementById("subjectidBMU").value = 'About disabeling your account in Superb.lk';
    document.getElementById("contentidBMU").value = 'Content About disabeling your account in Superb.lk';
    document.getElementById("messageidBMU").value = document.getElementById('messageI' + this.id).value;
    document.getElementById("toidBMU").value = document.getElementById('messageS' + this.id).value;

});
$(document).on('click', 'clickedViewInquiry', function () {
    document.getElementById("inquiryItem").value = document.getElementById('inquiryIN' + this.id).value;
    document.getElementById("inquiryFrom").value = document.getElementById('inquiryMF' + this.id).value;
    document.getElementById("inquiryTo").value = document.getElementById('inquiryMT' + this.id).value;
    document.getElementById("inquiryMessage").value = document.getElementById('inquiryIM' + this.id).value;
    document.getElementById("inquiryTime").value = document.getElementById('inquiryIT' + this.id).value;
    document.getElementById("inquiryResponse").value = document.getElementById('inquiryIR' + this.id).value;
    document.getElementById("responseTime").value = document.getElementById('inquiryRT' + this.id).value;
    document.getElementById("inquiryReason").value = document.getElementById('inquiryR' + this.id).value;

});
$(document).on('click', 'clickedBlockInquiry', function () {
    document.getElementById("subjectidBI").value = 'About Blocking your Inquiry in Superb.lk';
    document.getElementById("contentidBI").value = 'Content About Blocking your Inquiry in Superb.lk';
    document.getElementById("inquiryidBI").value = document.getElementById('inquiryII' + this.id).value;
    document.getElementById("toidBI").value = document.getElementById('inquiryRU' + this.id).value;

});
$(document).on('click', 'clickedBlockInquiryUser', function () {
    document.getElementById("subjectidBIU").value = 'About disabeling your account in Superb.lk';
    document.getElementById("contentidBIU").value = 'Content About disabeling your account due to inquiry report in Superb.lk';
    document.getElementById("toidBIU").value = document.getElementById('inquiryRU' + this.id).value;

});