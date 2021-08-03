import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:we_commerce/data/utils/utils.dart';

class CircularCategoriesItem extends StatelessWidget {

  final String catIcon;
  final String catName;
  final bool isChosen;

  const CircularCategoriesItem({Key? key,required this.catIcon,required this.catName, this.isChosen = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(right: 6,left: 6),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //TODO:refactor 
                border: Border.all(color: /*isChosen ? MyColors.primaryBlue :*/ MyColors.lightGrey,width: 2)
            ),
            child: SvgPicture.asset(catIcon)),
        Text(catName,style: MyTextStyle.poppinsReg.copyWith(fontSize: 10,color: MyColors.grey),)
      ],
    );
  }
}