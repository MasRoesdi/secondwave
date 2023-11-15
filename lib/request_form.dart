import 'package:flutter/material.dart';
import 'package:inhacks_2023/finish.dart';
import 'package:inhacks_2023/widgets/form_input.dart';
import 'package:inhacks_2023/widgets/navigation_top.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class RequestFormScreen extends StatelessWidget {
  const RequestFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppPadding.screen),
              child: NavigationTop(
                title: 'Form Permintaan',
                callback: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: AppPadding.screen,
                    bottom: AppPadding.screen,
                    right: AppPadding.screen,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: const [
                            FormInput(placeholder: 'Nama Produk'),
                            FormInput(placeholder: 'Nama Lengkap'),
                            FormInput(
                              placeholder: 'Kuantitas',
                              isNumber: true,
                            ),
                            FormInput(
                              placeholder: 'Mengapa anda menginginkannya?',
                              isMultipleLine: true,
                              useBottomPadding: false,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text('Mohon isi formulir dengan jujur.'),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: OpaqueButton(
                              'Kirim Permintaan',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              padX: 0,
                              padY: 20,
                              callback: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FinishScreen(
                                      isRequest: true,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
