import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            tab("About"),
            tab("Contact"),
            tab("Blog"),
          ],
        ),
        sizedBoxH30,
        Container(
          width: double.infinity,
          height: 45,
          alignment: Alignment.center,
          color: MyColor.input_BG,
          child: AppText(
            "Copyright© OpenUI All Rights Reserved.",
            fontWeight: FontWeight.w400,
            fontSize: 12.spMin,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget tab(String text) {
    return Expanded(
      child: AppText(
        text,
        color: MyColor.title_active,
        fontWeight: FontWeight.w400,
        textAlign: TextAlign.center,
        fontSize: 16.spMin,
      ),
    );
  }
}
