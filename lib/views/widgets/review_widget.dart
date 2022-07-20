import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/user.png",width: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ronny George",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                  Text("For Cold Fever", style: CustomTextStyle.ultraSmallTextStyle(color: AppColors.disableButtonColor),),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text("5.0", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                      const SizedBox(width: 20,),
                      Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                      Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                      Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                      Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                      Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                    ],
                  ),
                  Text("30 Dec, 2021",style: CustomTextStyle.ultraSmallTextStyle(color: AppColors.disableButtonColor),)
                ],
              )
            ],
          ),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),
          )
        ],
      ),
    );
  }
}
