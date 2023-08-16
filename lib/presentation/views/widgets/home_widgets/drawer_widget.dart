import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hosptial_app/presentation/views/medicinesView.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../../../core/ALL_DATA.dart';
import '../../aboutUsView.dart';
import '../../branchesView.dart';
import '../../complaintsVIew.dart';
import '../../newsView.dart';
import '../../servicesView.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:  EdgeInsets.only(top: 30.h),
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  categoriesImages[index],
                  height: 40.h,
                ),
                title: Text(categoriesTitle[index]),
                onTap: () {
                  // Navigate to home screen or perform desired action
                  NavigateTo(index, context);
                },
                trailing: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20.r,
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 25.h,
                ),
            itemCount: categoriesTitle.length),
      ),
    );
  }

  void NavigateTo(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
            context,
            PageAnimationTransition(
                page: const ServicesView(),
                pageAnimationType: RightToLeftTransition()));
        break;
      case 1:
        Navigator.push(
            context,
            PageAnimationTransition(
                page: const AboutUsView(),
                pageAnimationType: RightToLeftTransition()));
        break;
      case 2:
        Navigator.push(
            context,
            PageAnimationTransition(
                page: const MedicinesView(),
                pageAnimationType: RightToLeftTransition()));
        break;
      case 3:
        Navigator.push(
            context,
            PageAnimationTransition(
                page: const BranchesView(),
                pageAnimationType: RightToLeftTransition()));
        break;
      case 4:
        Navigator.push(
            context,
            PageAnimationTransition(
                page: const NewsView(),
                pageAnimationType: RightToLeftTransition()));
        break;
      case 5:
        Navigator.push(
            context,
            PageAnimationTransition(
                page: const ComplaintsView(),
                pageAnimationType: RightToLeftTransition()));
        break;
      default:
        'Wrong Index';
    }
  }
}
