import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class AddTodoPopupCard extends StatelessWidget {
  const AddTodoPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Material(
          color: const Color(0xFFFFFFFF),
          type: MaterialType.card,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kappHeight5,
                  const SizedBox(
                    child: Text(
                      "Select your class",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF565657)),
                    ),
                  ),
                  kappWidth5,
                  GridView.builder(
                      itemCount: 12,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 6,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        return ActionChip(
                          pressElevation: 0,
                          padding: const EdgeInsets.symmetric(
                              vertical: 22, horizontal: 10),
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFFDEDEDE)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          label: const Text(
                            "12th",
                            style: TextStyle(
                                color: Color(0xFF212121),
                                fontWeight: FontWeight.w200),
                          ),
                          onPressed: () {},
                        );
                      }),
                  kappHeight15,
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFFF1F5F9),
                      ),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 64, vertical: 12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
