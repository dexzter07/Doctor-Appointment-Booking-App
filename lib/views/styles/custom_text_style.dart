import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class CustomTextStyle {

  static ultraBoldTextStyle1({required Color color,required double letterSpacing}){
    return TextStyle( fontSize:26,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily: "AvenirBold",letterSpacing: letterSpacing==null? null : letterSpacing  );
  }

  static ultraBoldTextStyle({required Color color,required double letterSpacing}){
    return TextStyle( fontSize:24,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily: "AvenirBold",letterSpacing: letterSpacing==null? null : letterSpacing  );
  }

  static boldTextStyle({required Color color,fontFamily}){
    return TextStyle( fontSize:22,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily: fontFamily ?? "Avenir" );
  }

  static bigTextStyle({required Color color}){
    return TextStyle( fontSize:18,fontWeight: FontWeight.w600,color: color==null?AppColors.secondaryColor:color,fontFamily:"Avenir" );
  }

  static appBarTextStyle({required Color color,fontFamily}){
    return TextStyle( fontSize:20,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily:fontFamily==null?  "Avenir" : fontFamily );
  }

  static boldMediumTextStyle({required Color color,fontFamily}){
    return TextStyle( fontSize:16,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily: fontFamily==null ? "Avenir" : fontFamily );
  }

  static mediumTextStyle({required Color color}){
    return TextStyle( fontSize:16,fontWeight: FontWeight.w500,color: color==null?AppColors.secondaryColor:color,fontFamily: "Avenir" );
  }

  static smallTextStyle1({required Color color}){
    return TextStyle( fontSize:14,fontWeight: FontWeight.w500,color: color==null?AppColors.secondaryColor:color,fontFamily: "Avenir" );
  }

  static smallBoldTextStyle1({required Color color}){
    return TextStyle( fontSize:14,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily: "AvenirBold" );
  }

  static ultraSmallBoldTextStyle({required Color color}){
    return TextStyle( fontSize:12,fontWeight: FontWeight.w700,color: color==null?AppColors.secondaryColor:color,fontFamily: "AvenirBold" );
  }

  static ultraSmallTextStyle({required Color color}){
    return TextStyle( fontSize:12,fontWeight: FontWeight.w400,color: color==null?AppColors.secondaryColor:color,fontFamily: "AvenirBold" );
  }

// static itemDescription({Color color}){
//   return TextStyle( fontSize:14,fontWeight: FontWeight.w400,color: color==null?AppColors.textDarkColor:color,fontFamily: "MetroPolisRegular" );
// }


}