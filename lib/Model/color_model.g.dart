// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ColorModelAdapter extends TypeAdapter<ColorModel> {
  @override
  final int typeId = 1;

  @override
  ColorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ColorModel(
      color: fields[0] as Color,
    );
  }

  @override
  void write(BinaryWriter writer, ColorModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
