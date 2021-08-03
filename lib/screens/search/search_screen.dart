import 'package:flutter/material.dart';
import 'package:we_commerce/data/utils/color.dart';
import 'package:we_commerce/data/utils/icons.dart';
import 'package:we_commerce/data/utils/style.dart';
import 'package:we_commerce/screens/home/components/circular_cat_item.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16,top: 24),
          child: Text('Man Fashion',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16,top: 8),
          child: Wrap(
            spacing: 8,
            runSpacing: 10,
            children: [
              CircularCategoriesItem(catIcon: MyIcons.cat1, catName: 'Man shirt'),
              CircularCategoriesItem(catIcon: MyIcons.cat3,catName: 'Man Work',),
              CircularCategoriesItem(catIcon: MyIcons.cat6,catName: 'Man\'s',),
              CircularCategoriesItem(catIcon: MyIcons.cat_pants,catName: 'Pants',),
              CircularCategoriesItem(catIcon: MyIcons.cat_underWear,catName: 'UnderWear',),
              CircularCategoriesItem(catIcon: MyIcons.cat_TShirt,catName: 'T-Shirt',),
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,top: 24),
          child: Text('Woman Fashion',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16,top: 8),
          child: Wrap(
            spacing: 8,
            runSpacing: 10,
            children: [
              CircularCategoriesItem(catIcon: MyIcons.cat2,catName: 'Dress',),
              CircularCategoriesItem(catIcon: MyIcons.cat4,catName: 'Woman Bag',),
              CircularCategoriesItem(catIcon: MyIcons.cat5,catName: 'Woman\'s',),
              CircularCategoriesItem(catIcon: MyIcons.cat_skirt,catName: 'Pants',),
              CircularCategoriesItem(catIcon: MyIcons.cat_wTShirt,catName: 'T-shirt',),
            ],),
        )
        
      ],
    );
  }
}

