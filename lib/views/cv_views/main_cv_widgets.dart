import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stage_two/util/color_theme.dart';

bool onHover = false;

Widget myRow(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const CircleAvatar(
        radius: 60,
        foregroundImage: AssetImage('assets/images/immadominion.jpeg'),
      ),
      const SizedBox(
        width: 5,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText('SLACK: Imma Dominion', 17),
          bodyText('FULL NAME: Nwakanma Dominion C.', 13.0),
          bodyText('Flutter Developer in Lagos,', 13.0),
          bodyText('Nigeria, He/Him', 13.0),
          GestureDetector(
            onTap: () {
              launchURL();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: immaPurple,
                content: Text("Text Copied: Open In Chrome"),
              ));
              Clipboard.setData(
                  const ClipboardData(text: 'https://github.com/immadominion'));
            },
            child: Container(
              decoration: BoxDecoration(
                color: immaPurple,
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  'github.com/immadominion',
                  style: TextStyle(
                    fontFamily: 'Monteserrat',
                    fontSize: 17,
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

Widget headerText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Monteserrat',
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: immaWhite,
    ),
  );
}

Widget bodyText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Monteserrat',
      fontSize: size,
      fontWeight: FontWeight.w300,
      color: immaWhite,
    ),
  );
}

Widget dateText(text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Monteserrat',
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: immaWhite.withOpacity(0.5),
    ),
  );
}

void launchURL() async {
  final uri = Uri.parse('https://github.com/immadominion');
  if (Platform.isIOS) {
    // iOS-specific code
    await Process.run('open', [uri.toString()]);
  } else if (Platform.isAndroid) {
    // Android-specific code
    await Process.run('xdg-open', [uri.toString()]);
  } else {
    // Fallback code for other platforms
    throw 'Platform not supported';
  }
}
