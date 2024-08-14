import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/cleaning_bloc/cleaning_bloc.dart';
import '../../utils/theme/app_colors.dart';

class CleaningSpecialistView extends StatelessWidget {
  const CleaningSpecialistView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_sharp)),
        title: KStyles().med(text: 'Cleaning', size: 20),
        centerTitle: true,
      ),
      body: BlocBuilder<CleaningBloc, CleaningState>(
        builder: (context, state) {
          return Column(
            children: [
              25.height,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(state.category.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        context
                            .read<CleaningBloc>()
                            .add(ChangeCategoryEvent(index));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                          color: state.selectedIndex == index
                              ? AppColors.primary
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: state.selectedIndex == index
                                ? AppColors.primary
                                : const Color(0xFFE6E6E8),
                          ),
                        ),
                        child: Row(
                          children: [
                            KStyles().reg(
                                text: state.category[index],
                                size: 16,
                                color: state.selectedIndex == index
                                    ? AppColors.white
                                    : AppColors.black),
                            4.width,
                            state.selectedIndex == index
                                ? Container(
                                    padding: const EdgeInsets.all(4.0),
                                    decoration: const BoxDecoration(
                                      color: AppColors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: KStyles().reg(
                                      text: index == 0
                                          ? context
                                              .read<CleaningBloc>()
                                              .allItems
                                              .length
                                              .toString()
                                          : state.filteredItems.length
                                              .toString(),
                                      size: 12,
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              25.height,
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(state.filteredItems.length, (index) {
                    final item = state.filteredItems[index];

                    return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 15),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 5),
                            shape: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE6E6E8)),
                                borderRadius: BorderRadius.circular(10)),
                            title: KStyles().reg(text: item.name, size: 16),
                            subtitle: Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.orange, size: 16),
                                4.width,
                                KStyles().reg(text: item.rating, size: 16),
                              ],
                            ),
                            trailing: Icon(item.saved
                                ? Icons.bookmark
                                : Icons.bookmark_border),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                AppImages.staffImage,
                                width: 60,
                                height: 80,
                              ),
                            ),
                          ),
                        ));
                  }),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
