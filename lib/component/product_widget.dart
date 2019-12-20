import 'package:flutter/material.dart';
import 'package:flutter_accessibility/model/product.dart';
import 'package:intl/intl.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  final Function(Product) onItemClick;
  final formatCurrency = new NumberFormat.simpleCurrency();

  ProductWidget({Key key, @required this.product, @required this.onItemClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Semantics(
          button: true,
          onTapHint: 'Add to cart',
          child: Card(
            child: InkWell(
              onTap: () {
                onItemClick(product);
              },
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '${product.name(context)}',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '${formatCurrency.format(product.price)}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
