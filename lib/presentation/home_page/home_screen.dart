import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/home_page/home_class_selection_pop_up/class_selection_pop_up.dart';
import 'package:library_package/presentation/home_page/home_continue_learning/continue_learning_list_view.dart';
import 'package:library_package/presentation/home_page/home_drawer/drawer_home.dart';
import 'package:library_package/presentation/home_page/home_language_selection_pop_up/language_selection_pop_up.dart';
import 'package:library_package/presentation/home_page/home_preparation_grid/test_preparation_grid.dart';
import 'package:library_package/presentation/home_page/home_project_grid/stem_project_grid.dart';
import 'package:library_package/presentation/home_page/home_subject_grid/home_subject_grid.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<int> lengthOfBooks = [0, 1, 2, 3];
    return Scaffold(
      key: _key,
      backgroundColor: const Color(0xFFFDFDFD),
      drawer: const HomeDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFDFDFD),
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () => _key.currentState!.openDrawer(),
          icon: SvgPicture.asset(
            "assets/images/svg/drawer_icon.svg",
          ),
        ),
        title: Row(
          children: [
            ActionChip(
              pressElevation: 0,
              backgroundColor: const Color.fromRGBO(0, 119, 255, 0.06),
              label: Row(
                children: const [
                  Text(
                    "Class 08 ",
                    style: TextStyle(
                      color: Color(
                        0xFF0077FF,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(
                      0xFF0077FF,
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoDialogRoute(
                    transitionDuration: const Duration(seconds: 0),
                    builder: (context) => const AddTodoPopupCard(),
                    context: context,
                  ),
                );
              },
            ),
            kappWidth10,
            ActionChip(
              pressElevation: 0,
              backgroundColor: const Color.fromRGBO(0, 119, 255, 0.06),
              label: Row(
                children: const [
                  Text(
                    "Eng",
                    style: TextStyle(
                      color: Color(
                        0xFF0077FF,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(
                      0xFF0077FF,
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoDialogRoute(
                    transitionDuration: const Duration(seconds: 0),
                    builder: (context) => const LangaugeTodoPopupCard(),
                    context: context,
                  ),
                );
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/svg/bell_icon.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Your",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: SizedBox(width: 5),
                      ),
                      TextSpan(
                        text: "Subjects",
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                kappHeight20,
                const HomeSubjectGrid(),
                kappHeight20,
                RichText(
                  text: const TextSpan(
                    text: "Your",
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: SizedBox(width: 5),
                      ),
                      TextSpan(
                        text: "Test Preparations",
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                kappHeight20,
                const TestPreparationGrid(),
                kappHeight20,
                const Text(
                  "Books Library",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kappHeight20,
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.center,
                  spacing: 8.0,
                  runSpacing: 16.0,
                  children: [
                    for (var i in lengthOfBooks)
                      Container(
                        height: 65,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFDEDEDE)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            kappWidth10,
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            kappWidth10,
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Math"),
                                  Text("12 Books")
                                ],
                              ),
                            ),
                            kappWidth10,
                          ],
                        ),
                      ),
                  ],
                ),
                kappHeight20,
                const Text(
                  "STEM Projects and Practicals",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kappHeight20,
                const StemProjectGrid(),
                kappHeight20,
                const Text(
                  "Continue Learning",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kappHeight20,
                const ContinueLearningListView(),
                kappHeight30,
                Stack(
                  children: [
                    Container(
                      height: 200,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 160,
                        width: size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/png/gift_pic.png",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const Text(
                      "Share iPrep with your friends",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    const Positioned(
                      top: 30,
                      child: Text(
                        "Earn scratch cards with guranteed cash rewards",
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 65,
                      child: ActionChip(
                        padding: const EdgeInsets.only(
                            right: 16, left: 16, top: 12, bottom: 12),
                        // pressElevation: 0,
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            width: .5, color: Color(0xFF0070FF)),
                        label: const Text(
                          "Share",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.note),
          title: const Text("Home"),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.report_gmailerrorred),
          title: const Text("Report"),
        ),
      ]),
    );
  }
}
