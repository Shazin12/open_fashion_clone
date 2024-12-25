import 'package:flutter/material.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';

class HomeBrandLogo extends StatelessWidget {
  const HomeBrandLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            child(MyImage.prada),
            child(MyImage.burberry),
            child(MyImage.hugo_boss),
          ],
        ),
        sizedBoxH20,
        sizedBoxH5,
        Row(
          children: [
            child(MyImage.cartier),
            child(MyImage.gucci),
            child(MyImage.tiffany),
          ],
        ),
      ],
    );
  }

  Expanded child(String image) => Expanded(child: AppImage(image: image));
}
