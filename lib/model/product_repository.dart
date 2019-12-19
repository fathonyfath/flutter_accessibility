// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_accessibility/model/product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    List<Product> allProducts = [
      Product(
        category: categoryAccessories,
        id: 0,
        isFeatured: true,
        name: (context) => 'Vagabond sack',
        price: 120,
      ),
      Product(
        category: categoryAccessories,
        id: 1,
        isFeatured: true,
        name: (context) => 'Stella sunglasses',
        price: 58,
      ),
      Product(
        category: categoryAccessories,
        id: 2,
        isFeatured: false,
        name: (context) => 'Whitney belt',
        price: 35,
      ),
      Product(
        category: categoryAccessories,
        id: 3,
        isFeatured: true,
        name: (context) => 'Garden strand',
        price: 98,
      ),
      Product(
        category: categoryAccessories,
        id: 4,
        isFeatured: false,
        name: (context) => 'Strut earrings',
        price: 34,
      ),
      Product(
        category: categoryAccessories,
        id: 5,
        isFeatured: false,
        name: (context) => 'Varsity socks',
        price: 12,
      ),
      Product(
        category: categoryAccessories,
        id: 6,
        isFeatured: false,
        name: (context) => 'Weave keyring',
        price: 16,
      ),
      Product(
        category: categoryAccessories,
        id: 7,
        isFeatured: true,
        name: (context) => 'Gatsby hat',
        price: 40,
      ),
      Product(
        category: categoryAccessories,
        id: 8,
        isFeatured: true,
        name: (context) => 'Shrug bag',
        price: 198,
      ),
      Product(
        category: categoryHome,
        id: 9,
        isFeatured: true,
        name: (context) => 'Gilt desk trio',
        price: 58,
      ),
      Product(
        category: categoryHome,
        id: 10,
        isFeatured: false,
        name: (context) => 'Copper wire rack',
        price: 18,
      ),
      Product(
        category: categoryHome,
        id: 11,
        isFeatured: false,
        name: (context) => 'Soothe ceramic set',
        price: 28,
      ),
      Product(
        category: categoryHome,
        id: 12,
        isFeatured: false,
        name: (context) => 'Hurrahs tea set',
        price: 34,
      ),
      Product(
        category: categoryHome,
        id: 13,
        isFeatured: true,
        name: (context) => 'Blue stone mug',
        price: 18,
      ),
      Product(
        category: categoryHome,
        id: 14,
        isFeatured: true,
        name: (context) => 'Rainwater tray',
        price: 27,
      ),
      Product(
        category: categoryHome,
        id: 15,
        isFeatured: true,
        name: (context) => 'Chambray napkins',
        price: 16,
      ),
      Product(
        category: categoryHome,
        id: 16,
        isFeatured: true,
        name: (context) => 'Succulent planters',
        price: 16,
      ),
      Product(
        category: categoryHome,
        id: 17,
        isFeatured: false,
        name: (context) => 'Quartet table',
        price: 175,
      ),
      Product(
        category: categoryHome,
        id: 18,
        isFeatured: true,
        name: (context) => 'Kitchen quattro',
        price: 129,
      ),
      Product(
        category: categoryClothing,
        id: 19,
        isFeatured: false,
        name: (context) => 'Clay sweater',
        price: 48,
      ),
      Product(
        category: categoryClothing,
        id: 20,
        isFeatured: false,
        name: (context) => 'Sea tunic',
        price: 45,
      ),
      Product(
        category: categoryClothing,
        id: 21,
        isFeatured: false,
        name: (context) => 'Plaster tunic',
        price: 38,
      ),
      Product(
        category: categoryClothing,
        id: 22,
        isFeatured: false,
        name: (context) => 'White pinstripe shirt',
        price: 70,
      ),
      Product(
        category: categoryClothing,
        id: 23,
        isFeatured: false,
        name: (context) => 'Chambray shirt',
        price: 70,
      ),
      Product(
        category: categoryClothing,
        id: 24,
        isFeatured: true,
        name: (context) => 'Seabreeze sweater',
        price: 60,
      ),
      Product(
        category: categoryClothing,
        id: 25,
        isFeatured: false,
        name: (context) => 'Gentry jacket',
        price: 178,
      ),
      Product(
        category: categoryClothing,
        id: 26,
        isFeatured: false,
        name: (context) => 'Navy trousers',
        price: 74,
      ),
      Product(
        category: categoryClothing,
        id: 27,
        isFeatured: true,
        name: (context) => 'Walter henley (white)',
        price: 38,
      ),
      Product(
        category: categoryClothing,
        id: 28,
        isFeatured: true,
        name: (context) => 'Surf and perf shirt',
        price: 48,
      ),
      Product(
        category: categoryClothing,
        id: 29,
        isFeatured: true,
        name: (context) => 'Ginger scarf',
        price: 98,
      ),
      Product(
        category: categoryClothing,
        id: 30,
        isFeatured: true,
        name: (context) => 'Ramona crossover',
        price: 68,
      ),
      Product(
        category: categoryClothing,
        id: 31,
        isFeatured: false,
        name: (context) => 'Chambray shirt',
        price: 38,
      ),
      Product(
        category: categoryClothing,
        id: 32,
        isFeatured: false,
        name: (context) => 'Classic white collar',
        price: 58,
      ),
      Product(
        category: categoryClothing,
        id: 33,
        isFeatured: true,
        name: (context) => 'Cerise scallop tee',
        price: 42,
      ),
      Product(
        category: categoryClothing,
        id: 34,
        isFeatured: false,
        name: (context) => 'Shoulder rolls tee',
        price: 27,
      ),
      Product(
        category: categoryClothing,
        id: 35,
        isFeatured: false,
        name: (context) => 'Grey slouch tank',
        price: 24,
      ),
      Product(
        category: categoryClothing,
        id: 36,
        isFeatured: false,
        name: (context) => 'Sunshirt dress',
        price: 58,
      ),
      Product(
        category: categoryClothing,
        id: 37,
        isFeatured: true,
        name: (context) => 'Fine lines tee',
        price: 58,
      ),
    ];
    if (category == categoryAll) {
      return allProducts;
    } else {
      return allProducts.where((p) => p.category == category).toList();
    }
  }
}