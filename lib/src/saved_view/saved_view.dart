import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/utils/common_widgets/app_button.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../bloc/cleaning_bloc/cleaning_bloc.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CleaningBloc, CleaningState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
        );
      },
    );
  }
}
