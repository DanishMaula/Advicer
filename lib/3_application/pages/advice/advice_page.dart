import 'package:advicer/3_application/core/services/theme_service.dart';
import 'package:advicer/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/3_application/pages/advice/widgets/custom_button.dart';
import 'package:advicer/3_application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          actions: [
            Switch(
                value: Provider.of<ThemeService>(context).isDarkModeOn,
                onChanged: (_) {
                  Provider.of<ThemeService>(context, listen: false)
                      .toggleTheme();
                })
          ],
          title: Text('Advicer', style: themeData.textTheme.headline1)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: const [
            Expanded(
                child: Center(
              child: ErrorMessage(message: 'Oops something went wrong :('),
              //  AdviceField(advice: 'YESYESYESYESYES'),
              
            )),
            const SizedBox(height: 200, child: Center(child: CustomButton()))
          ],
        ),
      ),
    );
  }
}
