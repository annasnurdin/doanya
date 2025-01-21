// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doa.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoaAdapter extends TypeAdapter<Doa> {
  @override
  final int typeId = 1;

  @override
  Doa read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doa(
      namaDoa: fields[1] as String,
      arabDoa: fields[2] as String,
      bacaDoa: fields[4] as String,
      latinDoa: fields[3] as String,
      id: fields[0] as int,
    )..isFavourite = fields[5] as bool;
  }

  @override
  void write(BinaryWriter writer, Doa obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.namaDoa)
      ..writeByte(2)
      ..write(obj.arabDoa)
      ..writeByte(3)
      ..write(obj.latinDoa)
      ..writeByte(4)
      ..write(obj.bacaDoa)
      ..writeByte(5)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
