import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:url_launcher/url_launcher.dart';

Widget myRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 30.r,
        foregroundImage: const AssetImage('assets/images/immadominion.jpeg'),
      ),
      SizedBox(
        width: 5.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText('Imma Dominion', 15.sp),
          bodyText('Flutter Developer in Lagos,', 10.sp),
          bodyText('Nigeria, He/Him', 10.sp),
          GestureDetector(
            onTap: _launchURL,
            child: Container(
              decoration: BoxDecoration(
                color: immaPurple.withOpacity(0.3),
                borderRadius: BorderRadius.circular(9.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(4.sp),
                child: Text(
                  'github.com/immadominion',
                  style: TextStyle(
                    fontFamily: 'Monteserrat',
                    fontSize: 7.sp,
                    fontWeight: FontWeight.w500,
                    color: immaWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    ],
  );
}

Widget headerText(text, size) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Monteserrat',
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: immaWhite,
    ),
  );
}

Widget bodyText(text, size) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Monteserrat',
      fontSize: size,
      fontWeight: FontWeight.w500,
      color: immaWhite,
    ),
  );
}

Widget dateText(text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Monteserrat',
      fontSize: 7.sp,
      fontWeight: FontWeight.w500,
      color: immaWhite.withOpacity(0.5),
    ),
  );
}

_launchURL() async {
  final Uri url = Uri.parse('https://github.com/immadominion');
  if (!await launchUrl(url)) {
    throw Exception('Could not open $url');
  }
}
