// import 'package:flutter/material.dart';
// import 'package:reorderable_tabbar/reorderable_tabbar.dart';
//
//
// class ReorderableTabBarPage extends StatefulWidget {
//   const ReorderableTabBarPage({Key? key}) : super(key: key);
//
//   @override
//   State<ReorderableTabBarPage> createState() => _ReorderableTabBarPageState();
// }
//
// extension StringExt on String {
//   Text get text => Text(this);
//   Widget tab(int index) {
//     return Tab(
//       text: "Tab $this",
//     );
//   }
// }
//
// class _ReorderableTabBarPageState extends State<ReorderableTabBarPage> {
//   PageController pageController = PageController();
//
//   List<String> tabs = [
//     "1",
//     "2",
//     "3",
//     "4",
//   ];
//
//   bool isScrollable = false;
//   bool tabSizeIsLabel = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: tabs.length,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey,
//           elevation: 0,
//           title: const Text("Reorderable TabBar"),
//           bottom: ReorderableTabBar(
//             buildDefaultDragHandles: false,
//             tabs: tabs.map((e) => e.tab(tabs.indexOf(e))).toList(),
//             indicatorSize: tabSizeIsLabel ? TabBarIndicatorSize.label : null,
//             isScrollable: isScrollable,
//             reorderingTabBackgroundColor: Colors.black45,
//             indicatorWeight: 5,
//             tabBorderRadius: const BorderRadius.vertical(
//               top: Radius.circular(8),
//             ),
//             onReorder: (oldIndex, newIndex) async {
//               String temp = tabs.removeAt(oldIndex);
//               tabs.insert(newIndex, temp);
//               setState(() {});
//             },
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () {
//             tabs.add((tabs.length + 1).toString());
//             setState(() {});
//           },
//         ),
//         body: TabBarView(
//           children: tabs.map((e) {
//             return Center(
//               child: ("$e. Page").text,
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }