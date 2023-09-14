class AbilitiesModel {
  final String slot;
  final String displayName;
  final String description;
  final String displayIcon;

  AbilitiesModel({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory AbilitiesModel.fromJson(Map<String, dynamic> json) {
    return AbilitiesModel(
      slot: json['slot'] ?? '',
      displayName: json['displayName'] ?? '',
      description: json['description'] ?? '',
      displayIcon: json['displayIcon'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      'displayName': displayName,
      'description': description,
      'displayIcon': displayIcon,
    };
  }
}
