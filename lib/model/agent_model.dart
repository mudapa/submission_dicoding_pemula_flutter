import 'abilities_model.dart';
import 'role_model.dart';

class AgentModel {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String bustPortrait;
  final String background;
  RoleModel roles;
  List<AbilitiesModel> abilities;

  AgentModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.bustPortrait,
    required this.background,
    required this.roles,
    required this.abilities,
  });

  factory AgentModel.fromJson(Map<String, dynamic> json) {
    return AgentModel(
      uuid: json['uuid'] ?? '',
      displayName: json['displayName'] ?? '',
      description: json['description'] ?? '',
      displayIcon: json['displayIcon'] ?? '',
      bustPortrait: json['bustPortrait'] ?? '',
      background: json['background'] ?? '',
      roles: RoleModel.fromJson(json['role'] ?? {}),
      abilities: (json['abilities'] as List?)
              ?.map((ability) => AbilitiesModel.fromJson(ability))
              .toList() ??
          [],
    );
  }
}
