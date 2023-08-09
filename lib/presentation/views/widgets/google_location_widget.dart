import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:nasr_city_hosptial_app/core/app_configuration/assets.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/colors.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/fonts.dart';

class GoogleLocationWidget extends StatelessWidget {
  const GoogleLocationWidget({
    Key? key,
    required this.long,
    required this.lat,
    required this.brancheName,
    required this.brancheAddress,
  }) : super(key: key);

  final String long;
  final String lat;
  final String brancheName;
  final String brancheAddress;

//!
  // final String api = 'AIzaSyA27RpK_qQzbi7C39Q9FawRamIgXvlWFGM';

  // String getLatLong(lat, long) {
  //   return 'https://www.google.com/maps/search/?api=1&query=$lat,$long';
  // }

  Future<void> navigateToGoogleMaps(lat, long) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$long';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 130.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 40.h,
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r)),
                color: ColorsManager.kprimaryColor,
              ),
              child: Text(
                brancheName,
                style: FontsManager.textblack20,
              ),
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
            Row(
              children: [
                Lottie.asset(
                  Images.location,
                  width: 40.w,
                ),
                ConstrainedBox(
                    constraints:
                        BoxConstraints(minWidth: 210.w, maxWidth: 280.w),
                    child: Text(
                      brancheAddress,
                      style: FontsManager.textblack15,
                    )),
              ],
            ),
            TextButton.icon(
                onPressed: () {
                  navigateToGoogleMaps(lat, long);
                },
                icon: const Icon(Icons.open_in_new_rounded),
                label: const Text('اضغط لعرض الموقع'))
          ],
        ),
      ),
    );
  }
}
