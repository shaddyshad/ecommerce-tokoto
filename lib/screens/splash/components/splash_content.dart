import 'package:flutter/material.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/constants.dart';

class SplashContent extends StatelessWidget {
  final String image, text;

  SplashContent({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return (
        Column(
          children: [
            Spacer(),
            Text(
              "TOKOTO",
              style: TextStyle(
                  fontSize: getPropotionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(text, textAlign: TextAlign.center,),
            Spacer(flex: 2,),
            Image.asset(
              image,
              width: getPropotionateScreenWidth(235),
              height: getPropotionateScreenHeight(265),
            ),
          ],
        )
    );
  }
}