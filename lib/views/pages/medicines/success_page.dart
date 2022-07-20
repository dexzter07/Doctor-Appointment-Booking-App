import 'package:doctor_zone_user/views/pages/bottom_navbar.dart';
import 'package:doctor_zone_user/views/pages/medicines/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          Get.offAll(const NavScreen());
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Text("Continue Shopping",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
      ),
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: Text("Order Placed",style: CustomTextStyle.appBarTextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img_orderplaced.png",),
          const SizedBox(height: 20,),
          Text("Your Order Placed !!",style: CustomTextStyle.boldTextStyle(color: AppColors.primaryColor),),
          const SizedBox(height: 10,),
          SizedBox(
              width: 300,
              child: Text("Your order has been placed successfully. Visit my order to check order status.",textAlign: TextAlign.center , style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor)))
        ],
      ),
    );
  }
}
