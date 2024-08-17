import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/utils/common_widgets/app_button.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/cleaning_bloc/cleaning_bloc.dart';
import '../../utils/theme/app_colors.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CleaningBloc, CleaningState>(
      builder: (context, state) {
        return state.savedServices.isEmpty
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    30.height,
                    KStyles().reg(text: 'Saved', size: 20),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child: Image.asset(AppImages.savedEmpty),
                          ),
                          KStyles().reg(text: 'No Saved Services', size: 20),
                          20.height,
                          const AppButton(text: 'Return Home'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  30.height,
                  Expanded(
                    child: Center(
                      child: KStyles().reg(text: 'Saved', size: 20),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children:
                          List.generate(state.savedServices.length, (index) {
                        final item = state.savedServices[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFE6E6E8)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      item.profilePicture,
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  10.width,
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        KStyles().reg(
                                          text: item.name,
                                          size: 16,
                                          color: AppColors.black,
                                        ),
                                        20.height,
                                        Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFfef8ef),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(Icons.star,
                                                  color: Color(0xFFFF9800),
                                                  size: 16),
                                              4.width,
                                              KStyles().reg(
                                                text:
                                                    // "${item?.avgRating.toString() ?? ''} (${item?.reviewCount.toString() ?? ''})",
                                                    '',
                                                size: 14,
                                                color: AppColors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context
                                          .read<CleaningBloc>()
                                          .add(RemoveBookmarkEvent(item.id));
                                    },
                                    child: const Icon(
                                      Icons.bookmark,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              );
      },
    );
  }
}
