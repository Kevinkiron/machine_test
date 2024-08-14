import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import 'bloc/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'utils/styles/text_styles.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: state.selectedIndex == 0
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(55), child: _appBar())
              : null,
          body: state.pages[state.selectedIndex],
          bottomNavigationBar: _bottomNav(state, context),
        );
      },
    );
  }

  BottomNavigationBar _bottomNav(BottomNavState state, BuildContext context) {
    return BottomNavigationBar(
      currentIndex: state.selectedIndex,
      onTap: (index) {
        context.read<BottomNavBloc>().add(SelectBottomBar(index: index));
      },
      backgroundColor: Colors.white,
      iconSize: 25,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: KStyles().reg(text: '', size: 12).style,
      unselectedLabelStyle: KStyles().reg(text: '', size: 12).style,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: const Color(0xFF727171),
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          activeIcon: Icon(Icons.bookmark),
          label: "Saved",
        ),
        BottomNavigationBarItem(
          icon: ClipRRect(
            child: Image.asset(
              'assets/icons/profile.png',
              width: 24,
              height: 24,
            ),
          ),
          activeIcon: Image.asset(
            'assets/icons/active_profile.png',
            width: 24,
            height: 24,
          ),
          label: "Profile",
        ),
      ],
    );
  }

  Widget _appBar() {
    return AppBar(
      surfaceTintColor: AppColors.white,
      leadingWidth: 400,
      leading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          20.width,
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              AppImages.loginImg,
            ),
          ),
          10.width,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KStyles().light(text: 'Welcome Back!', size: 12),
              KStyles().med(text: 'Chris Kevin', size: 14),
            ],
          )
        ],
      ),
      backgroundColor: AppColors.white,
      elevation: 4,
      shadowColor: AppColors.primary.withOpacity(0.4),
    );
  }
}
