import 'package:flutter/material.dart';
import 'package:inhacks_2023/login.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';
import 'package:inhacks_2023/widgets/text_wrapper.dart';

class OnboardPage extends StatelessWidget {
  final String assetName;
  final String title;
  final String description;
  final int pageIndex;
  final bool isLast;

  const OnboardPage({
    required this.assetName,
    required this.title,
    required this.description,
    required this.pageIndex,
    this.isLast = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(AppPadding.screen),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            assetName,
            width: screenSize.width * 0.7,
            height: screenSize.height * 0.45,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(3, (index) {
              return Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: pageIndex == index ? Colors.black : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              );
            }),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: screenSize.height * 0.025),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 18),
          if (isLast)
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: OpaqueButton(
                    'Mulai >',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    padX: 0,
                    padY: 16,
                    callback: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
