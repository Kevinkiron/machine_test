import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(55), child: _appBar()),
          body: state.pages[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<BottomNavBloc>().add(SelectBottomBar(index: index));
            },
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: KStyles().light(text: '', size: 10).style,
            selectedFontSize: 12,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                activeIcon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                activeIcon: Icon(Icons.bookmark),
                label: "Saved",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_circle_outlined),
                activeIcon: Icon(Icons.home),
                label: "Cart",
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 4,
      shadowColor: Colors.blue,
      title: Row(
        children: [
          const CircleAvatar(
            minRadius: 20,
            child: Icon(
              Icons.agriculture,
            ),
          ),
          10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KStyles().light(text: 'Welcome Back!', size: 12),
              KStyles().med(text: 'Chris Kevin', size: 14),
            ],
          )
        ],
      ),
    );
  }
}
