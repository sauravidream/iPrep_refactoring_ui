import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // temporary comment
    return  Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      kappHeight50,
                      SizedBox(
                        height: 50,
                        width: 120,
                        child: SvgPicture.asset("assets/images/svg/iPrep.svg"),
                      ),
                      kappHeight15,
                      Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD1E6FF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              5,
                            ),
                          ),
                        ),
                        child: const Text("Free Trail"),
                      ),
                      kappHeight20,
                      const Text(
                        "Days left : 0 Days",
                        style: TextStyle(fontSize: 12),
                      ),
                      kappWidth10,
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                        ),
                        title: Text("Saurav R"),
                        subtitle: Text(
                          "Class 5 | cbsc Board",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      kappHeight15,
                      ElevatedButton(
                        style: ButtonStyle(
                          side: const MaterialStatePropertyAll(
                            BorderSide(
                              color: Color(0xFF3D99FF),
                            ),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 90,
                              vertical: 15,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Upgrade",
                          style: TextStyle(color: Color(0xFF3D99FF)),
                        ),
                      ),
                      kappWidth10,
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Langage"),
                        trailing: Text("English"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Langage"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Langage"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Langage"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Langage"),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text("Logout"),
                      ),
                    ],
                  ),
                ),
                kappHeight40,
               const SizedBox(
                 child:   Text("Version : "),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
