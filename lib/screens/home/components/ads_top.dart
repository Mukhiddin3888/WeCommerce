import 'package:flutter/material.dart';
import 'package:we_commerce/data/utils/style.dart';
import 'package:we_commerce/data/utils/utils.dart';

import '../home_screen.dart';

class AdsTop extends StatelessWidget {
  final String off;

  final String img;

  AdsTop({required this.off, required this.img}) {}

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left: 12),
      margin: EdgeInsets.only(right: 8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Text(
            'Super Flash Sale \n$off% off',
            style: MyTextStyle.poppinsBold
                .copyWith(color: MyColors.white, fontSize: 22),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              TimerText(),
              Column(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ],
              ),
              TimerText(),
              Column(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ],
              ),
              TimerText(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}