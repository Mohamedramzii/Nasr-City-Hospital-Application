import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/colors.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/app_configuration/assets.dart';

class MedicinesView extends StatelessWidget {
  const MedicinesView({super.key});

  Future<void> openWhatsAppWithImage() async {
    const String phoneNumber = '201206000811';
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeFull('من فضلك عاوز اطلب دواء..لحظة هصور الروشتة')}';
    // 'https://wa.me/$phoneNumber?text=${Uri.encodeFull(text)}'

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } else {

      //! Should handle that error
      throw 'Could not launch WhatsApp.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('لطلب الادوية'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LottieBuilder.asset(
              Images.capture,
            ),
            Padding(
              padding: EdgeInsets.all(8.0.r),
              child: Text(
                'خطوات طلب الادوية من صيدلية المستشفي :',
                style: FontsManager.textblack15.copyWith(color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '1.قم بتجهيز الروشتة لتسهيل عملية الطلب\n2.قم بالضغط علي زر "أطلب الدواء" \n3.قم بتصوير الروشتة صورة واضحة\n4.انتظر و سيتواصل معك الطبيب الصيدلي.',
                style: FontsManager.textblack15,
              ),
            ),
            const Spacer(),
            Center(
              child: MaterialButton(
                onPressed: () async {
                  await openWhatsAppWithImage();
                },
                minWidth: 200.w,
                height: 40.h,
                shape: const StadiumBorder(),
                color: ColorsManager.kprimaryColor,
                child: Text(
                  'أطلب الدواء',
                  style: FontsManager.textblack15,
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            )
          ],
        ),
      ),
    );
  }
}
