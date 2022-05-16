import 'package:flutter/material.dart';
import 'package:shrine/model/product.dart';
import 'package:shrine/model/product_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
        count,
        (index) => Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 18.0 / 11.0,
                    child: Image.asset('assets/images/daimonds.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Title'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Secondary Text'),
                      ],
                    ),
                  ),
                ],
              ),
            ));

    return cards;
  }

  // List<Card> _buildGridCards(BuildContext context) {
  //   List<Product> products = ProductsRepository.loadProducts(Category.all);

  //   if (products.isEmpty) {
  //     return const <Card>[];
  //   }

  //   final ThemeData themeData = Theme.of(context);
  //   // final NumberFormat format = NumberFormat.simpleCurrency(
  //   //     locale: Localizations.localeOf(context).toString());

  //   return products
  //       .map((product) => Card(
  //             clipBehavior: Clip.antiAlias,
  //             child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   AspectRatio(
  //                     aspectRatio: 18 / 11,
  //                     child: Image.asset(
  //                       product.assetName,
  //                       package: product.assetPackage,
  //                     ),
  //                   ),
  //                   Expanded(
  //                     child: Padding(
  //                       padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
  //                       child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               product.name,
  //                               style: themeData.textTheme.headline6,
  //                               maxLines: 1,
  //                             ),
  //                             const SizedBox(
  //                               height: 8.0,
  //                             ),
  //                             Text(product.price.toString(),
  //                                 style: themeData.textTheme.subtitle2)
  //                           ]),
  //                     ),
  //                   )
  //                 ]),
  //           ))
  //       .toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHRINE'),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              semanticLabel: 'Search',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
          ),
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: _buildGridCards(11)),
      resizeToAvoidBottomInset: false,
    );
  }
}
