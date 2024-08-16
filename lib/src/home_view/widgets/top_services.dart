import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_service/utils/global_extension.dart';

import '../../../bloc/home_bloc/home_bloc.dart';
import '../../../data/models/top_service_model.dart';
import '../../../utils/styles/text_styles.dart';

class TopServicesGridView extends StatelessWidget {
  const TopServicesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KStyles().reg(
                text: 'Top Services',
                size: 20,
              ),
              15.height,
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.topRatedList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        color: topServiceList[index].color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                state.topRatedList[index].image ?? '',
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
                          KStyles().reg(
                            text: state.topRatedList[index].name ?? "",
                            size: 16,
                          ),
                        ],
                      ),
                    );
                  }),
              20.height,
            ],
          );
        },
      ),
    );
  }
}
