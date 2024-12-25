import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/main.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';
import 'package:open_fashion_clone/widgets/rhombus_divider.dart';

class HomeCompanyFeatures extends StatelessWidget {
  const HomeCompanyFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xffF7F7F7),
      child: Column(
        children: [
          sizedBoxH30,
          AppImage(
            image: MyImage.logo,
            height: 40.wMin,
          ),
          sizedBoxH20,
          AppText(
            "Making a luxurious lifestyle accessible for a generous group of women is our daily drive.",
            fontWeight: FontWeight.w400,
            fontSize: 14.spMin,
            color: MyColor.label,
            textAlign: TextAlign.center,
            padding: EdgeInsets.symmetric(horizontal: 50),
            maxLines: 10,
          ),
          sizedBoxH10,
          RhombusDivider(
            width: MediaQuery.sizeOf(context).width / 2.5,
          ),
          sizedBoxH20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              spacing: 15,
              children: [
                card(
                  MyImage.fast_shipping,
                  "Fast shipping. Free on orders over \$25.",
                ),
                card(
                  MyImage.sustainable_process,
                  "Sustainable process from start to finish.",
                ),
              ],
            ),
          ),
          sizedBoxH20,
          sizedBoxH5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              spacing: 15,
              children: [
                card(
                  MyImage.unique_design,
                  "Unique designs and high-quality materials.",
                ),
                card(
                  MyImage.fast_shipping_2,
                  "Fast shipping. Free on orders over \$25.",
                ),
              ],
            ),
          ),
          sizedBoxH30,
          AppImage(image: MyImage.twiggle),
          sizedBoxH30,
        ],
      ),
    );
  }

  Widget card(String image, String title) {
    return Expanded(
      child: Column(
        children: [
          AppImage(
            image: image,
            height: 34.wMin,
          ),
          sizedBoxH5,
          AppText(
            title,
            fontSize: 13.spMin,
            color: MyColor.label,
            textAlign: TextAlign.center,
            maxLines: 3,
          )
        ],
      ),
    );
  }
}
