// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fsatc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatFactModelAdapter extends TypeAdapter<CatFactModel> {
  @override
  final int typeId = 0;

  @override
  CatFactModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatFactModel(
      sId: fields[0] as String?,
      iV: fields[2] as int?,
      text: fields[3] as String?,
      updatedAt: fields[4] as String?,
      deleted: fields[5] as bool?,
      image: fields[1] as String?,
      source: fields[6] as String?,
      sentCount: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CatFactModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.sId)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.iV)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.deleted)
      ..writeByte(6)
      ..write(obj.source)
      ..writeByte(7)
      ..write(obj.sentCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatFactModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatFactModel _$CatFactModelFromJson(Map<String, dynamic> json) => CatFactModel(
      sId: json['sId'] as String?,
      iV: json['iV'] as int?,
      text: json['text'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deleted: json['deleted'] as bool?,
      image: json['image'] as String?,
      source: json['source'] as String?,
      sentCount: json['sentCount'] as int?,
    );

Map<String, dynamic> _$CatFactModelToJson(CatFactModel instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'image': instance.image,
      'iV': instance.iV,
      'text': instance.text,
      'updatedAt': instance.updatedAt,
      'deleted': instance.deleted,
      'source': instance.source,
      'sentCount': instance.sentCount,
    };
