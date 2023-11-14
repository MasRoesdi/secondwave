import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/notification_item.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Notifikasi Permintaan',
          style: TextStyle(),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 18),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppPadding.screen,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(235, 235, 235, 1),
                      ),
                      child: DropdownButton(
                        value: val,
                        isExpanded: true,
                        underline: Container(),
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text('Semua'),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text('Makanan'),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text('Minuman'),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text('Elektronik'),
                          ),
                          DropdownMenuItem(
                            value: 4,
                            child: Text('Pakaian'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            val = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.screen),
                  child: Column(
                    children: const [
                      NotificationItem(),
                      NotificationItem(isCompleted: true),
                      NotificationItem(isCompleted: true),
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
