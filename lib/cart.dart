import 'package:flutter/material.dart';
import 'package:sampleproject/productmodel.dart';

// ignore: must_be_immutable
class MyCart extends StatelessWidget {
  List<ProductModel> products = [
    ProductModel(
      "C to C",
      20,
      "assets/pic1.jpg",
    ),
    ProductModel(
      "Java",
      15,
      "assets/pic2.jpg",
    ),
    ProductModel(
      "Number 0",
      30,
      "assets/pic3.jpg",
    ),
    ProductModel(
      "Programmer",
      30,
      "assets/pic4.jpg",
    ),
  ];
  MyCart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image(
                  image: AssetImage(products[index].image),
                  height: 120.0,
                  width: 90.0,
                ),
                title: Text(
                  products[index].name,
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Gh₵${products[index].price}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: products.length),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            const Expanded(
                child: ListTile(
              title: Text(
                "Total:",
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                "Gh₵95",
                style: TextStyle(fontSize: 22),
              ),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: const Text(
                "Check Out",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              color: Colors.amber,
            ))
          ],
        ),
      ),
    );
  }
}
