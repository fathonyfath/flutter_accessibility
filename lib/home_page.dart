import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_accessibility/component/menu_widget.dart';
import 'package:flutter_accessibility/component/product_widget.dart';
import 'package:flutter_accessibility/model/app_state_model.dart';
import 'package:flutter_accessibility/model/product.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  void _onMenuItemClick(BuildContext context, Category category) {
    final appStateModel = AppStateModel.of(context);
    final backdrop = Backdrop.of(context);

    appStateModel.setCategory(category);
    backdrop.showFrontLayer();
  }

  void _onMenuProductCLick(BuildContext context, Product product) {
    final appStateModel = AppStateModel.of(context);
    appStateModel.addProductToCart(product.id);
  }

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
        backLayer: Center(
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
        ),
        frontLayer: Center(
          child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: products.length,
              itemBuilder: (context, position) {
                return ProductWidget(
                  onItemClick: (product) {
                    _onMenuProductCLick(context, product);
                  },
                  product: products[position],
                );
              }),
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
