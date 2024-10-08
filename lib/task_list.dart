import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_library/controller/task_controller.dart';
import 'package:music_library/widgets/my_color_list.dart';

class TaskList extends StatelessWidget {
  final TaskController taskController = Get.find<TaskController>();

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
          itemCount: taskController.tasks.length,
          separatorBuilder: (context, index) => SizedBox(height: 5),
          itemBuilder: (context, index) {
            final task = taskController.tasks[index];
            return Stack(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(task.image,
                          height: 80, width: 80, fit: BoxFit.cover)),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          task.title,
                          style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          task.artist,
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
                    taskController.deleteTask(task.id!);
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
