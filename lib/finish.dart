import 'package:flutter/material.dart';
import 'package:inhacks_2023/app_scaffold.dart';
import 'package:inhacks_2023/widgets/navigation_top.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              NavigationTop(callback: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppScaffold(),
                  ),
                );
              }),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/donation_check.png'),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: const [
                              Text(
                                'Lorem',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    OpaqueButton(
                      'Oke',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      padX: 96,
                      padY: 16,
                      callback: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppScaffold(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
