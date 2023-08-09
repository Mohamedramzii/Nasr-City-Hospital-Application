import 'package:flutter/material.dart'
    show
        AnimatedBuilder,
        Animation,
        AssetImage,
        BuildContext,
        CircleAvatar,
        Image,
        Offset,
        SlideTransition,
        StatelessWidget,
        Widget;

import '../../../../core/app_configuration/assets.dart';

class slidingImageWidget extends StatelessWidget {
  const slidingImageWidget({
    super.key,
    required this.imageslidingAnimation,
  });

  final Animation<Offset> imageslidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: imageslidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: imageslidingAnimation,
              child: const CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage(Images.logo),
              ));
        });
  }
}
