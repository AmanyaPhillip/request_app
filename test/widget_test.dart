// Unit tests for the shared app data extracted during the refactor.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:request_luxo_app/data/app_data.dart';

void main() {
  group('kBuildings', () {
    test('contains the expected projects', () {
      expect(kBuildings, contains('LUXO'));
      expect(kBuildings, contains('Frontenac'));
    });

    test('has the full set of buildings', () {
      expect(kBuildings.length, 10);
    });
  });

  group('serviceIcon', () {
    test('returns specific icons for known services', () {
      expect(serviceIcon('Plumbing'), Icons.plumbing);
      expect(serviceIcon('Security'), Icons.security);
    });

    test('falls back to a default icon for unknown services', () {
      expect(serviceIcon('Something else'), Icons.home_repair_service);
    });
  });
}
