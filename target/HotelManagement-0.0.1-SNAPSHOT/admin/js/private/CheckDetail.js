
function VipCount() {
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    var error = "请输入正确的手机号";
    var phone = $("#phoneNum").val();
    var mo = $("#money").val();
    var paidmo=parseFloat($("#paidmo").val());
    var plgmoney=parseFloat($("#plgmoney").val());
    var roomprice=parseFloat($("#roomprice").val());
    var daynow=$("#daynow").val();
    var val=$("#val").html();
    console.log(mo);
    var moneys = encr(mo);
    console.log(moneys);
    if (!myreg.test(phone)) {
        $("#phoneTest").css("color", "red");
        $("#phoneTest").html(error);
    }
    else {
        $.ajax({
            url: "VipCheck.action",
            method: "post",
            async: true,
            data: "moneys=" + moneys + "&phone=" + phone + "",
            success: function (data) {
                console.log(data);
                $("#phoneNum").attr("disabled","true");
                if(data.res=="输入的手机号没有会员优惠"){
                    $("#phoneTest").html(data.res);
                }
                else{
                    console.log(data);
                    var VipCount = "你当前的等级是" +data.memberCount +"折扣额度为" + data.vipLeve+"";
                    $("#phoneTest").html(VipCount);
                    var moneya=daynow*roomprice*val*data.vipLeve-paidmo-plgmoney;
                    $("#money").val(moneya);
                }
            }
        })
    }
}


function judegNum() {
    $("#paidMoney").val();
    var reg=/^[+-]?\d+(\.\d+)?$/;
    if(!reg.test($("#paidMoney").val())) {
        $("#judegMoney").html("请输入正确的数字");
        $("#exitButton").hide();
    }else {
        $("#exitButton").show();
    }
}