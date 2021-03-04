import 'package:sembast/sembast.dart';
import 'database.dart';
import 'categories.dart';

class CategoriesDao {
  static const String CATEGORIES_STORE_NAME = 'categories';

  final _categoriesStore = intMapStoreFactory.store(CATEGORIES_STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance
      .database; // later we will use just _db in the code when we want instance of db

  Future<List<Categories>> getAllSortedByName() async {
    final finder = Finder(sortOrders: [
      SortOrder('name'),
    ]);

    final recordSnapshots = await _categoriesStore.find(
      await _db,
      finder: finder,
    );

    // Making a List<Categories> out of List<RecordSnapshot>

    return recordSnapshots.map((snapshot) {
      final category = Categories.fromMap(snapshot.value);
      category.id = snapshot.key;
      return category;
    }).toList();
  }

  Future insert(Categories categories) async {
    await _categoriesStore.add(await _db, categories.toMap());
  }

  Future update(Categories categories) async {
    final finder = Finder(filter: Filter.byKey(categories.id));
    await _categoriesStore.update(
      await _db,
      categories.toMap(),
      finder: finder,
    );
  }

  Future delete(Categories categories) async {
    final finder = Finder(filter: Filter.byKey(categories.id));
    await _categoriesStore.delete(
      await _db,
      finder: finder,
    );
  }
}
