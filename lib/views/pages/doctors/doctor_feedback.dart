import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/app_constants.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class DoctorFeedback extends StatefulWidget {

  DoctorFeedback({Key? key}) : super(key: key);

  @override
  State<DoctorFeedback> createState() => _DoctorFeedbackState();
}

class _DoctorFeedbackState extends State<DoctorFeedback> {
  int sum = 0;

  final list = [];

  int star1 = 1;

  bool onPressed1 = false;

  int star2 = 1;

  bool onPressed2 = false;

  int star3 = 1;

  bool onPressed3 = false;

  int star4 = 1;

  bool onPressed4 = false;

  int star5 = 1;

  bool onPressed5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          // Get.to(() => DoctorTiming());
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Text("Submit Feedback",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Give Feedback",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/DoctorsLists/search_doc_1.png"),
                    const SizedBox(width: 35,),
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text("Dr. Joseph Williamson",style: CustomTextStyle.boldTextStyle(color: AppColors.secondaryColor),),
                          const SizedBox(height: 10,),
                          Text("Cardiac Surgeon at Apple Hospital",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Text("Overall Experience", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            const SizedBox(height: 10,),
            Row(
              children: [
                IconButton(onPressed: ()
                {
                  if(onPressed1 == true) {
                    setState(() {
                      onPressed1 = false;
                      list.remove(star1);
                      print(list);

                    });
                  } else {
                    setState(() {
                      onPressed1 = true;
                      list.add(star1);
                      print(list);
                    });
                  }
                },
                    icon: onPressed1 == true ? Icon(Icons.star_outlined,color: Colors.yellow.shade800,size: 50,) :  const Icon(Icons.star_outlined,color: AppColors.backgroundColor,size: 50,)),
                IconButton(onPressed: ()
                {
                  if(onPressed2 == true) {
                    setState(() {
                      onPressed2 = false;
                      list.remove(star2);
                      print(list);
                    });
                  } else {
                    setState(() {
                      onPressed2 = true;
                      list.add(star2);
                      print(list);
                    });
                  }
                },
                    icon: onPressed2 == true ? Icon(Icons.star_outlined,color: Colors.yellow.shade800,size: 50,) :  const Icon(Icons.star_outlined,color: AppColors.backgroundColor,size: 50,)),
                IconButton(onPressed: ()
                {
                  if(onPressed3 == true) {
                    setState(() {
                      onPressed3 = false;
                      list.remove(star3);
                      print(list);
                    });
                  } else {
                    setState(() {
                      onPressed3 = true;
                      list.add(star3);
                      print(list);
                    });
                  }
                },
                    icon: onPressed3 == true ? Icon(Icons.star_outlined,color: Colors.yellow.shade800,size: 50,) :  const Icon(Icons.star_outlined,color: AppColors.backgroundColor,size: 50,)),
                IconButton(onPressed: ()
                {
                  if(onPressed4 == true) {
                    setState(() {
                      onPressed4 = false;
                      list.remove(star4);
                      print(list);
                    });
                  } else {
                    setState(() {
                      onPressed4 = true;
                      list.add(star4);
                      print(list);
                    });
                  }
                },
                    icon: onPressed4 == true ? Icon(Icons.star_outlined,color: Colors.yellow.shade800,size: 50,) :  const Icon(Icons.star_outlined,color: AppColors.backgroundColor,size: 50,)),
                IconButton(onPressed: ()
                {
                  if(onPressed5 == true) {
                    setState(() {
                      onPressed5 = false;
                      list.remove(star5);
                      print(list);
                    });
                  } else {
                    setState(() {
                      onPressed5 = true;
                      list.add(star5);
                      print(list);
                    });
                  }
                },
                    icon: onPressed5 == true ? Icon(Icons.star_outlined,color: Colors.yellow.shade800,size: 50,) :  const Icon(Icons.star_outlined,color: AppColors.backgroundColor,size: 50,)),
              ],
            ),
            const SizedBox(height: 40,),
            Text("Brief Your Experience", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            const SizedBox(height: 10,),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  hintText: "Write your experience",
                  hintStyle: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor)
              ),

            ),
          ],
        ),
      ),
    );
  }
}
