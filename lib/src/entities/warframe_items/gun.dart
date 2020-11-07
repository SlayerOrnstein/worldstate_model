import 'package:warframestat_api_models/entities.dart';

import 'base_item.dart';
import 'component.dart';

class Gun extends BaseItem {
  const Gun({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool isTradable,
    String wikiaThumbnail,
    String wikiaUrl,
    List<Patchlog> patchlogs,
    this.damagePerShot,
    this.magazineSize,
    this.reloadTime,
    this.trigger,
    this.accuracy,
    this.criticalChance,
    this.criticalMultiplier,
    this.procChance,
    this.fireRate,
    this.slot,
    this.noise,
    this.sentinel,
    this.masteryReq,
    this.omegaAttenuation,
    this.buildPrice,
    this.buildTime,
    this.skipBuildTime,
    this.buildQuantity,
    this.consumeOnBuild,
    List<Component> components,
    this.damageTypes,
    this.marketCost,
    this.polarites,
    this.tags,
    this.vaulted,
    this.disposition,
    this.multishot,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          isTradable: isTradable,
          components: components,
          patchlogs: patchlogs,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
        );

  final List<double> damagePerShot;
  final int magazineSize;
  final double reloadTime;
  final String trigger;
  final double accuracy;
  final double criticalChance, criticalMultiplier, procChance;
  final double fireRate;
  final int slot;
  final String noise;
  final bool sentinel;
  final int masteryReq;
  final double omegaAttenuation;
  final int buildPrice, buildTime, skipBuildTime, buildQuantity;
  final bool consumeOnBuild;
  final Map<String, double> damageTypes;
  final int marketCost;
  final List<String> polarites, tags;
  final bool vaulted;
  final int disposition;
  final double multishot;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        damagePerShot,
        magazineSize,
        reloadTime,
        trigger,
        accuracy,
        criticalChance,
        criticalMultiplier,
        procChance,
        fireRate,
        slot,
        noise,
        sentinel,
        masteryReq,
        omegaAttenuation,
        buildPrice,
        buildTime,
        skipBuildTime,
        buildQuantity,
        consumeOnBuild,
        components,
        damageTypes,
        marketCost,
        polarites,
        tags,
        vaulted,
        disposition,
        multishot,
      ]);
  }
}