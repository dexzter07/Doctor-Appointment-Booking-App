import 'package:doctor_zone_user/controller/Doctors/time_selection_controller.dart';
import 'package:doctor_zone_user/models/time_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/app_colors.dart';
import '../styles/custom_text_style.dart';

class TimeWidget extends StatefulWidget {
  final TimeModel? timeModel;
  const TimeWidget({Key? key, this.timeModel}) : super(key: key);

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  final TimeSelectionController _timeSelectionController = Get.put(TimeSelectionController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
      onTap: (){
        _timeSelectionController.selected.value == 1?
            _timeSelectionController.selected.value = 0 :
        _timeSelectionController.selected.value = 1;
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          color: _timeSelectionController.selected.value == 1 ? AppColors.primaryColor : Colors.grey[200],
          padding: const EdgeInsets.all(20),
          child: Text(widget.timeModel!.time.toString(),style: CustomTextStyle.boldMediumTextStyle(color: _timeSelectionController.selected.value == 1 ? Colors.white : AppColors.secondaryColor),)),
    ));
  }
}
