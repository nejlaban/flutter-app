import 'dart:async';
import 'package:bloc/bloc.dart';
import 'dart:math';

import '../data/categoriesDao.dart';
import '../categoriesBloc/categories_event.dart';
import '../categoriesBloc/categories_state.dart';

import 'package:flutter_app/data/categories.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesDao _categoriesDao = CategoriesDao();

  @override
  CategoriesState get initialState => CategoriesLoading();

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    if (event is LoadCategories) {
      yield CategoriesLoading();
      yield* _reloadCategories();
    } else if (event is AddRandomCategory) {
      await _categoriesDao
          .insert(RandomCategoriesGenerator.getRandomCategory());
      yield* _reloadCategories();
    } else if (event is UpdateWithRandomCategory) {
      final newCategory = RandomCategoriesGenerator.getRandomCategory();
      newCategory.id = event.updatedCategory.id;
      await _categoriesDao.update(newCategory);
      yield* _reloadCategories();
    } else if (event is DeleteCategory) {
      await _categoriesDao.delete(event.category);
      yield* _reloadCategories();
    }
  }

  Stream<CategoriesState> _reloadCategories() async* {
    final categories = await _categoriesDao.getAllSortedByName();
    yield CategoriesLoaded(categories);
  }
}

class RandomCategoriesGenerator {
  static final _categories = [
    Categories(name: 'Frizerski saloni'),
    Categories(name: 'Doktori'),
    Categories(name: 'Stomatolozi'),
  ];

  static Categories getRandomCategory() {
    return _categories[Random().nextInt(_categories.length)];
  }
}
