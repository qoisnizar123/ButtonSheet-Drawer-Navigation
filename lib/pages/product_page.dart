import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        "name": "iPhone 15 Pro",
        "price": "Rp 21.999.000",
        "icon": Icons.phone_iphone,
      },
      {
        "name": "Samsung Galaxy S24",
        "price": "Rp 15.999.000",
        "icon": Icons.phone_android,
      },
      {
        "name": "MacBook Air M3",
        "price": "Rp 22.499.000",
        "icon": Icons.laptop_mac,
      },
      {
        "name": "Asus ROG Zephyrus G14",
        "price": "Rp 25.499.000",
        "icon": Icons.laptop_windows,
      },
      {
        "name": "Sony WH-1000XM5",
        "price": "Rp 5.499.000",
        "icon": Icons.headphones,
      },
      {
        "name": "Xiaomi Smart TV 43\"",
        "price": "Rp 4.999.000",
        "icon": Icons.tv,
      },
      {
        "name": "Apple Watch Series 9",
        "price": "Rp 8.499.000",
        "icon": Icons.watch,
      },
      {
        "name": "Logitech MX Master 3S",
        "price": "Rp 1.499.000",
        "icon": Icons.mouse,
      },
      {
        "name": "Anker Powerbank 20000mAh",
        "price": "Rp 799.000",
        "icon": Icons.battery_charging_full,
      },
      {
        "name": "JBL Flip 6 Speaker",
        "price": "Rp 2.499.000",
        "icon": Icons.speaker,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Produk"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],

      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 3 / 3.8,
        ),
        itemBuilder: (context, index) {
          final item = products[index];
          return Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green.shade50,
                    child: Icon(item["icon"], size: 35, color: Colors.green),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item["name"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    item["price"],
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
