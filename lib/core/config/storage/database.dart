// class DatabaseHelper {
//   static final DatabaseHelper _instance = DatabaseHelper._internal();
//   static Database? _database;

//   factory DatabaseHelper() => _instance;

//   DatabaseHelper._internal();

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }

//   Future<Database> _initDatabase() async {
//     String path = join(await getDatabasesPath(), 'beneficiaries.db');
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   Future<void> _onCreate(Database db, int version) async {
//     await db.execute('''
//       CREATE TABLE beneficiaries(
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         receiver TEXT,
//         meter_type TEXT,
//         provider_id INTEGER,
//         customer_name TEXT,
//         customer_info TEXT,
//         provider TEXT,
//         service_charge INTEGER,
//         minimum_amount TEXT,
//         state TEXT,
//         tag TEXT,
//         is_online TEXT
//       )
//     ''');
//   }

//   Future<int> insertBeneficiary(ElectricityBeneficiary beneficiary) async {
//     final db = await database;
//     if (!db.isOpen) {
//       await _initDatabase();
//     }
//     return await db.insert(
//       'beneficiaries',
//       beneficiary.toJson(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<List<ElectricityBeneficiary>> getBeneficiaries() async {
//     final db = await database;
//     if (!db.isOpen) {
//       await _initDatabase();
//     }
//     final List<Map<String, dynamic>> maps = await db.query('beneficiaries');

//     return List.generate(maps.length, (i) {
//       return ElectricityBeneficiary.fromJson(maps[i]);
//     });
//   }

//   Future<void> updateBeneficiary(ElectricityBeneficiary beneficiary) async {
//     final db = await database;
//     if (!db.isOpen) {
//       await _initDatabase();
//     }
//     await db.update(
//       'beneficiaries',
//       beneficiary.toJson(),
//       where: 'id = ?',
//       whereArgs: [beneficiary.id], // assuming `id` is available in your model
//     );
//   }

//   Future<void> deleteBeneficiary(int id) async {
//     final db = await database;
//     if (!db.isOpen) {
//       await _initDatabase();
//     }
//     await db.delete(
//       'beneficiaries',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<void> deleteDatabaseFile() async {
//     String path = join(await getDatabasesPath(), 'beneficiaries.db');
//     final db = await database;
//     if (db.database.isOpen) {
//       await deleteDatabase(path); // This deletes the database file
//     }
//   }
// }
