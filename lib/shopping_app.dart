import 'package:flutter/material.dart';
import 'package:flutter_accessibility/home_page.dart';
import 'package:flutter_accessibility/model/app_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ShoppingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShoppingAppState();
  }
}

class _ShoppingAppState extends State<ShoppingApp> {
  AppStateModel _model;

  @override
  void initState() {
    super.initState();

    _model = AppStateModel()..loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<AppStateModel>(
      model: _model,
      child: MaterialApp(
        title: 'Shopping Online',
        home: HomePage(),
      ),
    );
  }
}
