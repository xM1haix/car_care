/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Car implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = CarTable();

  static const db = CarRepository._();

  @override
  int? id;

  String name;

  String plate;

  String series;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'plate': plate,
      'series': series,
    };
  }

  static CarInclude include() {
    return CarInclude._();
  }

  static CarIncludeList includeList({
    _i1.WhereExpressionBuilder<CarTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CarTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CarTable>? orderByList,
    CarInclude? include,
  }) {
    return CarIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Car.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Car.t),
      include: include,
    );
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

class CarTable extends _i1.Table {
  CarTable({super.tableRelation}) : super(tableName: 'car') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    plate = _i1.ColumnString(
      'plate',
      this,
    );
    series = _i1.ColumnString(
      'series',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString plate;

  late final _i1.ColumnString series;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        plate,
        series,
      ];
}

class CarInclude extends _i1.IncludeObject {
  CarInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Car.t;
}

class CarIncludeList extends _i1.IncludeList {
  CarIncludeList._({
    _i1.WhereExpressionBuilder<CarTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Car.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Car.t;
}

class CarRepository {
  const CarRepository._();

  Future<List<Car>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CarTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CarTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CarTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Car>(
      where: where?.call(Car.t),
      orderBy: orderBy?.call(Car.t),
      orderByList: orderByList?.call(Car.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Car?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CarTable>? where,
    int? offset,
    _i1.OrderByBuilder<CarTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CarTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Car>(
      where: where?.call(Car.t),
      orderBy: orderBy?.call(Car.t),
      orderByList: orderByList?.call(Car.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Car?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Car>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Car>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Car> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Car>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Car> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Car row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Car>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Car>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Car> rows, {
    _i1.ColumnSelections<CarTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Car>(
      rows,
      columns: columns?.call(Car.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Car> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Car row, {
    _i1.ColumnSelections<CarTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Car>(
      row,
      columns: columns?.call(Car.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Car>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Car> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Car>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Car> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Car row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Car>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Car>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<CarTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Car>(
      where: where(Car.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CarTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Car>(
      where: where?.call(Car.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
