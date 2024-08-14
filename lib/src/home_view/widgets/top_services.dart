import 'package:flutter/material.dart';
import 'package:swift_service/utils/global_extension.dart';

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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                      KStyles().reg(
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
    );
  }
}
