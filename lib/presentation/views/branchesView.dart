import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/fonts.dart';

import 'widgets/google_location_widget.dart';

class BranchesView extends StatelessWidget {
  const BranchesView({super.key});

  static const List<String> _branchesName = [
    'مستشفي مدينة نصر التخصصي',
    'التجمع التالت',
    'التبة',
    'حلمية الزيتون',
  ];
 static const  List<String> lats=[
  '30.066804426692396',
  '29.980509067269566',
  '30.066804426692396',
  '30.066804426692396',
 ];
 static const  List<String> longs=[
  '31.330573045100138',
  '31.427242496022373',
  '31.330573045100138',
  '31.330573045100138',
 ];
 static const List<String> address=[
  "أنور المفتي ، المنطقة الأولى ، مدينة نصر ، محافظة القاهرة 4450215",
  "التجمع الثالث المحليه الخامسة امام فيوتشر مول, New Cairo 3",
  "التجمع الثالث المحليه الخامسة امام فيوتشر مول, New Cairo 3",
  "التجمع الثالث المحليه الخامسة امام فيوتشر مول, New Cairo 3",

 ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('فروعنا'),
        ),
        body: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(12.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'يوجد لدينا 4 فروع :',
                    style: FontsManager.textblack20,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    //!------
                    height: 550.h,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GoogleLocationWidget(
                           brancheName: _branchesName[index],
                           lat: lats[index],
                           long: longs[index],
                           brancheAddress: address[index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 15.h,
                            ),
                        itemCount: _branchesName.length),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
