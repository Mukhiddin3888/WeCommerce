import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:we_commerce/data/utils/color.dart';
import 'package:we_commerce/data/utils/icons.dart';
import 'package:we_commerce/data/utils/style.dart';
import 'package:we_commerce/screens/home/components/ads_top.dart';
import 'package:we_commerce/screens/home/components/circular_cat_item.dart';
import 'package:we_commerce/screens/product_creen/product_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.8);
  bool isChosen = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 180,

          child: PageView(
            controller: controller,
            children: [
              AdsTop(
                off: '50',
                img: MyIcons.ads,
              ),
              AdsTop(
                off: '55',
                img: MyIcons.ads2,
              ),
              AdsTop(
                off: '50',
                img: MyIcons.ads,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(top: 8),
            child: SmoothPageIndicator(
                controller: controller, // PageController
                count: 3,
                effect: WormEffect(
                    activeDotColor: MyColors.primaryBlue,
                    dotColor: MyColors.grey,
                    dotHeight: 10,
                    dotWidth: 10),
                // your preferred effect
                onDotClicked: (index) {}),
          ),
    ),


        CatTitle(l_title: 'Category',r_title: 'More Category',),

        //TODO: change to list builder

        ///change ListView.Builder when Api done
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 16,right: 16,top: 16),
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(onTap:(){
                setState(() {
                  isChosen = !isChosen;
                });
              }, child: CircularCategoriesItem(catIcon: MyIcons.cat1, catName: 'Man Shirt',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat2,catName: 'Dress',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat3,catName: 'Man Work',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat4,catName: 'Woman Bag',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat5,catName: 'Woman\'s',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat6,catName: 'Man\'s',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat_TShirt,catName: 'T-shirt',isChosen: isChosen,)),
              GestureDetector(
                  onTap:(){

                    setState(() {
                      isChosen = !isChosen;
                    });
                  },
                  child: CircularCategoriesItem(catIcon: MyIcons.cat_pants,catName: 'Pants',isChosen: isChosen,)),
            ],
          ),
        ),
        CatTitle(l_title: 'Flash Sale',r_title: 'See More',),
        SizedBox(
          height: 260,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
            return  GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => ProductScreen(),));
                },
                child: ProductCard(img: MyIcons.prod_1,price: '399.45',off: '36',));
          },),
        ),
        CatTitle(l_title: 'Mega Sale',r_title: 'See More',),
        SizedBox(
          height: 260,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return  ProductCard(img: MyIcons.prod_2_1,price: '299.43',off: '24',);
            },),
        ),
        Container(

          padding: EdgeInsets.only(left: 16,top: 24),
          margin: EdgeInsets.only(top: 16,bottom: 24,left: 16,right: 16),
          width: double.infinity,
          height: 206,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recomended \nProduct',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.white,fontSize: 24),),
              SizedBox(height: 16,),
              Text('We recommend the best for you',style: MyTextStyle.poppinsReg.copyWith(color: MyColors.white,fontSize: 14),),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(MyIcons.ads2)
            )
          ),
        )

      ],);


  }
}

class ProductCard extends StatelessWidget {

 final String img;
 final String off;
 final String price;

  const ProductCard({Key? key,required this.img, required this.off,required this.price}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: MyColors.grey.withOpacity(0.8))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(12),
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: MyColors.lightGrey
            ),
         //  child: Image(image: NetworkImage(''),),
            child: Image(image: AssetImage(img),),
          ),
          SizedBox(
              width: 110,
              child: Text('FS - Nike Air Max 270 React',overflow: TextOverflow.ellipsis, maxLines: 2,
                style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue,fontSize: 12),)),
          Text( ' \$$price',style: MyTextStyle.poppinsBold.copyWith(
            color: MyColors.primaryBlue,fontSize: 12,),),
          Row(
            children: [
              Text('\$534,33 ',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.grey.withOpacity(0.5),fontSize: 12, decoration: TextDecoration.lineThrough),),
              Text('  $off% Off', style: MyTextStyle.poppinsBold.copyWith(color: MyColors.primaryRed,fontSize: 12),),
            ],
          )
        ],
      ),
    );
  }
}

class CatTitle extends StatelessWidget {
  final String l_title;
  final String r_title;

  const CatTitle({required this.l_title, required this.r_title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Text(
            l_title,
            style: MyTextStyle.poppinsReg.copyWith(
                color: MyColors.darkBlue, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            r_title,
            style: MyTextStyle.poppinsReg.copyWith(
                color: MyColors.primaryBlue, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}

class TimerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      alignment: Alignment.center,
      height: 36,
      width: 36,
      decoration: BoxDecoration(
          color: MyColors.white, borderRadius: BorderRadius.circular(6)),
      child: Text('08'),
    );
  }
}
