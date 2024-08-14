import 'package:flutter/material.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.height,
        _imageWithEdit(),
        10.height,
        KStyles().med(text: 'Chris Kevin', size: 20),
        Container(
          width: 200,
          height: 50,
          child: Row(
            children: [
              KStyles().reg(text: 'Logout', size: 16),
              Image.asset('assets/icons/logout.png'),
            ],
          ),
        )
      ],
    );
  }

  Center _imageWithEdit() {
    return Center(
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(AppImages.loginImg),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFF009688),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppImages.camera,
                color: Colors.white,
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
