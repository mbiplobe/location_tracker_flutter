// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountResponseAdapter extends TypeAdapter<AccountResponse> {
  @override
  final int typeId = 0;

  @override
  AccountResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountResponse(
      userId: fields[0] as String,
      fullName: fields[1] as String,
      email: fields[2] as String,
      username: fields[3] as String,
      profilePic: fields[4] as String,
      createdAt: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, AccountResponse obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.profilePic)
      ..writeByte(5)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
