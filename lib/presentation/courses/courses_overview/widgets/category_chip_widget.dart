import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoryChipWidget extends HookWidget {
  const CategoryChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedCategory = useState(0);
    return SizedBox(
      height: 60,
      child: ListView.separated(
          padding: const EdgeInsets.all(0),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 23),
                child: Container(
                    height: 5, width: 20, color: const Color(0xFF191919)),
              ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ActionChip(
              labelPadding: const EdgeInsets.all(12),
              backgroundColor: Color(
                  index == selectedCategory.value ? 0xFF3200E0 : 0xFF191919),
              label: Text(
                "Text $index",
                style: Theme.of(context).textTheme.headline4,
              ),
              onPressed: () {
                print(useState(index).value);
                // selectedCategory = useState(index);
              },
            );
          }),
    );
  }
}
