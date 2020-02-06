//import 'dart:async';
//
//import 'package:path/path.dart';
//import 'package:sqflite/sqflite.dart';
//
/////Tabela de Setores
//final String _sectorTable = "sectorTable";
//final String _sectorIdColumn = "idColumn";
//final String _sectorNameColumn = "nameColumn";
//
/////Tabela de vias
//final String _routeTable = "routeTable";
//final String _idColumn = "idColumn";
//final String _nameColumn = "nameColumn";
//final String _gradeColumn = "gradeColumn";
//final String _imgColumn = "imgColumn";
//final String _sectorColumn = "sectorColumn"; //Foreign Key (id setor)
//
//class DbHelper {
//  static final DbHelper _instance = DbHelper.internal();
//  factory DbHelper() => _instance;
//
//  DbHelper.internal();
//
//  Database _db;
//
//  ///Retorna a instância de banco de dados [_db]
//  Future<Database> get db async {
//    return _db == null ? await _createDb() : _db;
//  }
//
//  Future<Database> _createDb() async {
//    final databasesPath = await getDatabasesPath();
//    final path = join(databasesPath, "guia_arara.db");
//
//    return await openDatabase(path, version: 1,
//        onCreate: (Database db, int newerVersion) async {
//      ///Cria nova Tabela de setores
//      await db.execute(
//          "CREATE TABLE $_sectorTable($_sectorIdColumn INTEGER PRIMARY KEY, $_sectorNameColumn TEXT)");
//
//      ///Cria nova Tabela de vias
//      await db.execute(
//          "CREATE TABLE $_routeTable($_idColumn INTEGER PRIMARY KEY, $_nameColumn TEXT, "
//          "$_gradeColumn TEXT, $_imgColumn TEXT, FOREIGN KEY ($_sectorColumn) REFERENCES $_sectorTable($_sectorIdColumn))");
//    });
//  }
//
//  // ================= SETORES ===============================================
//  Future<Sector> saveSector(Sector sector) async {
//    Database dbArara = await db;
//    sector.id = await dbArara.insert(_sectorTable, sector.toMap());
//    return sector;
//  }
//
//  Future<Sector> getSector(int id) async {
//    Database dbArara = await db;
//    List<Map> maps = await dbArara.query(_sectorTable,
//        columns: [_sectorIdColumn, _sectorNameColumn],
//        where: "$_sectorIdColumn = ?",
//        whereArgs: [id]);
//    if (maps.length > 0) {
//      return Sector.fromMap(maps.first);
//    }
//    return null;
//  }
//
//  Future<List> getAllSectors() async {
//    Database dbArara = await db;
//    List listMap = await dbArara.rawQuery("SELECT * FROM $_sectorTable");
//    List<Sector> listSector = List();
//    for(Map map in listMap){
//      listSector.add(Sector.fromMap(map));
//    }
//    return listSector;
//  }
//  // ==========================================================================
//
//  // ================= VIAS ===================================================
//  Future<Route> saveRoute(Route route) async {
//    Database dbArara = await db;
//    route.id = await dbArara.insert(_sectorTable, route.toMap());
//    return route;
//  }
//
//  Future<Route> getRoute(int id) async {
//    Database dbArara = await db;
//    List<Map> maps = await dbArara.query(_routeTable,
//        columns: [_idColumn, _nameColumn, _gradeColumn, _imgColumn, _sectorColumn],
//        where: "$_idColumn = ?",
//        whereArgs: [id]);
//    if (maps.length > 0) {
//      return Route.fromMap(maps.first);
//    }
//    return null;
//  }
//
//  Future<List> getAllRoutes() async {
//    Database dbArara = await db;
//    List listMap = await dbArara.rawQuery("SELECT * FROM $_routeTable");
//    List<Route> listRoute = List();
//    for(Map map in listMap){
//      listRoute.add(Route.fromMap(map));
//    }
//    return listRoute;
//  }
//
//  // ==========================================================================
//}
//
/////Classe que representa um setor de escalada.
/////Cada setor é identificado por um [id] e possui um [name]
//class Sector {
//  int id;
//  String name;
//
//  Sector();
//
//  Sector.fromMap(Map map) {
//    id = map[_sectorIdColumn];
//    name = map[_sectorNameColumn];
//  }
//
//  Map toMap() {
//    Map<String, dynamic> map = {_sectorNameColumn: name};
//    if (id != null) {
//      map[_sectorIdColumn] = id;
//    }
//    return map;
//  }
//
//  @override
//  String toString() {
//    return "Setor(id: $id , nome: $name)";
//  }
//}
//
/////Classe que representa uma Via de escalada.
/////Cada via é identificada por um [id] e possui um [name] e um [grade](dificuldade)
/////e uma [img] para identificação visual da linha.
/////Toda via pertence a um [Sector].
//class Route {
//  int id;
//  String name;
//  String grade;
//  String img;
//  Sector sector; //foreign key
//
//  Route();
//
//  ///Instancia uma [Route] a partir de um map
//  ///A instância de [Sector] da via é recuperada do [db]
//  Route.fromMap(Map map) {
//    id = map[_idColumn];
//    name = map[_nameColumn];
//    grade = map[_gradeColumn];
//    img = map[_imgColumn];
//    DbHelper().getSector(map[_sectorColumn]).then((dbResponse) {
//      sector = dbResponse;
//    });
//  }
//
//  Map toMap() {
//    Map<String, dynamic> map = {
//      _nameColumn: name,
//      _gradeColumn: grade,
//      _imgColumn: img,
//      _sectorColumn: sector.id
//    };
//    if (id != null) {
//      map[_idColumn] = id;
//    }
//    return map;
//  }
//
//  @override
//  String toString() {
//    return "Via(id: $id , nome: $name, graduaçâo: $grade, setor:$sector, img: $img )";
//  }
//}
