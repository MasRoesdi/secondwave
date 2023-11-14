import 'package:flutter/material.dart';
import 'package:inhacks_2023/chat.dart';
import 'package:inhacks_2023/donation_form.dart';
import 'package:inhacks_2023/home.dart';
import 'package:inhacks_2023/profile.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  AppScaffoldState createState() => AppScaffoldState();
}

class AppScaffoldState extends State<AppScaffold> {
  List<Widget> pages = [
    const HomeScreen(),
    const DonationFormScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png'),
            activeIcon: Image.asset('assets/icons/home_active.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/donation.png'),
            activeIcon: Image.asset('assets/icons/donation_active.png'),
            label: 'Formulir Donasi',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/chat.png'),
            activeIcon: Image.asset('assets/icons/chat_active.png'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png'),
            activeIcon: Image.asset('assets/icons/profile_active.png'),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
