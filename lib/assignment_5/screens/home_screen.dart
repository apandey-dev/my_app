import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../widgets/custom_card.dart';
import '../widgets/info_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      appBar: AppBar(
        title: const Text(AppStrings.appTitle),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const SizedBox(height: 20),

              const Text(
                AppStrings.welcomeText,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Container(
                width: screenWidth,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  children: [
                    const Icon(
                      Icons.flutter_dash,
                      size: 80,
                      color: Colors.blue,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Flutter UI Assignment",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: const [
                        InfoRow(icon: Icons.phone_android, label: "Responsive"),

                        InfoRow(icon: Icons.color_lens, label: "Styled UI"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const CustomCard(
                title: "Scaffold Widget",
                description: "Used for creating basic Flutter screen layout.",
              ),

              const SizedBox(height: 15),

              const CustomCard(
                title: "Row & Column",
                description:
                    "Used for arranging widgets horizontally and vertically.",
              ),

              const SizedBox(height: 15),

              const CustomCard(
                title: "Container Widget",
                description: "Used for styling, spacing, and decoration.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
