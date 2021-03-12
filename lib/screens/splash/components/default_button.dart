import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';

class DefaultButton extends StatelessWidget{
  final String text;
  final Function press;

  DefaultButton({Key key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states){
                return kPrimaryColor;
              }
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          )

      ),
      child: Text(
        "Continue",
        style: TextStyle(
            color: Colors.white,
            fontSize: getPropotionateScreenWidth(18)
        ),
      ),
    );
  }
}