import 'package:get/get.dart';
import 'package:music_library/models/fav_song_models.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FavSongController extends GetxController {
  static Database? _db;

  var favSongs = <FavSongModel>[].obs;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }

  Future<Database> initDB() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'task_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE favsong(
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            title TEXT, 
            artist TEXT, 
            image TEXT, 
            isCompleted INTEGER
          )
        ''');
      },
    );
  }

  // Toggle Favorite Song
  Future<void> toggleFavSong(FavSongModel favSong) async {
    if (isFavSong(favSong)) {
      await deleteFavSong(favSong);
    } else {
      await addFavSong(favSong);
    }
  }

  // Add Favorite Song
  Future<int> addFavSong(FavSongModel favSong) async {
    var dbClient = await db;
    int result = await dbClient!.insert('favsong', favSong.toMap());
    loadFavSong();
    return result;
  }

  // Load Favorite Songs
  Future<void> loadFavSong() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('favsong');
    favSongs.assignAll(queryResult.map((data) => FavSongModel.fromMap(data)).toList());
  }

  // Delete Favorite Song
  Future<void> deleteFavSong(FavSongModel favSong) async {
    var dbClient = await db;
    await dbClient!.delete('favsong', where: 'title = ? AND artist = ?', whereArgs: [favSong.title, favSong.artist]);
    loadFavSong();
  }

  // Check if a song is a favorite
  bool isFavSong(FavSongModel song) {
    return favSongs.any((fav) => fav.title == song.title && fav.artist == song.artist);
  }
}