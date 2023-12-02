class UserModel {
  final String name;
  final String? description;
  final int stars;
  final String ownerAvatar;

  UserModel({
    required this.name,
    required this.description,
    required this.stars,
    required this.ownerAvatar,
  });

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'] ?? 'Full Name',
        description: json['description'] ?? "No description available",
        stars: json['stargazers_count'] ?? 0,
        ownerAvatar: json['owner']['avatar_url'] ??
            "https://static.vecteezy.com/system/resources/previews/002/002/403/original/man-with-beard-avatar-character-isolated-icon-free-vector.jpg");
  }
}
