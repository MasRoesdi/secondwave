import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/chat_tab.dart';
import 'package:inhacks_2023/widgets/custom_icon_button.dart';
import 'package:inhacks_2023/widgets/form_input.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Pesan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppPadding.screen),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                    child: FormInput(
                      prefixIcon: Icons.search,
                      useBottomPadding: false,
                      placeholder: 'Cari nama atau pesan di sini',
                    ),
                  ),
                  SizedBox(width: 12),
                  CustomIconButton(Icons.settings_outlined),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: AppPadding.screen),
                child: Column(
                  children: const [
                    ChatTab(
                      assetName: 'assets/images/person-1.jpg',
                      name: 'Panti Asuhan Kasih',
                      lastMessage: 'terima kasih, mejanya sangat bagus sekali',
                      messageTime: '10:20',
                    ),
                    ChatTab(
                      assetName: 'assets/images/person-2.jpg',
                      name: 'Jaden',
                      lastMessage: 'bajunya sangat nyaman',
                      messageTime: '10:17',
                    ),
                    ChatTab(
                      assetName: 'assets/images/person-3.jpg',
                      name: 'Clara Smith',
                      lastMessage: 'otw',
                      messageTime: '10:10',
                    ),
                    ChatTab(
                      assetName: 'assets/images/person-4.jpg',
                      name: 'Jemmy Fox',
                      lastMessage:
                          'terima kasih, jarang sekali ada yang menawarkan baju',
                      messageTime: '09:51',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
