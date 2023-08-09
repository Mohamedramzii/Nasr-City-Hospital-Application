import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/colors.dart';

import '../../core/app_configuration/assets.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  static const List<String> servicesImage = [
    Images.pic1,
    Images.pic2,
    Images.pic3,
    Images.pic4,
    Images.pic5,
    Images.pic6,
    Images.pic7,
    Images.pic8,
    Images.pic9,
    Images.pic10,
    Images.pic11,
    Images.pic12,
    Images.pic13,
    Images.pic14,
    Images.pic15,
    Images.pic16,
    Images.pic17,
    Images.pic18
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خدماتنا'),
      ),
      extendBodyBehindAppBar: true,
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: ColorsManager.kprimaryColor,
                  )),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(servicesImage[index])),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                height: 20.h,
              ),
          itemCount: servicesImage.length),
    );
  }
}
