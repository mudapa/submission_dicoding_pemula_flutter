class RoleModel {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;

  RoleModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      uuid: json['uuid'] ?? '',
      displayName: json['displayName'] ?? '',
      description: json['description'] ?? '',
      displayIcon: json['displayIcon'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'displayName': displayName,
      'description': description,
      'displayIcon': displayIcon,
    };
  }
}
