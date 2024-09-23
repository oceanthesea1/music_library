import 'package:flutter/material.dart';
import 'package:music_library/widgets/my_color_list.dart';

class MyList extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color secondTextColor;
  final Color iconColor;
  final Color splashColor;
  final String imageUrl;
  final IconData icon;
  final double imageSize;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;
  final double secondFontSize;
  final FontWeight secondFontWeight;
  final String text;
  final String secondText;
  final VoidCallback? onTap;
  final VoidCallback? onTapIcon;
  final double borderRadius;
  final double height;
  final double imageBorderRadius;

  const MyList(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.secondTextColor,
      required this.iconColor,
      required this.splashColor,
      required this.imageUrl,
      required this.icon,
      required this.imageSize,
      required this.iconSize,
      required this.fontSize,
      required this.fontWeight,
      required this.secondFontSize,
      required this.secondFontWeight,
      required this.text,
      required this.secondText,
      required this.borderRadius,
      required this.imageBorderRadius,
      required this.height,
      this.onTap,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: colorTransparent, 
        child: InkWell(
          onTap: onTap,
          splashColor: splashColor,
          borderRadius:
              BorderRadius.circular(borderRadius), 
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(imageBorderRadius),
                      child: Image.network(
                        imageUrl,
                        width: imageSize,
                        height: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                              color: textColor,
                              fontSize: fontSize,
                              fontWeight: fontWeight,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            secondText,
                            style: TextStyle(
                              color: secondTextColor,
                              fontSize: secondFontSize,
                              fontWeight: secondFontWeight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(icon, size: iconSize, color: iconColor),
                  onPressed: onTapIcon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
