import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_library/controller/fav_song_controller.dart';
import 'package:music_library/widgets/my_color_list.dart';

class TaskList extends StatelessWidget {
  final FavSongController favSongController = Get.find<FavSongController>();

  void showDeleteConfirmationDialog(BuildContext context, favSong) {
    Get.dialog(
      AlertDialog(
        title: Text('Confirm'),
        content: Text('Do you really want to remove "${favSong.title}" from your favorites?'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); 
              favSongController.deleteFavSong(favSong);
              Get.snackbar(
                'Song Status Changed!',
                'Removed ${favSong.title} by ${favSong.artist} from your Favorites!',
                colorText: colorWhite,
                snackPosition: SnackPosition.BOTTOM,
                duration: Duration(seconds: 1),
              );
            },
            child: Text('Yes', style: TextStyle(color: colorBlack)),
          ),
          TextButton(
            onPressed: () {
              Get.back(); 
            },
            child: Text('No', style: TextStyle(color: colorBlack),),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorTransparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Obx(() {
        return ListView.separated(
          itemCount: favSongController.favSongs.length,
          separatorBuilder: (context, index) => SizedBox(height: 5),
          itemBuilder: (context, index) {
            final favSong = favSongController.favSongs[index];
            return Stack(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(favSong.image,
                          height: 80, width: 80, fit: BoxFit.cover)),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favSong.title,
                          style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          favSong.artist,
                          style: TextStyle(
                              color: secondTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.star_rounded,
                    size: 33,
                    color: iconColor,
                  ),
                  onPressed: () {
                    showDeleteConfirmationDialog(context, favSong);
                  },
                ),
              )
            ]);
          },
        );
      }),
    );
  }
}
