import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class AddTodoPopupCard extends StatelessWidget {
  const AddTodoPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Material(
            color: const Color(0xFFFFFFFF),
            type: MaterialType.card,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                kappHeight30,
                const SizedBox(
                  child: Text(
                    "Select your class",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF565657)),
                  ),
                ),
                kappHeight10,
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      itemCount: 12,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 1.2,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xFFDEDEDE))),
                            child: Text(
                              "12th",
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                kappHeight10,
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
                kappHeight20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
