import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/splash_content.dart';
import '../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>{
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to TOKOTO, let's shop."
    },
    {
      "text": "We help people connect with stores \n around Nairobi",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show an easy way to shop \n Just stay at home with us",
      "image": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context,index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ) ,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getPropotionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: List.generate(splashData.length, (index) => buildDot(index: index)),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: getPropotionateScreenHeight(50),
                      child: DefaultButton(text: "Continue", press: () {},)
                    ),
                    Spacer()

                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }

  AnimatedContainer buildDot({int index}){
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}
