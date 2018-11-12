$(document).ready(function () {

    $("#share_buy").validate({
        rules: {
            "share": {required: true,number: true}

        },
        messages: {
            "share": {required: "Please enter Wallet GUID"}

        }
    });


    $("#share_sell").validate({
        rules: {
            "share": {required: true,number: true}
        },
        messages: {
            "share": {required: "Please enter Sell Amount"}

        }

    });

});
