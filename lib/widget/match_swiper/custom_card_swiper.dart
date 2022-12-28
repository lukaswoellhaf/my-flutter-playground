import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_playground/global/data.dart';
import 'package:my_flutter_playground/widget/match_swiper/custom_card_swiper_data.dart';
import 'package:my_flutter_playground/widget/match_swiper/custom_card_swiper_logic.dart';

import 'custom_card_swiper_button.dart';

class CustomCardSwiper extends StatefulWidget {
  const CustomCardSwiper({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomCardSwiper> createState() => _CustomCardSwiperState();
}

class _CustomCardSwiperState extends State<CustomCardSwiper> {
  final CustomCardSwiperLogicController controller =
      CustomCardSwiperLogicController();

  List<CustomCardSwiperData> cards = [];

  @override
  void initState() {
    _loadCards();
    super.initState();
  }

  void _loadCards() {
    for (MatchItemPreviewModel item in testItems) {
      cards.add(CustomCardSwiperData(item: item));
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: CustomCardSwiperLogic (
              unlimitedUnswipe: true,
              controller: controller,
              unswipe: _unswipe,
              cards: cards,
              onSwipe: _swipe,
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
                bottom: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 80,
              ),
              swipeLeftButton(controller),
              const SizedBox(
                width: 20,
              ),
              swipeRightButton(controller),
              const SizedBox(
                width: 20,
              ),
              unswipeButton(controller),
            ],
          )
        ],
      ),
    );
  }

  void _swipe(int index, CustomCardSwiperLogicDirection direction) {
    log("the card was swiped to the: ${direction.name}");
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }
}
