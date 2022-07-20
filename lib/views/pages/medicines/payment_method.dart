import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select Payment Method", style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AMOUNT TO PAY",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                const SizedBox(height: 10,),
                Text("\$ 20.00",style: CustomTextStyle.ultraBoldTextStyle1(color: AppColors.secondaryColor,  letterSpacing: 1),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: AppConstants.screenVerticalPadding),
            child: Text("Payment Modes",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(Icons.account_balance_wallet,color: Colors.lightGreen,size: 32,),
              title: Text("Wallet", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(Icons.money,color: Colors.lightGreen,size: 32,),
              title: Text("Cash on Delivery", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: ListTile(
              leading: Image.asset("assets/paypal.png",width: 30,),
              title: Text("PayPal", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: ListTile(
              leading: Image.asset("assets/pay_u_money.png",width: 30,),
              title: Text("PayU Money", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: ListTile(
              leading: Image.asset("assets/stripe.jpg",width: 30,),
              title: Text("Stripe", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            ),
          ),
        ],
      ),
    );
  }
}
