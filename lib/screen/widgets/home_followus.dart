import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';

class HomeFollowUs extends StatelessWidget {
  const HomeFollowUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GridView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          mainAxisExtent: 200,
          maxCrossAxisExtent: 200,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          card(MyImage.insta_id_1, "mia"),
          card(MyImage.insta_id_2, "_jihyn"),
          card(MyImage.insta_id_3, "mia"),
          card(MyImage.insta_id_4, "_jihyn"),
        ],
      ),
    );
  }

  Widget card(String image, String insta_id) {
    return Stack(
      children: [
        AppImage(
          image: image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.black.withOpacity(0.3),
                Colors.black,
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: AppText(
            "@$insta_id",
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 15.spMin,
            padding: EdgeInsets.all(10),
          ),
        )
      ],
    );
  }
}
