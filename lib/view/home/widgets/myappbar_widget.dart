import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// AppBar
class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

// /// My App Bar
// class MyAppBar extends StatefulWidget with PreferredSizeWidget {
//   MyAppBar({Key? key,
//     required this.drawerKey,
//   }) : super(key: key);
//   GlobalKey<SliderDrawerState> drawerKey;

//   @override
//   State<MyAppBar> createState() => _MyAppBarState();

//   @override
//   Size get preferredSize => const Size.fromHeight(100);
// }

// class _MyAppBarState extends State<MyAppBar>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   bool isDrawerOpen = false;

//   @override
//   void initState() {
//     super.initState();

//     controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   /// toggle for drawer and icon aniamtion
//   void toggle() {
//     setState(() {
//       isDrawerOpen = !isDrawerOpen;
//       if (isDrawerOpen) {
//         controller.forward();
//         widget.drawerKey.currentState!.openSlider();
//       } else {
//         controller.reverse();
//         widget.drawerKey.currentState!.closeSlider();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var base = BaseWidget.of(context).dataStore.box;
//     return SizedBox(
//       width: double.infinity,
//       height: 132,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             /// Animated Icon - Menu & Close
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: IconButton(
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   icon: AnimatedIcon(
//                     icon: AnimatedIcons.menu_close,
//                     progress: controller,
//                     size: 40,
//                   ),
//                   onPressed: toggle),
//             ),

//             /// Delete Icon
//             Padding(
//               padding: const EdgeInsets.only(right: 20),
//               child: GestureDetector(
//                 onTap: () {
//                   base.isEmpty
//                       ? warningNoTask(context)
//                       : deleteAllTask(context);
//                 },
//                 child: const Icon(
//                   CupertinoIcons.trash,
//                   size: 40,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
