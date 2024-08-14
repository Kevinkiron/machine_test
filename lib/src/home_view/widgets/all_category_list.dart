import 'package:flutter/material.dart';
import 'package:swift_service/utils/global_extension.dart';

import '../../../data/models/category_model.dart';
import '../../../utils/styles/text_styles.dart';
import '../../cleaning_specialist_view/cleaning_specialist_view.dart';

class AllCategoryListView extends StatelessWidget {
  const AllCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 10),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CleaningSpecialistView()),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: categories[index].color,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        scale: 4,
                        categories[index].image,
                      ),
                    ),
                    8.height,
                    KStyles().reg(
                      text: categories[index].title,
                      size: 14,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
