import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/syndicate.dart';
import 'package:worldstate_api_model/src/models/job_model.dart';

part 'syndicate_model.g.dart';

@JsonSerializable()
class SyndicateModel extends Syndicate {
  const SyndicateModel({
    String id,
    DateTime activation,
    DateTime expiry,
    String name,
    bool active,
    @JsonKey(name: 'jobs') List<JobModel> jobModels,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          name: name,
          active: active,
          jobs: jobModels,
        );

  factory SyndicateModel.fromJson(Map<String, dynamic> json) {
    return _$SyndicateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SyndicateModelToJson(this);
}
