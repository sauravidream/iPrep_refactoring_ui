import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class LangaugeTodoPopupCard extends StatelessWidget {
  const LangaugeTodoPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Material(
          color: const Color(0xFFFFFFFF),
          clipBehavior: Clip.antiAlias,
          type: MaterialType.card,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: SingleChildScrollView(
            child: Padding(
              //first
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kappHeight5,
                  const SizedBox(
                    child: Text(
                      "Choose your preferred langauge",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF565657)),
                    ),
                  ),
                  kappHeight30,
                  ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1, color: Color(0xFFDEDEDE)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 22,
                        ),
                        title: Text("English is my preferred language",style: TextStyle(fontSize: 12),),
                        trailing: CircleAvatar(
                          radius: 15,
                          child: Icon(Icons.check,size: 15,),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 2,
                  ),
                  kappHeight15,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
