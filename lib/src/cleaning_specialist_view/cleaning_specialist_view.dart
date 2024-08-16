import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/cleaning_bloc/cleaning_bloc.dart';
import '../../data/models/category_model/category_model.dart';
import '../../utils/theme/app_colors.dart';

class CleaningSpecialistView extends StatelessWidget {
  final List<Service>? serviceList;
  const CleaningSpecialistView({super.key, this.serviceList});
  @override
  Widget build(BuildContext context) {
    log(serviceList.toString());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        leading: GestureDetector(
          onTap: () {
            context.pushNamed(RoutesConstants.homeRoute);
          },
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.white,
            child: Image.asset(
              'assets/icons/back.png',
              width: 40,
              height: 40,
            ),
          ),
        ),
        title:
            KStyles().reg(text: serviceList?.firstOrNull?.name ?? "", size: 20),
        centerTitle: true,
      ),
      body: BlocBuilder<CleaningBloc, CleaningState>(
        builder: (context, state) {
          return Column(
                  children: [
                    25.height,
                    _categoryHead(state, context),
                    20.height,
                    _listViewSection(state),
                  ],
                );
        },
      ),
    );
  }

  Expanded _listViewSection(CleaningState state) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: List.generate(
            serviceList?.firstOrNull?.servicePeople?.length ?? 0, (index) {
          final item = serviceList?.firstOrNull?.servicePeople?[index];

          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE6E6E8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item?.profilePicture ?? '',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    10.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KStyles().reg(
                            text: item?.name ?? "",
                            size: 16,
                            color: AppColors.black,
                          ),
                          20.height,
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: const Color(0xFFfef8ef),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.star,
                                    color: Color(0xFFFF9800), size: 16),
                                4.width,
                                KStyles().reg(
                                  text:
                                      "${item?.avgRating.toString() ?? ''} (${item?.reviewCount.toString() ?? ''})",
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
                      onTap: () {},
                      child: const Icon(
                        Icons.bookmark_border,
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
    );
  }

  SingleChildScrollView _categoryHead(
      CleaningState state, BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(state.category.length, (index) {
          return GestureDetector(
            onTap: () {
              context.read<CleaningBloc>().add(ChangeCategoryEvent(index));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                : state.filteredItems.length.toString(),
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
    );
  }
}
