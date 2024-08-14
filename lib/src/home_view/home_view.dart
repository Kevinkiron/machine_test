import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/home_bloc/home_bloc.dart';
import 'widgets/all_category_list.dart';
import 'widgets/carousel_banner.dart';
import 'widgets/top_services.dart';

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
              return const CarouselBanner();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: KStyles().reg(
              text: 'All Categories',
              size: 20,
            ),
          ),
          const AllCategoryListView(),
          15.height,
          const TopServicesGridView()
        ],
      ),
    );
  }
}
