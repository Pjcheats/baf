import 'package:baf/Component/custom_button.dart';
import 'package:baf/Controller/color_style_controller.dart';
import 'package:baf/Pages/selection_page.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  EntryPage({super.key});

  String subtitleText =
      "Don't let idle time go to waste! There's always something new to discover and explore.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/dashboard-portrait.png"),
              const SizedBox(height: 20),
              Text('Bored !', style: headlineStyle1),
              Divider(color: dividerColor, height: 20, thickness: 1),
              Expanded(child: Text(subtitleText, style: subtitleStyle1)),
              MyButton(
                label: "Get started",
                icon: Icons.arrow_forward_rounded,
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute<void>(
      builder: (BuildContext context) => SelectionPage(),
    ),);
                },
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
