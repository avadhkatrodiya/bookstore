import 'package:bookstore_app/utility/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommanContainer extends StatefulWidget {
  String? images;
  String? title;
  String? price;

  CommanContainer({
    Key? key,
    this.title,
    this.images,
    this.price,
  }) : super(key: key);

  @override
  State<CommanContainer> createState() => _CommanContainerState();
}

class _CommanContainerState extends State<CommanContainer> {
  static const platform = const MethodChannel("razorpay_flutter");
  late Razorpay _razorpay;

  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    double amount = double.parse(widget.price!) * 100;
    var options = {
      'key': 'rzp_test_SgUHyzEiFLsZBj',
      'amount': amount,
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId!,
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT);
  }

  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      width: Get.width * 0.95,
      decoration: BoxDecoration(
        color: ColorUtility.whitecolor,
        boxShadow: [
          BoxShadow(
            color: ColorUtility.grey.withOpacity(0.2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
        child: Row(
          children: [
            Container(
              height: Get.height * 0.25,
              width: Get.width * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("${widget.images}"),
              )),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.title}",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "To Be Announced",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: ColorUtility.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: openCheckout,
                      child: Container(
                        height: Get.height * 0.04,
                        width: Get.width * 0.2,
                        color: ColorUtility.orange,
                        child: Center(
                          child: Text(
                            "${widget.price}",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ColorUtility.deepPurple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
