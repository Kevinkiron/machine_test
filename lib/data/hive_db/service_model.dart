import 'package:hive/hive.dart';

part 'service_model.g.dart';

@HiveType(typeId: 0)
class ServicePersonDataBase extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String profilePicture;

  ServicePersonDataBase({
    required this.id,
    required this.name,
    required this.profilePicture,
  });
}
