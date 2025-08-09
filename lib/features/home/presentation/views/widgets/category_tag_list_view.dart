  import 'package:flutter/widgets.dart';
import 'package:hungerway/features/home/presentation/views/widgets/category_tag.dart';

ListView categoryTagListView() {
    return ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return IntrinsicWidth(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: categoryTag(text: "Fast Food"),
                  ),
                );
              },
            );
  }

 