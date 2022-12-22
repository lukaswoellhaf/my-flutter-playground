import 'package:flutter/material.dart';

import '../../global/styles.dart';

class CustomCardButton extends StatefulWidget {
  const CustomCardButton({super.key});

/*  final String cardText;
  final String cardImagePath;*/


  @override
  State<StatefulWidget> createState() => _CustomCardButtonState();
}

class _CustomCardButtonState extends State<CustomCardButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: buttonColorStandard,
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            width: 115,
            height: 115,
            child: Container(
              decoration: BoxDecoration(
                color: secondaryColor.withAlpha(50),
                  border: Border.all(
                      color: secondaryColor,
                      width: 5.0,
                      style: BorderStyle.solid),
                  image: const DecorationImage(
                      opacity: 0.8,
                      image: AssetImage("assets/adventures.png"),
                      fit: BoxFit.cover)),
              child: const Center(
                child: Text('NETFLIX',
                    textAlign: TextAlign.center, style: textStandard),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
// width: 150,
// height: 150,
// decoration: const BoxDecoration(
// image: DecorationImage(
// image: AssetImage("assets/netflix-icon.png"),
// fit: BoxFit.cover)),

// GestureDetector(
// child: Card(
// elevation: 4.0,
// // clipBehavior is necessary because, without it, the InkWell's animation
// // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
// // This comes with a small performance cost, and you should not set [clipBehavior]
// // unless you need it.
// clipBehavior: Clip.hardEdge,
// child: InkWell(
// splashColor: buttonColorStandard,
// onTap: () {
// debugPrint('Card tapped.');
// },
// child: const Image(
// image: AssetImage('assets/netflix-icon.png'),
// fit: BoxFit.cover,
// width: 125,
// height: 125,
// opacity: AlwaysStoppedAnimation(0.4))),
// ),
// );

// GestureDetector(
// child: Card(
// // clipBehavior is necessary because, without it, the InkWell's animation
// // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
// // This comes with a small performance cost, and you should not set [clipBehavior]
// // unless you need it.
// clipBehavior: Clip.hardEdge,
// child: InkWell(
// splashColor: buttonColorStandard,
// onTap: () {
// debugPrint('Card tapped.');
// },
// child: const SizedBox(
// width: 125,
// height: 125,
// child: Center(
// child: Text(
// 'A card that can be tapped',
// textAlign: TextAlign.center,
// style: textStandardInverted
// ),
// ),
// ),
// ),
// ),
// );

// Container(
// width: 150,
// height: 150,
// decoration: const BoxDecoration(
// image: DecorationImage(
// image: AssetImage("assets/netflix-icon.png"),
// fit: BoxFit.cover)),
