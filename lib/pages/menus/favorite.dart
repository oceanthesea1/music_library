import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_library/controller/task_controller.dart';
import 'package:music_library/task_list.dart';
import 'package:music_library/widgets/my_color_list.dart';
import 'package:music_library/widgets/my_list.dart';

class Favorite extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());
  Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    taskController.loadTasks();
    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorBackground,
        title: Text(
          'Favorite Page',
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
          child: Column(children: [
            SizedBox(
              height: 15.0,
            ),
            Expanded(child: TaskList()),
          ]),
        ),
      ),
    );
  }
}
