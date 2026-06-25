import 'package:hive/hive.dart';

/// A single submitted service request, persisted with Hive.
@HiveType(typeId: 0)
class RequestRecord extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String firstName;

  @HiveField(2)
  final String lastName;

  @HiveField(3)
  final String phone;

  @HiveField(4)
  final String email;

  @HiveField(5)
  final String project;

  @HiveField(6)
  final String unitNumber;

  @HiveField(7)
  final List<String> services;

  @HiveField(8)
  final DateTime submissionDate;

  @HiveField(9)
  final String status;

  @HiveField(10)
  final String? imagePath;

  RequestRecord({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.project,
    required this.unitNumber,
    required this.services,
    required this.submissionDate,
    required this.status,
    this.imagePath,
  });
}

/// Hand-written Hive adapter. (Slated to be replaced by build_runner codegen.)
class RequestRecordAdapter extends TypeAdapter<RequestRecord> {
  @override
  final int typeId = 0;

  @override
  RequestRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RequestRecord(
      title: fields[0] as String,
      firstName: fields[1] as String,
      lastName: fields[2] as String,
      phone: fields[3] as String,
      email: fields[4] as String,
      project: fields[5] as String,
      unitNumber: fields[6] as String,
      services: (fields[7] as List).cast<String>(),
      submissionDate: fields[8] as DateTime,
      status: fields[9] as String,
      imagePath: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RequestRecord obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.project)
      ..writeByte(6)
      ..write(obj.unitNumber)
      ..writeByte(7)
      ..write(obj.services)
      ..writeByte(8)
      ..write(obj.submissionDate)
      ..writeByte(9)
      ..write(obj.status)
      ..writeByte(10)
      ..write(obj.imagePath);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RequestRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;

  @override
  int get hashCode => typeId.hashCode;
}
