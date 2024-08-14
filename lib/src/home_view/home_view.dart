import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/data/models/category_model.dart';
import 'package:swift_service/src/cleaning_specialist_view/cleaning_specialist_view.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/home_bloc/home_bloc.dart';
import '../../data/models/top_service_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                child: PageView.builder(
                    controller: PageController(initialPage: 1),
                    onPageChanged: (index) {
                      context.read<HomeBloc>().add(UpdateBannerIndex(index));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Image.asset(
                          'assets/images/banner_${index + 1}.png');
                    }),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: KStyles().reg(
              text: 'All Categories',
              size: 20,
            ),
          ),
          SizedBox(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
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
          ),
          15.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KStyles().reg(
                  text: 'Top Services',
                  size: 20,
                ),
                15.height,
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: topServiceList.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: topServiceList[index].color),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  topServiceList[index].icon,
                                  height: 35,
                                  width: 35,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              ],
                            ),
                            10.height,
                            KStyles().med(
                              text: topServiceList[index].title,
                              size: 16,
                            ),
                          ],
                        ),
                      );
                    }),
                20.height,
              ],
            ),
          )
        ],
      ),
    );
  }
}
