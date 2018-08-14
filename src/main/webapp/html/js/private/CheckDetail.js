function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        + " " + date.getHours() + seperator2 + date.getMinutes()
        + seperator2 + date.getSeconds();
    document.getElementById("timeNow").value = currentdate;
    return currentdate;


}

getNowFormatDate();

function nowday() {
    var arrDay = $("#arrDay").val();
    var nowDay = getNowFormatDate();
}

nowday();

function GMTToStr(time) {
    var dateStr = time.trim().split(" ");
    var strGMT = dateStr[0] + " " + dateStr[1] + " " + dateStr[2] + " " + dateStr[5] + " " + dateStr[3] + " GMT+0800";
    var date = new Date(Date.parse(strGMT));
    var year = date.getFullYear();  //获取年
    var month = date.getMonth() + 1;    //获取月
    var day = date.getDate(); //获取日
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var sec = date.getSeconds();
    var postDate = year + '-' + month + '-' + day + ' ' + hours + ':' + minutes + ':' + sec;
    return postDate;
}

function date(arrtime, leavetime) {
    var arrTime = GMTToStr(arrtime);
    var leaveTime = GMTToStr(leavetime);
    console.log(arrTime);
    $("#arrDay").val(arrTime);
    $("#leaveDay").val(leaveTime);
}

date("${maps.checkInBean.arriveTime}", "${maps.checkInBean.leaveTime}");
function ExitRoom() {

    $.ajax({
        url: "/CheckInList.action",
        method: "post",
        async: true,
        dataType: "json",

    })
}


function VipCount() {
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    var error = "请输入正确的手机号";
    var phone = $("#phoneNum").val();
    var mo = $("#money").val();
    console.log(mo);
    var moneys = encr(mo);
    console.log(moneys);
    if (!myreg.test(phone)) {
        $("#phoneTest").css("color", "red");
        $("#phoneTest").html(error);
    }
    else {
        $.ajax({
            url: "/VipCheck.action",
            method: "post",
            async: true,
            data: "moneys=" + moneys + "&phone=" + phone + "",
            success: function (data) {
                console.log(data);
                if(data.res=="输入的手机号没有会员优惠"){
                    $("#phoneTest").html(data.res);
                }
                else{
                    var VipCount = "你当前的等级是" +data.vipLeve +"折扣额度为" + data.memberCount+"";
                    $("#phoneTest").html(VipCount);
                    var moneya=decr(data.money);
                    $("#money").val(moneya);
                }
            }
        })
    }
}


function encr(data) {

    var key = CryptoJS.enc.Latin1.parse('class33iamironma');
    var iv = CryptoJS.enc.Latin1.parse('iamironmaclass33');

    //加密
    var encrypted = CryptoJS.AES.encrypt(data, key, {
        iv: iv,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.ZeroPadding
    });
    //解密

    return encrypted.toString();
}
function decr(data) {
    var key = CryptoJS.enc.Latin1.parse('class33iamironma');
    var iv = CryptoJS.enc.Latin1.parse('iamironmaclass33');
    var decrypted = CryptoJS.AES.decrypt(data, key, {iv: iv, padding: CryptoJS.pad.ZeroPadding});
    return decrypted.toString(CryptoJS.enc.Utf8);
}

function judegNum() {
    $("#paidMoney").val();
    var reg=/^[0-9]*$/;
    if(!reg.test($("#paidMoney").val())) {
        $("#judegMoney").html("请输入正确的数字");
        $("#exitButton").hide();
    }else {
        $("#exitButton").show();
    }
}