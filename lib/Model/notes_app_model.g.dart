// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_app_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotesAppModelAdapter extends TypeAdapter<NotesAppModel> {
  @override
  final int typeId = 0;

  @override
  NotesAppModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotesAppModel(
      title: fields[0] as String,
      content: fields[1] as String,
      date: fields[2] as String,
      color: fields[3] as ColorModel,
    );
  }

  @override
  void write(BinaryWriter writer, NotesAppModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotesAppModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
