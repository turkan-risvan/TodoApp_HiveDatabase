import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hivetodoodev/view/tasks/task_view.dart';

/// Floating Action Button
class FAB extends StatefulWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  State<FAB> createState() => _FABState();
}

class _FABState extends State<FAB> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => TaskView(
              taskControllerForSubtitle: null,
              taskControllerForTitle: null,
              task: null,
            ),
          ),
        );
      },
      child: Material(
        borderRadius: BorderRadius.circular(35),
        elevation: 10,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xff865DFF),
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Center(
              child: Icon(
            Icons.add,
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}
