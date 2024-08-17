import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/home_bloc/home_bloc.dart';
import '../../utils/theme/app_colors.dart';
import 'widgets/all_category_list.dart';
import 'widgets/carousel_banner.dart';
import 'widgets/top_services.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.load
            ? const Center(
                child: SpinKitChasingDots(
                  size: 40,
                  color: AppColors.primary,
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CarouselBanner(),
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
      },
    );
  }
}
