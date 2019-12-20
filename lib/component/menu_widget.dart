import 'package:flutter/material.dart';
import 'package:flutter_accessibility/model/product.dart';

class MenuWidget extends StatelessWidget {
  final Category category;
  final void Function(Category) onItemClick;

  const MenuWidget(
      {Key key, @required this.category, @required this.onItemClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemClick(category);
      },
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '${category.name(context)}',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
