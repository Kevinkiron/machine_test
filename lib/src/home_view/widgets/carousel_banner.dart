import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/home_bloc/home_bloc.dart';

class CarouselBanner extends StatelessWidget {
  const CarouselBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            return Image.asset('assets/images/banner_${index + 1}.png');
          }),
    );
  }
}
