import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/features/profile/domain/vibe_dna.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String phoneNumber,
    String? displayName,
    String? photoUrl,
    VibeDNA? vibeDna,
    @Default(false) bool isPremium,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
}
