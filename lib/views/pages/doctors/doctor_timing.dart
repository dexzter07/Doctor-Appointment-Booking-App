import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:doctor_zone_user/models/time_model.dart';
import 'package:doctor_zone_user/views/widgets/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../constants/app_constants.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';


class DoctorTiming extends StatefulWidget {
  const DoctorTiming({Key? key}) : super(key: key);

  @override
  State<DoctorTiming> createState() => _DoctorTimingState();
}

class _DoctorTimingState extends State<DoctorTiming> {
  final List<TimeModel?> _timeList = [
    TimeModel(
      id: "0",
        time: "09:00 am"
    ),
    TimeModel(
      id: "1",
        time: "10:00 am"
    ),
    TimeModel(
      id:"2",
        time: "11:00 am"
    ),
    TimeModel(
      id: "3",
        time: "12:00 am"
    ),
  ];

  DateTime? _selectedValue1;
  String? availDate;

  DateTime selectedDate = DateTime.now();
  DateTime tomorrowDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1);

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor, // header background color
              onPrimary: Colors.white, // header text color
              onSurface: Colors.black, // body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: AppColors.primaryColor, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 10)),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        availDate = DateFormat('dd-MM-yyyy').format(selectedDate);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          Get.to(() => DoctorTiming());
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Text("Confirm Appointment",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
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
        title: Text("Select Date & Time",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: Column(
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
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select Date", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                Text("July 2020", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
              ],
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: () => {
                _selectDate(context),
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DatePicker(
                    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
                    daysCount: 10,
                    selectionColor: AppColors.primaryColor,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue1 = date;

                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select Time", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _timeList.length,
                  itemBuilder: (context, index) {
                    return TimeWidget(
                      timeModel: _timeList[index],
                    );
                  }),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Appointment for", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
              ],
            ),
            const SizedBox(height: 10,),
            TextFormField(
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
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: "eg, Heart Pain, Body Ache, etc.",
                  hintStyle: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor)
              ),

            ),
          ],
        ),
      ),
    );
  }
}
