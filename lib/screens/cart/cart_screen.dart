import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_commerce/data/utils/utils.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
            child: Text('Your Cart',style: MyTextStyle.poppinsBold.copyWith(fontSize: 16),),
          ),
          preferredSize: Size.fromHeight(150)),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 16),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.lightGrey),
              borderRadius: BorderRadius.circular(6)
            ),
            padding: EdgeInsets.fromLTRB(16, 16, 12, 16),
            child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image(height: 88,width: 80,image: AssetImage(MyIcons.dbNike),),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      SizedBox(width: 160,child: Text('Nike Air Zoom\n36 Miami',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue))),
                      Spacer(),
                      SizedBox(width: 8,),
                      SvgPicture.asset(MyIcons.love),
                      SizedBox(width: 12,),
                      SvgPicture.asset(MyIcons.trash),

                    ],),
                    SizedBox(height: 16,),
                    Row(children: [
                      Text('\$399.45',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.primaryBlue),),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6),bottomLeft: Radius.circular(6)),
                          border: Border.all(color: MyColors.lightGrey)
                        ),
                        height: 36,
                        width: 40,
                        child: Center(child: Text('-',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.grey),)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColors.lightGrey),
                          color: MyColors.lightGrey,
                        ),
                        height: 36,
                        width: 48,
                        child: Center(child: Text('1',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.grey),)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomRight: Radius.circular(6)),
                            border: Border.all(color: MyColors.lightGrey)
                        ),
                        height: 36,
                        width: 40,
                        child: Center(child: Text('+',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.grey),)),
                      ),

                    ],)
                  ],
                ),
              )
            ],
          ),)

        ],
      ),

    );
  }
}
