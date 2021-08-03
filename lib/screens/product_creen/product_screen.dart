import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:we_commerce/data/utils/color.dart';
import 'package:we_commerce/data/utils/icons.dart';
import 'package:we_commerce/data/utils/style.dart';
import 'package:we_commerce/screens/home/components/circular_cat_item.dart';
import 'package:we_commerce/screens/home/home_screen.dart';


class ProductScreen extends StatelessWidget {
   ProductScreen({Key? key}) : super(key: key);


  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150), // Set this height
        child: Container(
          padding:
          EdgeInsets.only(top: 44, left: 24, right: 16, bottom: 18),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1.0, color: MyColors.lightGrey))),
          child: Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(MyIcons.left,height: 32,width: 32,)),
              SizedBox(width: 8,),
              Text('Product Name',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue),),
              Spacer(),
              SvgPicture.asset(MyIcons.explore),
              SizedBox(width: 8,),
              SvgPicture.asset(MyIcons.menu),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 238,
              child: PageView(
                controller: controller,
                children: [
                  Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage(MyIcons.yNike))),),
                  Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage(MyIcons.bNike))),),
                  Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage(MyIcons.rNike))),),
                  Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage(MyIcons.greenNike))),),
                  Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage(MyIcons.dbNike))),),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 8),
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 5,
                    effect: WormEffect(
                        activeDotColor: MyColors.primaryBlue,
                        dotColor: MyColors.grey,
                        dotHeight: 10,
                        dotWidth: 10),
                    // your preferred effect
                    onDotClicked: (index) {}),
              ),
            ),
            Row(children: [

              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Nike Air Zoom Pegasus 36 \nMiami',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue ),),
              ),
              Spacer(),
              SvgPicture.asset(MyIcons.love),
              SizedBox(width: 16,)
            ],),
            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12),
              child: Row(children: [
                SvgPicture.asset(MyIcons.starFilled),
                SvgPicture.asset(MyIcons.starFilled),
                SvgPicture.asset(MyIcons.starFilled),
                SvgPicture.asset(MyIcons.starFilled),
                SvgPicture.asset(MyIcons.star),
              ],),
            ),
            Text('\$399.45',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.primaryBlue)),
            TitleLeft(title: 'Select Size',),

            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  GestureDetector(
                      onTap: (){},
                      child: OvalSize(size: '6',)),
                  OvalSize(size: '6.5',),
                  OvalSize(size: '7',),
                  OvalSize(size: '7.5',),
                  OvalSize(size: '8',),
                  OvalSize(size: '8.5',),
                ],),
              ),
            ),

            TitleLeft(title: 'Select Color',),

            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  OvalSize(size: '',color: MyColors.primaryYellow,),
                  OvalSize(size: '',color: MyColors.primaryBlue,),
                  OvalSize(size: '',color: MyColors.primaryRed,),
                  OvalSize(size: '',color: MyColors.primaryGreen,),
                  OvalSize(size: '',color: MyColors.primaryPurple,),
                  OvalSize(size: '',color: MyColors.darkBlue,),
                  OvalSize(size: '',color: MyColors.grey,),
                ],),
              ),
            ),

            TitleLeft(title: 'Specification',),

            Row(
              children: [
                Text('Shown:'),
                Spacer(),
                Text('Laser', style: MyTextStyle.poppinsReg.copyWith(color: MyColors.grey),),
                SizedBox(width: 16,)
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 16,top: 6,bottom: 6),
              child: Align(alignment: Alignment.topRight,child: Text('Blue/Anthracite/Watermel', style: MyTextStyle.poppinsReg.copyWith(color: MyColors.grey),)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(alignment: Alignment.topRight,child: Text('on/White', style: MyTextStyle.poppinsReg.copyWith(color: MyColors.grey),)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 8),
              child: Row(
                children: [
                  Text('Style:',style: MyTextStyle.poppinsReg),
                  Spacer(),
                  Text('CD0113-400',style: MyTextStyle.poppinsReg.copyWith(color: MyColors.grey)),
                  SizedBox(width: 16,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('The Nike Air Max 270 React ENG combines a full-length React foam'
                  ' midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
              style: MyTextStyle.poppinsReg.copyWith(color: MyColors.grey),
              ),
            ),


            TitleLeft(title: 'You Might Also Like',),
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
              margin: EdgeInsets.only(right: 16,top: 24,bottom: 32),
              padding: EdgeInsets.only(top: 26,bottom: 16),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color: MyColors.primaryBlue
              ),
              child: Center(child: Text('Add To Cart',style: MyTextStyle.poppinsBold.copyWith(color: MyColors.white),)),
            )


          ],
        ),
      ),


    );
  }
}

class TitleLeft extends StatelessWidget {
  final String title;

  const TitleLeft({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,bottom: 12),
      child: Text(title,style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue),),
    );
  }
}

class OvalSize extends StatelessWidget {

  final String size;
  final Color color;

  const OvalSize({Key? key,required this.size,this.color = MyColors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 66,
        width: 66,
        margin: EdgeInsets.only(right: 6,left: 6),
        decoration: BoxDecoration(
          color: color,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color:color == MyColors.white? MyColors.lightGrey : color,width: 2)
        ),
        child: Center(child: Text(size,style: MyTextStyle.poppinsBold.copyWith(color: MyColors.darkBlue),)));
  }
}
