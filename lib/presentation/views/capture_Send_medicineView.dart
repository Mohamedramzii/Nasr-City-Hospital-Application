// import 'dart:io';
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:nasr_city_hosptial_app/core/app_configuration/colors.dart';
// import 'package:path_provider/path_provider.dart';
// import '../../core/app_configuration/fonts.dart';

// class CaptureAndSendMedicineView extends StatefulWidget {
//   const CaptureAndSendMedicineView({super.key});

//   @override
//   State<CaptureAndSendMedicineView> createState() =>
//       _CaptureAndSendMedicineViewState();
// }

// class _CaptureAndSendMedicineViewState
//     extends State<CaptureAndSendMedicineView> {
//   // XFile? imagepath;
//   // File? _imageFile;

//   // Future<File?> getImagePath() async {
//   //   final ImagePicker _picker = ImagePicker();
//   //   imagepath = await _picker.pickImage(source: ImageSource.camera);

//   //   if (imagepath != null) {
//   //     final directory= await getExternalStorageDirectory();
//   //     _imageFile=File(imagepath!.path);
//   //     return File(imagepath!.path);
//   //   }

//   //   return null;
//   // }

//   // Future<void> openWhatsAppWithImage(String imagePath) async {
//   //   final String phoneNumber = '201023132719';
//   //   final url =
//   //       'https://wa.me/$phoneNumber?text=${Uri.encodeFull('Hello')}&media=$imagePath';
//   //   // 'https://wa.me/$phoneNumber?text=${Uri.encodeFull(text)}'

//   //   if (await canLaunchUrl(Uri.parse(url))) {
//   //     await launchUrl(
//   //       Uri.parse(url),
//   //       mode: LaunchMode.externalApplication,
//   //     );
//   //   } else {
//   //     throw 'Could not launch WhatsApp.';
//   //   }
//   // }
// // Future<void> shareFile() async {
// //     await getImagePath();
// //     Directory? directory;
// //     if (Platform.isAndroid) {
// //       directory = await getExternalStorageDirectory();
// //     } else {
// //       directory = await getApplicationDocumentsDirectory();
// //     }
// //     debugPrint('${directory?.path} / ${_imageFile?.path}');
// //     await WhatsappShare.shareFile(
// //       // text: 'Whatsapp message text',
// //       // phone: '911234567890',
// //       // filePath: ["${_imageFile?.path}"],
// //     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               if (_imageFile == null)
//                 Container(
//                   width: double.infinity,
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.all(2.r),
//                   // height: 500.h,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
//                   child: const Icon(
//                     Icons.image,
//                     size: 400,
//                     color: Colors.grey,
//                   ),
//                 ),
//               if (_imageFile != null)
//                 Container(
//                     width: double.infinity,
//                     alignment: Alignment.center,
//                     margin: EdgeInsets.all(2.r),
//                     // height: 500.h,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12.r)),
//                     child: Image.file(_imageFile!)),
//               if (_imageFile != null)
//                 Positioned(
//                     right: 10.w,
//                     child: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             _imageFile = null;
//                           });
//                         },
//                         icon: const Icon(Icons.close, color: Colors.black))),
//               if (_imageFile == null)
//                 Positioned(
//                   bottom: 25.h,
//                   left: 145.w,
//                   child: MaterialButton(
//                     padding: EdgeInsets.all(13.r),
//                     onPressed: () async {
//                       final File? imageFile = await getImagePath();
//                       setState(() {
//                         _imageFile = imageFile;
//                       });
//                     },
//                     shape: const CircleBorder(eccentricity: 0.2),
//                     color: ColorsManager.kprimaryColor,
//                     child: const Icon(
//                       Icons.camera_alt_outlined,
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//           SizedBox(
//             height: 20.h,
//           ),
//           MaterialButton(
//             onPressed: () async {
//               if (_imageFile != null) {
//                 // await openWhatsAppWithImage(imagepath!.path);
//                 shareFile();
//               }
//             },
//             minWidth: 200.w,
//             height: 40.h,
//             shape: const StadiumBorder(),
//             color: ColorsManager.kprimaryColor,
//             child: Text(
//               'أطلب الدواء',
//               style: FontsManager.textblack15,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WhatsappShare {
// }
