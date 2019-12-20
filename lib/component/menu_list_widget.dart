import 'package:flutter/material.dart';
import 'package:flutter_accessibility/component/menu_widget.dart';
import 'package:flutter_accessibility/internal/backdrop.dart';
import 'package:flutter_accessibility/model/app_state_model.dart';
import 'package:flutter_accessibility/model/product.dart';

class MenuListWidget extends StatelessWidget {
  final List<Category> categories;

  const MenuListWidget({Key key, @required this.categories}) : super(key: key);

  void _onMenuItemClick(BuildContext context, Category category) {
    final appStateModel = AppStateModel.of(context);
    final backdrop = Backdrop.of(context);

    appStateModel.setCategory(category);
    backdrop.showFrontLayer();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, position) {
            return MenuWidget(
              category: categories[position],
              onItemClick: (category) {
                _onMenuItemClick(context, category);
              },
            );
          }),
    );
  }
}
