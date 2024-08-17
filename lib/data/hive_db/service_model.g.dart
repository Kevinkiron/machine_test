// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServicePersonDataBaseAdapter extends TypeAdapter<ServicePersonDataBase> {
  @override
  final int typeId = 0;

  @override
  ServicePersonDataBase read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServicePersonDataBase(
      id: fields[0] as String,
      name: fields[1] as String,
      profilePicture: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ServicePersonDataBase obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.profilePicture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServicePersonDataBaseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
