import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class ContinueLearningListView extends StatelessWidget {
  const ContinueLearningListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 35,
        );
      },
      itemBuilder: (context, index) {
        return SizedBox(
          height: 90,
          child: Row(
            children: [
              Container(
                height: 90,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              kappWidth10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Introduction - Knowing our sections in Maths and improve",
                      maxLines: 2,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text("03:24"),
                            kappWidth5,
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.grey.shade300,
                            ),
                            kappWidth5,
                            const Text("Physics"),
                          ],
                        ),
                        kappHeight10,
                        Container(
                          height: 4.5,
                          width: 160,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: LinearProgressIndicator(
                            minHeight: 3,
                            value: .7,
                            backgroundColor: Colors.grey.shade300,
                            color: const Color(0xFF008DCE),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
