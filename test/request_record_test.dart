import 'package:flutter_test/flutter_test.dart';
import 'package:request_luxo_app/models/request_record.dart';

void main() {
  test('RequestRecord stores all its fields', () {
    final record = RequestRecord(
      title: 'Mr.',
      firstName: 'Phillip',
      lastName: 'Amanya',
      phone: '5551234',
      email: 'a@b.c',
      project: 'LUXO',
      unitNumber: '101',
      services: ['Plumbing'],
      submissionDate: DateTime(2026, 6, 25),
      status: 'Success',
    );

    expect(record.project, 'LUXO');
    expect(record.services, ['Plumbing']);
    expect(record.status, 'Success');
    expect(record.imagePath, isNull);
  });
}
