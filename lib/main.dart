import 'package:flutter/material.dart';
import 'package:my_flutter_playground/widget/match_swiper/custom_card_swiper.dart';
import '../../global/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const CustomCardSwiper(),
      ),
    );
  }
}

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
            width: 125,
            height: 125,
            child: Container(
              decoration: BoxDecoration(
                  color: value
                      ? secondaryColor.withAlpha(150)
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
