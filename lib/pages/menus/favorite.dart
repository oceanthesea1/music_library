import 'package:flutter/material.dart';
import 'package:music_library/widgets/my_color_list.dart';
import 'package:music_library/widgets/my_list.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: colorBackground,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Favorite Page',
                  style: TextStyle(
                      color: colorWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25.0,
                ),
                MyList(
                    backgroundColor: colorTransparent,
                    textColor: colorWhite,
                    secondTextColor: secondTextColor,
                    iconColor: iconColor,
                    splashColor: splashColor,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/56/19/e7/5619e764-12eb-5f71-af49-c7da60a60a51/PA00139602_0_190561_jacket.jpg/1200x1200bf-60.jpg",
                    icon: Icons.star_rounded,
                    imageSize: 80,
                    iconSize: 33,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    secondFontSize: 14,
                    secondFontWeight: FontWeight.w500,
                    text: 'Tsubasa',
                    secondText: 'Nanahoshi (CV:Shion Wakayama)',
                    borderRadius: 15,
                    imageBorderRadius: 8,
                    height: 100,
                    onTap: () {},
                    onTapIcon: () {}),
              ],
            ),
          )),
    );
  }
}
