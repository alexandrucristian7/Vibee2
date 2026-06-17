import 'package:flutter_test/flutter_test.dart';
import 'package:vibee/features/profile/domain/vibe_dna.dart';

void main() {
  group('VibeDNA', () {
    test('should create VibeDNA from json', () {
      final json = {
        'currentObjective': 'Networking',
        'interestTags': ['tech', 'music'],
        'drinkPreference': 'Coffee',
        'baselineEnergy': 4,
        'socialBattery': 80,
      };

      final vibeDna = VibeDNA.fromJson(json);

      expect(vibeDna.currentObjective, 'Networking');
      expect(vibeDna.interestTags, ['tech', 'music']);
      expect(vibeDna.baselineEnergy, 4);
    });

    test('should use default values', () {
      final vibeDna = VibeDNA(
        currentObjective: 'Chill',
        interestTags: [],
        drinkPreference: 'Water',
      );

      expect(vibeDna.baselineEnergy, 3);
      expect(vibeDna.socialBattery, 100);
    });
  });
}
