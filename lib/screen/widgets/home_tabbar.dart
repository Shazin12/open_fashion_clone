import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';
import 'package:open_fashion_clone/widgets/rhombus.dart';

class HomeTabbar extends StatefulWidget {
  const HomeTabbar({
    super.key,
  });

  @override
  State<HomeTabbar> createState() => _HomeTabbarState();
}

class _HomeTabbarState extends State<HomeTabbar> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          child("All", 0),
          child("Apparel", 1),
          child("Dress", 2),
          child("Tshirt", 3),
          child("Bag", 4),
        ],
      ),
    );
  }

  Widget child(String text, int id) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          selected = id;
          setState(() {});
        },
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                text,
                fontWeight: FontWeight.w400,
                fontSize: 14.spMin,
                color:
                    selected == id ? MyColor.title_active : MyColor.placeholder,
              ),
              SizedBox(height: 2),
              RhombusShape(
                size: 5,
                color: MyColor.primary,
              )
                  .animate(target: selected == id ? 1 : 0)
                  .fade(duration: 600.ms)
                  .moveY()
            ],
          ),
        ),
      ),
    );
  }
}
