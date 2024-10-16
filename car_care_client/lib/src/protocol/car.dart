/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Car implements _i1.SerializableModel {
  Car._({
    this.id,
    required this.name,
    required this.plate,
    required this.series,
  });

  factory Car({
    int? id,
    required String name,
    required String plate,
    required String series,
  }) = _CarImpl;

  factory Car.fromJson(Map<String, dynamic> jsonSerialization) {
    return Car(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      plate: jsonSerialization['plate'] as String,
      series: jsonSerialization['series'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String plate;

  String series;

  Car copyWith({
    int? id,
    String? name,
    String? plate,
    String? series,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'plate': plate,
      'series': series,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CarImpl extends Car {
  _CarImpl({
    int? id,
    required String name,
    required String plate,
    required String series,
  }) : super._(
          id: id,
          name: name,
          plate: plate,
          series: series,
        );

  @override
  Car copyWith({
    Object? id = _Undefined,
    String? name,
    String? plate,
    String? series,
  }) {
    return Car(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      plate: plate ?? this.plate,
      series: series ?? this.series,
    );
  }
}
