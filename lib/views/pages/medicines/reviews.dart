import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/widgets/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';
import 'package:get/get.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
        ),
        elevation: 0,
        toolbarHeight: 120,
        flexibleSpace: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,size: 28,),
                      const Spacer(),
                      Text("Reviews",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
                      const Spacer(),

                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Salospir 100mg Tablet", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                          const Spacer(),
                          Icon(Icons.star,color: Colors.yellow[900],),
                          Text("4.5",style: CustomTextStyle.boldMediumTextStyle(color: Colors.yellow.shade900),)
                        ],
                      ),
                      Text("Average Review", style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ReviewWidget();
        },
      ),
    );
  }
}
