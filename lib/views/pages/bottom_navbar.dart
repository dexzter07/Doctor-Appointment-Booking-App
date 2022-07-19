import 'package:doctor_zone_user/views/pages/appointment/appointment_page.dart';
import 'package:doctor_zone_user/views/pages/doctors/doctors_homepage.dart';
import 'package:doctor_zone_user/views/pages/hospitals/hospital_homepage.dart';
import 'package:doctor_zone_user/views/pages/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../styles/app_colors.dart';
import 'medicines/home_page.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavScreen(tabIndex: 0, index: 0,),
    );
  }
}

class BottomNavScreen extends StatefulWidget {

  final int index;
  final int tabIndex;
  const BottomNavScreen({required this.index,required this.tabIndex});


  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int _currentIndex = 0;
  int _tabIndex = 0;
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentIndex = widget.index;
      _tabIndex = widget.tabIndex;
    });
    _controller = PersistentTabController(initialIndex: _currentIndex);
  }


  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as tre while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.simple, // Cho
    );
  }
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      DoctorHomePage(),
      HospitalHomePage(),
      const AppointmentPage(),
      const ProfilePage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          activeColorPrimary: Colors.black54,
          activeColorSecondary: AppColors.primaryColor,
          icon: const Icon(Icons.home),title:"Home",textStyle: const TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
      PersistentBottomNavBarItem(
          activeColorSecondary: AppColors.primaryColor,
          activeColorPrimary: Colors.black54,
          icon: const Icon(Icons.account_circle_rounded,),title:"Doctors",textStyle: const TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
      PersistentBottomNavBarItem(
          activeColorPrimary: Colors.black54,
          activeColorSecondary: AppColors.primaryColor,
          icon: const Icon(Icons.add_location),title:"Hospitals",textStyle: const TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),

      PersistentBottomNavBarItem(
          activeColorSecondary: AppColors.primaryColor,
          activeColorPrimary: Colors.black54,
          icon: const Icon(Icons.calendar_today),title:"Appts.",textStyle: const TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
      PersistentBottomNavBarItem(
          activeColorSecondary: AppColors.primaryColor,
          activeColorPrimary: Colors.black54,
          icon: const Icon(Icons.account_circle),title:"More",textStyle: const TextStyle(fontFamily: "PoppinsRegular",fontSize: 11)
      ),
    ];
  }
}