class FavSongModel {
  int? id;
  String title;
  String artist;
  String image;
  bool isCompleted;

  FavSongModel({
    this.id,
    required this.title,
    required this.artist,
    required this.image,
    this.isCompleted = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'title' : title,
      'artist' : artist,
      'image' : image, 
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  factory FavSongModel.fromMap(Map<String, dynamic> map) {
    return FavSongModel(
      id: map['id'],
      title: map['title'],
      artist: map['artist'],
      image: map['image'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}