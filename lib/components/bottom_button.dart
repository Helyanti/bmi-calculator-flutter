import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  BottomButton({
    @required this.buttonTitle,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomContainerHeight,
      child: TextButton(
        //route to Screen2
        onPressed: onTap,
        style: TextButton.styleFrom(
          //padding: EdgeInsets.only(bottom: 20.0),
          backgroundColor: kBottomContainerColour,
          primary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),
        child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
