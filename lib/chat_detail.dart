import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/chat_bubble.dart';
import 'package:inhacks_2023/widgets/custom_icon_button.dart';
import 'package:inhacks_2023/widgets/form_input.dart';
import 'package:inhacks_2023/widgets/navigation_top.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  ChatDetailScreenState createState() => ChatDetailScreenState();
}

class ChatDetailScreenState extends State<ChatDetailScreen> {
  ScrollController chatScroll = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (chatScroll.hasClients) {
        chatScroll.jumpTo(chatScroll.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(AppPadding.screen),
              child: NavigationTop(
                title: 'Panti Asuhan Kasih',
                callback: () {
                  Navigator.pop(context);
                },
                isChatDetail: true,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: chatScroll,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.screen),
                  child: Column(
                    children: const [
                      ChatBubble('halo'),
                      ChatBubble('apakah barangnya sudah siap?'),
                      ChatBubble(
                        'iya, silahkan diambil...',
                        isSelf: true,
                      ),
                      ChatBubble('oke, saya akan pergi ke sana'),
                      ChatBubble(
                        'okee',
                        isSelf: true,
                      ),
                      ChatBubble('terima kasih, bajunya sangat bagus sekali'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.screen,
                vertical: 12,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                    child: FormInput(
                      placeholder: 'Ketik di sini',
                      useBottomPadding: false,
                    ),
                  ),
                  SizedBox(width: 18),
                  CustomIconButton(Icons.send)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
