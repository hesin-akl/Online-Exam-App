import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entity/subject_entity.dart' show SubjectEntity;

part 'subject_dto.g.dart';

@JsonSerializable()
class SubjectDto {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @JsonKey(name: "subjects")
  final List<Subjects>? subjects;

  SubjectDto ({
    this.message,
    this.metadata,
    this.subjects,
  });

  factory SubjectDto.fromJson(Map<String, dynamic> json) {
    return _$SubjectDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SubjectDtoToJson(this);
  }

}

@JsonSerializable()
class Metadata {
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @JsonKey(name: "numberOfPages")
  final int? numberOfPages;
  @JsonKey(name: "limit")
  final int? limit;

  Metadata ({
    this.currentPage,
    this.numberOfPages,
    this.limit,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return _$MetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MetadataToJson(this);
  }
}

@JsonSerializable()
class Subjects {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "createdAt")
  final String? createdAt;

  Subjects ({
    this.Id,
    this.name,
    this.icon,
    this.createdAt,
  });

  factory Subjects.fromJson(Map<String, dynamic> json) {
    return _$SubjectsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SubjectsToJson(this);
  }
  SubjectEntity toEntity() =>
      SubjectEntity(id: Id, name: name, image: icon, createdAt: createdAt);
}


