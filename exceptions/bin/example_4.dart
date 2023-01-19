///* --------
///* Finally
///* --------

void main(List<String> args) async {
  final db = Database();
  try {
    // await db.open();
    await db.getData();
  } on DatabaseNotOpenException {
    print('We forgot to open the database');
  } finally {
    await db.close();
  }
}

class Database {
  bool _isDbOpen = false;

  Future<void> open() {
    return Future.delayed(const Duration(seconds: 1), () {
      _isDbOpen = true;
      print('Database Opened');
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      const Duration(seconds: 1),
      () => 'Data',
    );
  }

  Future<void> close() {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        _isDbOpen = false;
        print('Database closed');
      },
    );
  }
}

class DatabaseNotOpenException implements Exception {
  final String? message;

  const DatabaseNotOpenException({
    this.message = 'Database Not Open!',
  });

  @override
  String toString() {
    return 'Database Not Open Exception';
  }
}
