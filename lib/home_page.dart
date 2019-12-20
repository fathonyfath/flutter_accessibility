
import 'package:flutter/material.dart';
import 'package:flutter_accessibility/component/menu_list_widget.dart';
import 'package:flutter_accessibility/component/product_list_widget.dart';
import 'package:flutter_accessibility/model/app_state_model.dart';
import 'package:flutter_accessibility/model/product.dart';

import 'internal/backdrop.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  void _onCartButtonClick(BuildContext context) {
    final appStateModel = AppStateModel.of(context);
    appStateModel.clearCart();
  }

  @override
  Widget build(BuildContext context) {
    final appStateModel = AppStateModel.of(context, rebuildOnChange: true);

    final products = appStateModel.getProducts();

    return Scaffold(
      body: BackdropScaffold(
        title: Text('Shopping Apps'),
        backLayer: MenuListWidget(
          categories: categories,
        ),
        frontLayer: ProductListWidget(
          products: products,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _onCartButtonClick(context);
        },
        tooltip: 'Shopping Cart',
        icon: Icon(Icons.shopping_cart),
        label: Text('${_buildItemCount(appStateModel.totalCartQuantity)}'),
      ),
    );
  }
}

String _buildItemCount(int itemCount) {
  if (itemCount <= 0) {
    return 'NO ITEM';
  } else if (itemCount == 1) {
    return '$itemCount ITEM';
  } else {
    return '$itemCount ITEMS';
  }
}
