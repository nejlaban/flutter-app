import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../data/categories.dart';

@immutable
abstract class CategoriesState extends Equatable {
  CategoriesState([List props = const []]) : super(props);
}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<Categories> categories;

  CategoriesLoaded(this.categories) : super([categories]);
}
