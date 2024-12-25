import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/widgets/app_button.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';
import 'package:open_fashion_clone/widgets/rhombus.dart';

class HomeTopImage extends StatelessWidget {
  const HomeTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height2 = MediaQuery.sizeOf(context).height - 60;
    var topSafe = MediaQuery.paddingOf(context).top;
    double height3 = (height2 > 700 ? 700 : height2) - topSafe;
    return Container(
      height: height3,
      width: double.infinity,
      color: MyColor.placeholder,
      child: Stack(
        children: [
          AppImage(
            height: height3,
            width: double.infinity,
            fit: BoxFit.fill,
            image: MyImage.home_top,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 20,
            children: [
              AppButton(
                width: 240,
                borderRadius: BorderRadius.circular(30.r),
                buttonColor: MyColor.title_active.withOpacity(0.5),
                text: "EXPLOSE COLLECTION",
                fontWeight: FontWeight.w400,
                fontSize: 16.spMin,
                onPressed: () {},
              ),
              Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RhombusShape(color: Colors.white),
                  RhombusShape(
                    color: Colors.transparent,
                    border_color: Colors.white,
                  ),
                  RhombusShape(
                    color: Colors.transparent,
                    border_color: Colors.white,
                  ),
                ],
              ),
              sizedBoxH10,
            ],
          )
        ],
      ),
    );
  }
}
