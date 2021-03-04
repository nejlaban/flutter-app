import 'package:flutter/material.dart';
import 'package:flutter_app/categoriesBloc/categories_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../categoriesBloc/categories_event.dart';
import '../categoriesBloc/categories_state.dart';

import '../widgets/bottom_navigation_bar.dart';
import 'package:flutter_app/data/categories.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoriesBloc _categoriesBloc;

  @override
  void initState() {
    super.initState();
    _categoriesBloc = BlocProvider.of<CategoriesBloc>(context);

    _categoriesBloc.dispatch(LoadCategories());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Container(
          margin: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 10.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Pretraži kategorije',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _categoriesBloc.dispatch(AddRandomCategory());
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    return BlocBuilder(
      bloc: _categoriesBloc,
      builder: (BuildContext context, CategoriesState state) {
        if (state is CategoriesLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CategoriesLoaded) {
          return ListView.builder(
            itemCount: state.categories.length,
            itemBuilder: (context, index) {
              final displayedCategories = state.categories[index];
              return ListTile(
                title: Text(displayedCategories.name),
                trailing: _buildUpdateDeleteButtons(displayedCategories),
              );
            },
          );
        }
      },
    );
  }

  Row _buildUpdateDeleteButtons(Categories displayedCategories) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            _categoriesBloc
                .dispatch(UpdateWithRandomCategory(displayedCategories));
          },
        ),
        IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () {
            _categoriesBloc.dispatch(DeleteCategory(displayedCategories));
          },
        ),
      ],
    );
  }
}
