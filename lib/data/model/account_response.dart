import 'package:hive/hive.dart';
import 'package:location_tracker_flutter/domain/entities/account_model.dart';

part 'account_response.g.dart';

@HiveType(typeId: 0)
class AccountResponse extends AccountModel {
  @HiveField(0)
  @override
  final String userId;

  @HiveField(1)
  @override
  final String fullName;

  @HiveField(2)
  @override
  final String email;

  @HiveField(3)
  @override
  final String username;

  @HiveField(4)
  @override
  final String profilePic;

  @HiveField(5)
  @override
  final DateTime createdAt;

  AccountResponse({
    required this.userId,
    required this.fullName,
    required this.email,
    required this.username,
    required this.profilePic,
    required this.createdAt,
  }) : super(
    userId: userId,
    fullName: fullName,
    email: email,
    username: username,
    profilePic: profilePic,
    createdAt: createdAt,
  );

   factory AccountResponse.fromModel(AccountModel model) => AccountResponse(
    userId: model.userId,
    fullName: model.fullName,
    email: model.email,
    username: model.username,
    profilePic: model.profilePic,
    createdAt: model.createdAt,
  );

  // Add this if you need to convert back to model
  AccountModel toModel() => AccountModel(
    userId: userId,
    fullName: fullName,
    email: email,
    username: username,
    profilePic: profilePic,
    createdAt: createdAt,
  );

  // Optional: If you need JSON serialization
  factory AccountResponse.fromJson(Map<String, dynamic> json) => AccountResponse(
    userId: json['userId'],
    fullName: json['fullName'],
    email: json['email'],
    username: json['username'],
    profilePic: json['profilePic'],
    createdAt: DateTime.parse(json['createdAt']),
  );

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'fullName': fullName,
    'email': email,
    'username': username,
    'profilePic': profilePic,
    'createdAt': createdAt.toIso8601String(),
  };
}