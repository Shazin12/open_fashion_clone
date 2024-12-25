import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';

class HomeTags extends StatelessWidget {
  const HomeTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: [
            child(DateTime.now().year.toString()),
            child("spring"),
            child("collection"),
            child("fall"),
            child("dress"),
            child("autumncollection"),
            child("openfashion"),
          ],
        ),
      ),
    );
  }

  Widget child(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColor.input_BG,
      ),
      child: AppText(
        "#$text",
        fontWeight: FontWeight.w400,
        fontSize: 14.spMin,
        color: MyColor.title_active,
      ),
    );
  }
}
