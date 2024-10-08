class TaskModel {
  int? id;
  String title;
  String artist;
  String image;
  bool isCompleted;

  TaskModel({
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

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      title: map['title'],
      artist: map['artist'],
      image: map['image'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}