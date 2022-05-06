import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cat_fsatc_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'CatFactModelAdapter')
class CatFactModel extends HiveObject {
  CatFactModel._();
  @HiveField(0)
  String? sId;
  @HiveField(1)
  String? image;
  @HiveField(2)
  int? iV;
  @HiveField(3)
  String? text;
  @HiveField(4)
  String? updatedAt;
  @HiveField(5)
  bool? deleted;
  @HiveField(6)
  String? source;
  @HiveField(7)
  int? sentCount;

  CatFactModel(
      {this.sId,
      this.iV,
      this.text,
      this.updatedAt,
      this.deleted,
      this.image,
      this.source,
      this.sentCount});

  factory CatFactModel.fromJson(Map<String, dynamic> json) =>
      _$CatFactModelFromJson(json);
  Map<String, dynamic> toJson() => _$CatFactModelToJson(this);

  CatFactModel copyWith({
    String? sId,
    String? image,
    int? iV,
    String? text,
    String? updatedAt,
    bool? deleted,
    String? source,
    int? sentCount,
  }) {
    return CatFactModel(
      sId: sId ?? this.sId,
      image: image ?? this.image,
      iV: iV ?? this.iV,
      text: text ?? this.text,
      updatedAt: updatedAt ?? this.updatedAt,
      deleted: deleted ?? this.deleted,
      source: source ?? this.source,
      sentCount: sentCount ?? this.sentCount,
    );
  }
}
