import 'dart:developer';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await appDB();
      return _db;
    } else {
      return _db;
    }
  }

  appDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'appDB.db');
    Database appDB = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
      onUpgrade: _onUpgrade,
    );

    return appDB;
  }

  _onUpgrade(Database db, int oldVersion, int newVersion) {
    log('Database upgraded');
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE items(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        image TEXT,
        isInCart INTEGER,
        isFavorite INTEGER
        )
        ''');

    await db.execute('''
        CREATE TABLE offers(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        isSelected INTEGER
        )
        ''');

    await db.execute('''
        CREATE TABLE categories(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        image TEXT NULL,
        isSelected INTEGER
        )
        ''');

    await db.execute('''
        CREATE TABLE kind(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        isSelected INTEGER
        )
        ''');
    await db.execute('''
        CREATE TABLE numberOfRooms(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        isSelected INTEGER
        )
        ''');
    await db.execute('''
        CREATE TABLE paymentMethods(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        isSelected INTEGER
        )
        ''');
    await db.execute('''
        CREATE TABLE propertyConditions(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        isSelected INTEGER
        )
        ''');

    await db.execute('''
        CREATE TABLE basicPlan(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        subtitle TEXT NULL,
        image Text
        )
        ''');
    await db.execute('''
        CREATE TABLE extraPlan(
       id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        subtitle TEXT NULL,
        image Text
        )
        ''');
    await db.execute('''
        CREATE TABLE pLusSuperPlan(
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        subtitle TEXT NULL,
        image Text
        )
        ''');
    log('database created');

    await _insertItemsData(db);
    await _insertOffersData(db);
    await _insertCategoriesData(db);
    await _insertKindData(db);
    await _insertNumberOfRoomsData(db);
    await _insertPaymentMethodsData(db);
    await _insertPropertyConditionsData(db);
    await _insertBasicPlanData(db);
    await _insertExtraPlanData(db);
    await _insertPLusSuperPlanData(db);
  }

  selectData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  insertData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }

  // insert
  _insertItemsData(Database db) async {
    // 'items' table
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/jacket.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/t-shirt.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/shoe.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/jacket.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/shoe.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/jacket.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/jacket.png", 0 , 0 )',
    );
    await db.rawInsert(
      'INSERT INTO items(name, image, isInCart, isFavorite) VALUES("جاكيت من الصوف مناسب", "assets/images/t-shirt.png", 0 , 0 )',
    );

    log('items inserted into items table ');
  }

  _insertOffersData(Database db) async {
    // 'offers' table
    await db.rawInsert("""
INSERT INTO offers(
name, 
isSelected) 
VALUES (
'كل العروض',
 1
 )
 """);
    await db.rawInsert("""
INSERT INTO offers(
name, 
isSelected) 
VALUES (
'ملابس',
 0
 )
 """);
    await db.rawInsert("""
INSERT INTO offers(
name, 
isSelected) 
VALUES (
'أكسسوارات',
 0
 )
 """);
    await db.rawInsert("""
INSERT INTO offers(
name, 
isSelected) 
VALUES (
'الكترونيات',
 0
 )
 """);
    await db.rawInsert("""
INSERT INTO offers(
name, 
isSelected) 
VALUES (
'منتجات تجميل',
 0
 )
 """);
    await db.rawInsert("""
INSERT INTO offers(
name, 
isSelected) 
VALUES (
'عقارات',
 0
 )
 """);

    log('items inserted into offers table ');
  }

  _insertCategoriesData(Database db) async {
    // 'categories' table
    await db.rawInsert(
      'INSERT INTO categories(name, image, isSelected) VALUES("موضة رجالى", "assets/images/men.png", 0 )',
    );
    await db.rawInsert(
      'INSERT INTO categories(name, image, isSelected) VALUES("ساعات", "assets/images/watches.png", 0 )',
    );
    await db.rawInsert(
      'INSERT INTO categories(name, image, isSelected) VALUES("موبايلات", "assets/images/phones.png", 0)',
    );
    await db.rawInsert(
      'INSERT INTO categories(name, image, isSelected) VALUES("منتجات تجميل", "assets/images/beauty.png", 0 )',
    );
    await db.rawInsert(
      'INSERT INTO categories(name, image, isSelected) VALUES("فلل", "assets/images/villas.png", 0 )',
    );
    log('items inserted into categories table ');
  }

  _insertKindData(Database db) async {
    // 'kind' table
    await db.rawInsert('''
INSERT INTO kind(
name, 
isSelected) 
VALUES (
"الكل",
 1
 )
  ''');
    await db.rawInsert('''INSERT INTO kind(
      name, 
      isSelected
      ) VALUES (
      "توين هاوس",
      0
      )
      ''');
    await db.rawInsert('''INSERT INTO kind(
      name, 
      isSelected
      ) VALUES (
      "فيلا منفصلة",
      0
      )
      ''');
    await db.rawInsert('''INSERT INTO kind(
      name, 
      isSelected
      ) VALUES (
      "تاون هاوس",
      0
      )''');
    log('items inserted into kind table ');
  }

  _insertNumberOfRoomsData(Database db) async {
    // 'numberOfRooms' table
    await db.rawInsert('''INSERT INTO numberOfRooms(
      name,
      isSelected
      ) VALUES (
      "4 غرف",
      0
      )''');
    await db.rawInsert('''INSERT INTO numberOfRooms(
      name,
      isSelected
      ) VALUES (
      "5 غرف+",
      1
      )''');
    await db.rawInsert('''INSERT INTO numberOfRooms(
      name,
      isSelected
      ) VALUES (
      "الكل",
      0
      )
      ''');
    await db.rawInsert('''INSERT INTO numberOfRooms(
      name,
      isSelected
      ) VALUES (
      "غرفتين",
      0
      )''');
    await db.rawInsert('''INSERT INTO numberOfRooms(
      name,
      isSelected
      ) VALUES (
      "3 غرف",
      0
      )''');
    log('items inserted into numberOfRooms table ');
  }

  _insertPaymentMethodsData(Database db) async {
    // 'paymentMethods' table
    await db.rawInsert('''INSERT INTO paymentMethods(
      name,
      isSelected
      ) VALUES (
      "أى",
      0
      )''');
    await db.rawInsert('''INSERT INTO paymentMethods(
      name,
      isSelected
      ) VALUES (
      "تقسيط",
      0
      )''');
    await db.rawInsert('''INSERT INTO paymentMethods(
      name,
      isSelected
      ) VALUES (
      "كاش",
      1
      )''');
    log('items inserted into paymentMethods table ');
  }

  _insertPropertyConditionsData(Database db) async {
    // 'propertyConditions' table
    await db.rawInsert('''INSERT INTO propertyConditions(
      name,
      isSelected
      ) VALUES (
      "أى",
      0
      )''');
    await db.rawInsert('''INSERT INTO propertyConditions(
      name,
      isSelected
      ) VALUES (
      "جاهز",
      1
      )''');
    await db.rawInsert('''INSERT INTO propertyConditions(
      name,
      isSelected
      ) VALUES (
      "قيد الأنشاء",
      0
      )''');
    log('items inserted into propertyConditions table ');
  }

  _insertBasicPlanData(Database db) async {
    await db.rawInsert('''
    INSERT INTO basicPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "صلاحية الأعلان 30 يوم",
       NULL,
       "assets/images/acute.png"
    )
    ''');
    log('items inserted into basicPlan table ');
  }

  _insertExtraPlanData(Database db) async {
    await db.rawInsert('''
    INSERT INTO extraPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "صلاحية الأعلان 30 يوم",
       NULL,
       "assets/images/acute.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO extraPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "رفع لأعلى القائمة كل 3 أيام",
       NULL,
      "assets/images/rocket.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO extraPlan (
        title,
        subtitle,
        image
    ) VALUES(
     "تثبيت فى مقاول صحى",
      "(خلال ال48 ساعة القادمة )",
      "assets/images/keep.png"
    )
    ''');
    log('items inserted into extraPlan table ');
  }

  _insertPLusSuperPlanData(Database db) async {
    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "صلاحية الأعلان 30 يوم",
       NULL,
       "assets/images/acute.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "رفع لأعلى القائمة كل 2 أيام",
       NULL,
      "assets/images/rocket.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
     "تثبيت فى مقاول صحى",
      "(خلال ال48 ساعة القادمة )",
      "assets/images/keep.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
     "ظهور فى كل محافظات مصر",
      NULL,
      "assets/images/globe.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "أعلان مميز",
      NULL,
      "assets/images/workspace_premium.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "تثبيت فى مقاول صحى فى الجهراء",
      NULL,
      "assets/images/keep.png"
    )
    ''');

    await db.rawInsert('''
    INSERT INTO pLusSuperPlan (
        title,
        subtitle,
        image
    ) VALUES(
      "تثبيت فى مقاول صحى",
      "(خلال ال48 ساعة القادمة )",
      "assets/images/keep.png"
    )
    ''');
    log('items inserted into plusSuperPlan table ');
  }

  Future<int> setExclusiveSelection(String tableName, int itemId) async {
    Database? mydb = await db;
    if (mydb == null) {
      log('Database is null. Cannot perform exclusive selection.');
      return 0;
    }

    await mydb.transaction((txn) async {
      await txn.update(
        tableName,
        {'isSelected': 0},
        where: 'isSelected = ?',
        whereArgs: [1],
      );

      await txn.update(
        tableName,
        {'isSelected': 1},
        where: 'id = ?',
        whereArgs: [itemId],
      );
    });

    log('Exclusive selection complete for table: $tableName');
    return 1;
  }
}
