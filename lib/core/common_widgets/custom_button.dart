import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_configuration/colors.dart';
import '../app_configuration/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onpressed,
  }) : super(key: key);
  final String text;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: ()  {
          onpressed();
        },
        minWidth: 200.w,
        height: 40.h,
        shape: const StadiumBorder(),
        color: ColorsManager.kprimaryColor,
        child: Text(
          text,
          style: FontsManager.textblack15,
        ),
      ),
    );
  }
}
