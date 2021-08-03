import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_commerce/data/utils/utils.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 36, left: 24, right: 16, bottom: 18),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: MyColors.lightGrey))),
                  child: Text('Account',style: MyTextStyle.poppinsBold.copyWith(fontSize: 16),),
                ),
                preferredSize: Size.fromHeight(150)),



        body:Column(
          children: [
            SizedBox(height: 16,),
            AccountItems(title: 'Profile',icon: MyIcons.user,),
            AccountItems(title: 'Order',icon: MyIcons.order,),
            AccountItems(title: 'Address',icon: MyIcons.location,),
            AccountItems(title: 'Payment',icon: MyIcons.payment,),
          ],
        )

    );
  }
}

class AccountItems extends StatelessWidget {

  final String icon;
  final String title;

  const AccountItems({Key? key, required this.icon,required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return InkWell(
    splashColor:  MyColors.lightGrey,
      hoverColor:  MyColors.lightGrey,
      focusColor:  MyColors.lightGrey,
      highlightColor: MyColors.lightGrey,
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 24,top: 16,bottom: 16),
        child: Row(children: [
          SvgPicture.asset(icon,color: MyColors.primaryBlue,),
          SizedBox(width: 16,),
          Text(title,style: MyTextStyle.poppinsBold.copyWith(fontSize: 13,color: MyColors.darkBlue),)
        ],),
      ),
    );
  }
}
