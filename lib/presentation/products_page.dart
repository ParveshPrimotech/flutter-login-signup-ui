import 'package:flutter/material.dart';
import 'package:flutter_first/model/products_model.dart';
import 'package:flutter_first/network/api_service.dart';
import 'package:flutter_first/utils/common_methods.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late List<ProductsModel>? _productsModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _productsModel = (await ApiService().getProducts())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _productsModel == null || _productsModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _productsModel!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: InkWell(
                      onTap: () =>
                          {showToastMessage(_productsModel![index].title)},
                      child: Row(
                        children: [
                          Image.network(
                            _productsModel![index].image,
                            width: 20.0,
                            height: 20.0,
                          ),
                          Expanded(
                            child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin:
                                    const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                                child: Text(_productsModel![index].title)),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
