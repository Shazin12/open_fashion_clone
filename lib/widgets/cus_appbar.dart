import 'package:flutter/material.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/main.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';

class CusAppBar extends StatelessWidget {
  const CusAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.appbar,
      width: double.infinity,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              sizedBoxW20,
              AppImage(
                image: MyImage.drawer,
                height: 24.wMin,
                width: 24.wMin,
              ),
              Spacer(),
              AppImage(
                image: MyImage.search,
                height: 24.wMin,
                width: 24.wMin,
              ),
              sizedBoxW20,
              AppImage(
                image: MyImage.cart,
                height: 24.wMin,
                width: 24.wMin,
              ),
              sizedBoxW20,
            ],
          ),
          AppImage(
            image: MyImage.logo,
            height: 32.wMin,
          ),
        ],
      ),
    );
  }
}
