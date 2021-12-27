// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HeroAdapter extends TypeAdapter<Hero> {
  @override
  final int typeId = 2;

  @override
  Hero read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hero(
      description: fields[2] as String,
      name: fields[0] as String,
      path: fields[1] as String,
      id: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Hero obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.path)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
