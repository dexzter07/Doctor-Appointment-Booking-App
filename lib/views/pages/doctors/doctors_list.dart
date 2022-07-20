import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';
import '../../widgets/doctor_widget.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Doctor List",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return DoctorWidget();
        },
      ),
    );
  }
}
