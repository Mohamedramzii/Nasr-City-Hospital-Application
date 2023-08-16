import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/assets.dart';
import 'package:nasr_city_hosptial_app/presentation/views/aboutUsView.dart';
import 'package:nasr_city_hosptial_app/presentation/views/branchesView.dart';
import 'package:nasr_city_hosptial_app/presentation/views/complaintsVIew.dart';
import 'package:nasr_city_hosptial_app/presentation/views/medicinesView.dart';
import 'package:nasr_city_hosptial_app/presentation/views/newsView.dart';
import 'package:nasr_city_hosptial_app/presentation/views/servicesView.dart';
import 'package:nasr_city_hosptial_app/presentation/views/widgets/home_widgets/drawer_widget.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<String> _carouselImages = [
    Images.image1,
    Images.image3,
    Images.image2,
  ];

  final List<String> _categoriesImages = [
    Images.service,
    Images.info,
    Images.medicine,
    Images.branch,
    Images.news,
    Images.support
  ];
  final List<String> _categoriesTitle = [
    'خدماتنا',
    'عن المستشفي',
    'طلب ادوية',
    'فروعنا',
    'اخبارنا',
    'للشكاوي',
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('الرئيسية'),
          ),
          drawer: const DrawerWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider.builder(
                    itemCount: _carouselImages.length,
                    itemBuilder: (context, index, realIndex) {
                      return SizedBox(
                        height: 60.h,
                        child: Image.asset(
                          _carouselImages[index],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 1.2,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        viewportFraction: 1)),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 340.h,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: _categoriesImages.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 3 / 5,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              mainAxisExtent: 200),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            NavigateTo(index, context);
                          },
                          child: Container(
                            width: 80.w,
                            height: 280.h,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  _categoriesImages[index],
                                  width: 80.w,
                                ),
                                Text(
                                  _categoriesTitle[index],
                                  style: TextStyle(
                                      fontSize: 20.sp, color: Colors.green),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
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
