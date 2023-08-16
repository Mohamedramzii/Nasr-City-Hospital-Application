import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/fonts.dart';
import 'package:nasr_city_hosptial_app/core/common_widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/app_configuration/assets.dart';

class ComplaintsView extends StatelessWidget {
  const ComplaintsView({super.key});

  Future<void> openWhatsApp() async {
    const String phoneNumber = '201206000811';
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeFull('كان عندي شكوي بخصوص ')}';
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
          title: const Text('الشكاوي'),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LottieBuilder.asset(Images.supportjson),
            Text('أبعتلنا شكوتك و هنرد عليك في اقرب وقت',style: FontsManager.textblack20,),
            SizedBox(height: 25.h,),
            CustomButton(
                text: 'تواصل معنا',
                onpressed: () async {
                  await openWhatsApp();
                })
          ],
        ),
      ),
    );
  }
}
