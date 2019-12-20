import 'package:flutter/material.dart';
import 'package:flutter_accessibility/component/product_widget.dart';
import 'package:flutter_accessibility/internal/backdrop.dart';
import 'package:flutter_accessibility/model/app_state_model.dart';
import 'package:flutter_accessibility/model/product.dart';

class ProductListWidget extends StatelessWidget {
  final List<Product> products;

  const ProductListWidget({Key key, @required this.products}) : super(key: key);

  void _onMenuProductCLick(BuildContext context, Product product) {
    final appStateModel = AppStateModel.of(context);
    appStateModel.addProductToCart(product.id);
  }

  @override
  Widget build(BuildContext context) {
    final backdrop = Backdrop.of(context);

    return ExcludeSemantics(
      excluding: backdrop.isBackPanelVisible,
      child: Center(
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
    );
  }
}
