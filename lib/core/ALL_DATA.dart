import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_configuration/assets.dart';

final List<String> categoriesImages = [
  Images.service,
  Images.info,
  Images.medicine,
  Images.branch,
  Images.news,
  Images.support
];
final List<String> categoriesTitle = [
  'خدماتنا',
  'عن المستشفي',
  'طلب ادوية',
  'فروعنا',
  'اخبارنا',
  'للشكاوي',
];

List<Widget> drawerItem = [
  ListTile(
    leading: Image.asset(
      categoriesImages[0],
      height: 40.h,
    ),
    title: Text(categoriesTitle[0]),
    onTap: () {
      // Navigate to home screen or perform desired action
      // NavigateTo(index, context);
    },
    trailing: Icon(
      Icons.arrow_back_ios_new,
      size: 20.r,
    ),
  ),
  ListTile(
    leading: Image.asset(
      categoriesImages[1],
      height: 40.h,
    ),
    title: Text(categoriesTitle[1]),
    onTap: () {
      // Navigate to home screen or perform desired action
      // NavigateTo(index, context);
    },
    trailing: Icon(
      Icons.arrow_back_ios_new,
      size: 20.r,
    ),
  ),
  ListTile(
    leading: Image.asset(
      categoriesImages[2],
      height: 40.h,
    ),
    title: Text(categoriesTitle[2]),
    onTap: () {
      // Navigate to home screen or perform desired action
      // NavigateTo(index, context);
    },
    trailing: Icon(
      Icons.arrow_back_ios_new,
      size: 20.r,
    ),
  ),
  ListTile(
    leading: Image.asset(
      categoriesImages[3],
      height: 40.h,
    ),
    title: Text(categoriesTitle[3]),
    onTap: () {
      // Navigate to home screen or perform desired action
      // NavigateTo(index, context);
    },
    trailing: Icon(
      Icons.arrow_back_ios_new,
      size: 20.r,
    ),
  ),
  ListTile(
    leading: Image.asset(
      categoriesImages[4],
      height: 40.h,
    ),
    title: Text(categoriesTitle[4]),
    onTap: () {
      // Navigate to home screen or perform desired action
      // NavigateTo(index, context);
    },
    trailing: Icon(
      Icons.arrow_back_ios_new,
      size: 20.r,
    ),
  ),
  ListTile(
    leading: Image.asset(
      categoriesImages[5],
      height: 40.h,
    ),
    title: Text(categoriesTitle[5]),
    onTap: () {
      // Navigate to home screen or perform desired action
      // NavigateTo(index, context);
    },
    trailing: Icon(
      Icons.arrow_back_ios_new,
      size: 20.r,
    ),
  ),
];
