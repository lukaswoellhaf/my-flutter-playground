import 'package:flutter/material.dart';

import '../../global/styles.dart';

class CustomCardButton extends StatelessWidget {
  const CustomCardButton(
      {super.key,
      required this.cardText,
      required this.cardImagePath,
      required this.value,
      required this.onChanged});

  final String cardText;
  final String cardImagePath;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: buttonColorStandard,
          onTap: () {
            onChanged(!value);
          },
          child: SizedBox(
            width: 150,
            height: 150,
            child: Container(
              decoration: BoxDecoration(
                  color: value
                      ? secondaryColor.withAlpha(50)
                      : secondaryColor.withAlpha(0),
                  border: value
                      ? Border.all(
                          color: secondaryColor,
                          width: 5.0,
                          style: BorderStyle.solid)
                      : null,
                  image: DecorationImage(
                      opacity: 0.8,
                      image: AssetImage(cardImagePath),
                      fit: BoxFit.cover)),
              child: Center(
                child: Text(cardText,
                    textAlign: TextAlign.center, style: textStandard),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CustomCardButton(
      cardText: 'ADVENTURE',
      cardImagePath: "assets/adventures.png",
      value: _isSelected,
      onChanged: (bool value) {
        setState(() {
          _isSelected = value;
        });
      },
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
