import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_library/controller/fav_song_controller.dart';
import 'package:music_library/models/fav_song_models.dart';
import 'package:music_library/widgets/my_color_list.dart';
import 'package:music_library/widgets/my_list.dart';

class Home extends StatelessWidget {
  final FavSongController favSongController = Get.put(FavSongController());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorBackground,
        title: Text(
          'Home Page',
          style: TextStyle(
            color: colorWhite,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
                MyList(
                    backgroundColor: colorTransparent,
                    textColor: colorWhite,
                    secondTextColor: secondTextColor,
                    iconColor: iconColor,
                    splashColor: splashColor,
                    imageUrl:
                        "https://images.genius.com/126b3f7cf37a3df10d26216b74169429.1000x1000x1.jpg",
                    icon: Icons.star_border_rounded,
                    imageSize: 80,
                    iconSize: 33,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    secondFontSize: 14,
                    secondFontWeight: FontWeight.w500,
                    text: 'Pretender',
                    secondText: 'Official HIGE DANdism',
                    borderRadius: 15,
                    imageBorderRadius: 8,
                    height: 100,
                    onTap: () {},
                    onTapIcon: () {
                      FavSongModel favSong = FavSongModel(
                        title: "Pretender",
                        artist: "Official HIGE DANdism",
                        image:
                            "https://images.genius.com/126b3f7cf37a3df10d26216b74169429.1000x1000x1.jpg",
                      );
                      if (favSongController.isFavSong(favSong)) {
                        Get.snackbar(
                          'Already in Favorites!',
                          '${favSong.title} by ${favSong.artist} is already in your favorites!',
                          colorText: colorWhite,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 1),
                        );
                      } else {
                        favSongController.addFavSong(favSong);
                        Get.snackbar(
                          'Song Liked!',
                          'Added ${favSong.title} by ${favSong.artist} to your Favorite!',
                          colorText: colorWhite,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 1),
                        );
                      }
                    }),
                SizedBox(
                  height: 5.0,
                ),
                MyList(
                    backgroundColor: colorTransparent,
                    textColor: colorWhite,
                    secondTextColor: secondTextColor,
                    iconColor: iconColor,
                    splashColor: splashColor,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/56/19/e7/5619e764-12eb-5f71-af49-c7da60a60a51/PA00139602_0_190561_jacket.jpg/1200x1200bf-60.jpg",
                    icon: Icons.star_border_rounded,
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
                    onTapIcon: () {
                      FavSongModel favSong = FavSongModel(
                        title: "Tsubasa",
                        artist: "Nanahoshi (CV:Shion Wakayama)",
                        image:
                            "https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/56/19/e7/5619e764-12eb-5f71-af49-c7da60a60a51/PA00139602_0_190561_jacket.jpg/1200x1200bf-60.jpg",
                      );
                      if (favSongController.isFavSong(favSong)) {
                        Get.snackbar(
                          'Already in Favorites!',
                          '${favSong.title} by ${favSong.artist} is already in your favorites!',
                          colorText: colorWhite,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 1),
                        );
                      } else {
                        favSongController.addFavSong(favSong);
                        Get.snackbar(
                          'Song Liked!',
                          'Added ${favSong.title} by ${favSong.artist} to your Favorite!',
                          colorText: colorWhite,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 1),
                        );
                      }
                    }),
                SizedBox(
                  height: 5.0,
                ),
                MyList(
                    backgroundColor: colorTransparent,
                    textColor: colorWhite,
                    secondTextColor: secondTextColor,
                    iconColor: iconColor,
                    splashColor: splashColor,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0b/dd/b0/0bddb070-124b-24b4-42ea-778943aee078/4511820-94707.jpg/1200x1200bf-60.jpg",
                    icon: Icons.star_border_rounded,
                    imageSize: 80,
                    iconSize: 33,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    secondFontSize: 14,
                    secondFontWeight: FontWeight.w500,
                    text: '8.32',
                    secondText: '*Luna',
                    borderRadius: 15,
                    imageBorderRadius: 8,
                    height: 100,
                    onTap: () {},
                    onTapIcon: () {
                      FavSongModel favSong = FavSongModel(
                        title: "8.32",
                        artist: "*Luna",
                        image:
                            "https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0b/dd/b0/0bddb070-124b-24b4-42ea-778943aee078/4511820-94707.jpg/1200x1200bf-60.jpg",
                      );
                      if (favSongController.isFavSong(favSong)) {
                        Get.snackbar(
                          'Already in Favorites!',
                          '${favSong.title} by ${favSong.artist} is already in your favorites!',
                          colorText: colorWhite,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 1),
                        );
                      } else {
                        favSongController.addFavSong(favSong);
                        Get.snackbar(
                          'Song Liked!',
                          'Added ${favSong.title} by ${favSong.artist} to your Favorite!',
                          colorText: colorWhite,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 1),
                        );
                      }
                    }),
              ],
            ),
          )),
    );
  }
}
