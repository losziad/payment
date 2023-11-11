import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class PaymentMethodItems extends StatelessWidget {
  PaymentMethodItems({super.key, this.isActive = false, required this.image,});
  bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: isActive ? Color(0xFF34A853):Color(0xff000080)),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows:  [
          BoxShadow(
            color: isActive ? Color(0xFF34A853):Colors.white,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(
           image,
            height: 24.0,
          ),

        ),
      ),
    );
  }
}
