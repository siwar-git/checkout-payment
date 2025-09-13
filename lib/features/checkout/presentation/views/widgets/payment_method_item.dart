import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key, this.isActive = false, required this.image,
  });
final bool isActive;
final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isActive?Color(0xff34A853):Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: isActive? Color(0xff34A853):Colors.white,
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: SvgPicture.asset(
              image,
              height: isActive?35:25,
              fit: isActive?BoxFit.scaleDown:BoxFit.none,
            )),
      ),
    );
  }
}