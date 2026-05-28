import 'package:flutter/material.dart';

import '../data/dummy_products.dart';
import '../widgets/custom_button.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void showMessage(BuildContext context, String productName) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("$productName Clicked")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 6"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            const Text(
              "Advanced Flutter Widgets",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                itemCount: products.length,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.9,
                ),

                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],

                    onTap: () {
                      showMessage(context, products[index].title);
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            CustomButton(
              text: "Show Message",

              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Button Clicked")));
              },
            ),
          ],
        ),
      ),
    );
  }
}
