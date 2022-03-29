import 'package:bookstore_app/utility/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EUVAT2021 extends StatelessWidget {
  const EUVAT2021({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.height * 0.02,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "EU: order books without paying additional VAT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorUtility.blue,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Are you an avid book reader? Do you live in the EU? Do you purchase quality books online? Are you aware of new EU VAT taxes that affect purchases from non-EU bookstores? This article pertains to you in case your answer is “No”.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Blackwells and Book Depository bookstores customers in European Union (EU) will not pay any additional VAT for purchases at the time of deliveries. That’s a great relief for any avid book reader purchasing online books in the EU since EU tax rules and regulations recently got revised. It resulted in the withdrawal of tax exemption for articles and goods costing up to EUR 22. Well, you guessed it right, VAT will now be charged on books purchased from all non-EU stores.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "The new rules are in effect from 1 July 2021 and affect all commercial goods and articles being imported into the EU irrespective of their original price. It not only sounds excruciating in terms of additional coppers one must pay but recalls the commotion about cumbersome custom processes and delays as well. Well if the VAT still sounds Greek to you we shall discuss it a bit before moving on.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "What is VAT and How it Affects EU Based Customers? A value-added tax (VAT) is a kind of consumption tariff that is imposed on a product recurrently at each step of its production and sale where some value is added to it. Simple to say that a tax is charged once a producer sells raw materials to a factory, a factory produces a finished product and sells it to a wholesaler, wholesaler enhances the outlook of the product and sells it to a retailer, and, finally, once the consumer purchases it.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "VAT is generally expressed in terms of a percentage. For example, if a product costs 100 EUR and there is a 15% VAT imposed on it, so the consumer is going to pay 115 EUR ultimately to the retailer. The retailer will keep 100 EUR and submit 15 EUR to the government.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
