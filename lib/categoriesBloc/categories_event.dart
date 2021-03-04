import 'package:equatable/equatable.dart';
import 'package:flutter_app/data/categories.dart';
import 'package:meta/meta.dart';

import '../data/categories.dart';

@immutable
abstract class CategoriesEvent extends Equatable {
  CategoriesEvent([List props = const []]) : super(props);
}

class LoadCategories extends CategoriesEvent {}

class AddRandomCategory extends CategoriesEvent {}

class UpdateWithRandomCategory extends CategoriesEvent {
  final Categories updatedCategory;

  UpdateWithRandomCategory(this.updatedCategory) : super([updatedCategory]);
}

class DeleteCategory extends CategoriesEvent {
  final Categories category;

  DeleteCategory(this.category) : super([category]);
}
