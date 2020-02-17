import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';
import 'reward.dart';

part 'invasions.g.dart';

@JsonSerializable()
class Invasion extends WorldstateObject {
  const Invasion({
    String id,
    DateTime activation,
    DateTime expiry,
    this.node,
    this.desc,
    this.attackingFaction,
    this.defendingFaction,
    this.eta,
    this.vsInfestation,
    this.completed,
    this.completion,
    this.count,
    this.attackerReward,
    this.defenderReward,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Invasion.fromJson(Map<String, dynamic> json) =>
      _$InvasionFromJson(json);

  final String node, desc, attackingFaction, defendingFaction, eta;
  final bool vsInfestation, completed;
  final num completion, count;
  final Reward attackerReward, defenderReward;

  Map<String, dynamic> toJson() => _$InvasionToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([
      node,
      desc,
      attackingFaction,
      defendingFaction,
      eta,
      vsInfestation,
      completed,
      completion,
      count,
      attackerReward,
      defenderReward,
    ]);
}
