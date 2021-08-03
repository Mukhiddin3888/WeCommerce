import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_commerce/data/utils/color.dart';
import 'package:we_commerce/data/utils/icons.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryBlue,
      body: Center(
        child: SvgPicture.asset(MyIcons.logo),

      )
    );
  }
}
