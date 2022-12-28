import 'package:flutter/material.dart';
import 'package:my_flutter_playground/widget/match_swiper/custom_card_swiper_logic.dart';

class CustomCardSwiperButton extends StatelessWidget {
  final Function onTap;
  final Widget child;

  const CustomCardSwiperButton({
    required this.onTap,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: child,
    );
  }
}
//swipe card to the right side
Widget swipeRightButton(CustomCardSwiperLogicController controller) {
  return CustomCardSwiperButton (
    onTap: () => controller.swipeRight(),
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.9),
            spreadRadius: -10,
            blurRadius: 20,
            offset: const Offset(0, 20), // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 40,
      ),
    ),
  );
}

//swipe card to the left side
Widget swipeLeftButton(CustomCardSwiperLogicController controller) {
  return CustomCardSwiperButton (
    onTap: () => controller.swipeLeft(),
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFFF3868),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF3868).withOpacity(0.9),
            spreadRadius: -10,
            blurRadius: 20,
            offset: const Offset(0, 20), // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      child: const Icon(
        Icons.close,
        color: Colors.white,
        size: 40,
      ),
    ),
  );
}

//unswipe card
Widget unswipeButton(CustomCardSwiperLogicController controller) {
  return CustomCardSwiperButton (
    onTap: () => controller.unswipe(),
    child: Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      child: const Icon(
        Icons.rotate_left_rounded,
        color: Colors.grey,
        size: 40,
      ),
    ),
  );
}