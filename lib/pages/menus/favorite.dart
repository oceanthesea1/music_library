import 'package:flutter/material.dart';
import 'package:music_library/widgets/my_color_list.dart';
import 'package:music_library/widgets/my_list.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Favorite Page",
            style: TextStyle(
              fontSize: 25,
              color: colorWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: colorBackground,
      ),
      body: Container(
          decoration: BoxDecoration(
            color: colorBackground,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              MyList(
                  backgroundColor: colorTransparent,
                  textColor: colorWhite,
                  secondTextColor: secondTextColor,
                  iconColor: iconColor,
                  splashColor: colorBlue,
                  imageUrl:
                      "https://static.zerochan.net/Minato.Aqua.full.2439296.jpg",
                  icon: Icons.star_border_rounded,
                  imageSize: 75,
                  iconSize: 33,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  secondFontSize: 13,
                  secondFontWeight: FontWeight.w500,
                  text: 'Favorite Page List',
                  secondText: 'Fish',
                  borderRadius: 15,
                  imageBorderRadius: 8,
                  height: 100,
                  onTap: () {},
                  onTapIcon: () {}),
            ],
          )),
    );
  }
}
