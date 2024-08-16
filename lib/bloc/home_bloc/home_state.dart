part of 'home_bloc.dart';

enum Status { initial, loading, failure, success }

class HomeState extends Equatable {
  final Status status;
  final int currentIndex;
  final List<String> banner;
  final List<BannerModel> bannerList;
  final List<CategoryModel> categoryList;

  const HomeState(
      {this.currentIndex = 0,
      this.status = Status.initial,
      this.bannerList = const <BannerModel>[],
      this.categoryList = const <CategoryModel>[],
      this.banner = const <String>[
        'assets/images/banner_1.png',
        'assets/images/banner_2.png',
        'assets/images/banner_3.png',
      ]});

  HomeState copyWith({
    int? currentIndex,
    List<BannerModel>? bannerList,
    List<CategoryModel>? categoryList,
    Status? status,
  }) {
    return HomeState(
      currentIndex: currentIndex ?? this.currentIndex,
      bannerList: bannerList ?? this.bannerList,
      categoryList: categoryList ?? this.categoryList,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        currentIndex,
        status,
        bannerList,
        categoryList,
      ];
}
