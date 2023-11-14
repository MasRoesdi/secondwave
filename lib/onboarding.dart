import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/onboard_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            OnboardPage(
              assetName: 'assets/images/onboard-1.png',
              title: 'Second Wave',
              description:
                  'Selamat datang! Kami siap membantu anda berbagi kebaikan.',
              pageIndex: 0,
            ),
            OnboardPage(
              assetName: 'assets/images/onboard-1.png',
              title: 'Aksi Baik dengan Sentuhan Anda',
              description:
                  'Anda adalah pahlawan kebaikan. Kami akan membantu anda menyebarkan kebaikan ini.',
              pageIndex: 1,
            ),
            OnboardPage(
              assetName: 'assets/images/onboard-2.png',
              title: 'Satu Donasi, Ribuan Senyum',
              description:
                  'Sebuah pelukan kebaikan untuk dunia yang sedang berjuang. Ayo berkontribusi!',
              pageIndex: 2,
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}
