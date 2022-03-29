import 'package:bookstore_app/utility/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FreeShipping extends StatelessWidget {
  const FreeShipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.03, vertical: Get.height * 0.02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Free delivery",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorUtility.blackcolor,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "The Book Depository, Blackwell's Books, Better World Books and Wordery offer free shipping on all orders. For other bookstores (Betterworldbooks, Amazon, Fishpond, Bookshop.org, Hive, Waterstones, AbeBooks etc.) please visit bookseller's website for more detailed information about delivery fees, availability and shipping time.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  " The Book Depository",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorUtility.blackcolor,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "UK-based Europe’s leading online bookseller, over 20 million local and international titles, free delivery to 130 countries worldwide. No minimum order required.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Any applicable local sales tax (including EU), VAT and similar taxes will depend on the tax that applies to your delivery location and any changes will be displayed in the checkout.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Algeria, Andorra, Antigua and Barbuda, Argentina, Aruba, Australia, Austria, Bahamas, Bahrain, Barbados, Belgium, Belize, Benin, Bermuda, Bosnia and Herzegovina, British Virgin Islands, Brunei Darussalam, Bulgaria, Canada, Canary Island, Cayman Islands, Channel Islands, Chile, China, Cocos (Keeling) Islands, Colombia, Comoros, Cook Islands, Croatia, Cyprus, Czech Republic, Denmark, Dominica, Dominican Republic, Ecuador, Egypt, El Salvador, Estonia, Falkland Islands, Faroe Islands, Federated States of Micronesia, Fiji, Finland, France, Germany, Greece, Greenland, Grenada, Guadaloupe, Guam, Guatemala, Guyana, Haiti, Honduras, Hong Kong, Hungary, Iceland, India, Indonesia, Ireland, Israel, Italy, Jamaica, Japan, Jordan, Latvia, Liechtenstein, Lithuania, Luxembourg, Macao, Macedonia, Madagascar, Malaysia, Maldives, Malta, Martinique, Mauritius, Monaco, Montenegro, Morocco, Netherlands, New Caledonia, New Zealand, Nicaragua, Norway, Oman, Peru, Philippines, Poland, Portugal, Puerto Rico, Qatar, Reunion, Romania, Saint Helena, Saint Kitts and Nevis, Saint Lucia, Saint Pierre and Miquelon, Saint Vincent and the Grenadines, Samoa, San Marino, Saudi Arabia, Serbia, Seychelles, Singapore, Slovakia, Slovenia, Solomon Islands, South Africa, South Korea, Spain, Sri Lanka, Suriname, Sweden, Switzerland, Taiwan, Thailand, Trinidad and Tobago, Tunisia, Turkey, US Virgin Islands, Ukraine, United Arab Emirates, United Kingdom, United States, Uruguay, Vanuatu, Vatican City, Vietnam",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Delivery times",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorUtility.blackcolor,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Books are despatched by Royal Mail and they suggest that the following timelines are an appropriate guide to how long you should expect for your books to reach you. Read more: Delivery times for Book Depository",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Australia & New Zealand: 10-15 working days, Singapore & Hong Kong: 10-15 working days, United Kingdom: 3-10 working days, Ireland: 5-10 working days, Europe: 10-25 working days, US & Canada: 5-10 working days, South America: 10-15 working days, All other countries: 20-30 working days",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
