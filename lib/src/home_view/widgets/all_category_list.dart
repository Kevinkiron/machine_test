import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/src/profile_view/profile_view.dart';
import 'package:swift_service/utils/global_extension.dart';

import '../../../bloc/home_bloc/home_bloc.dart';
import '../../../data/models/category_model.dart';
import '../../../utils/styles/text_styles.dart';
import '../../cleaning_specialist_view/cleaning_specialist_view.dart';

class AllCategoryListView extends StatelessWidget {
  const AllCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return ListView.builder(
              padding: const EdgeInsets.only(left: 10),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.categoryList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.goNamed(RoutesConstants.cleaningPath,
                        extra: state.categoryList[index].services);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.network(
                            scale: 4,
                            state.categoryList[index].image ?? "",
                          ),
                        ),
                        8.height,
                        KStyles().reg(
                          text: state.categoryList[index].name ?? "",
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
