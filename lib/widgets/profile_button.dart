import 'package:flutter/material.dart';
import 'package:inhacks_2023/profile_form.dart';

class ProfileButton extends StatelessWidget {
  final String assetName;
  final String title;

  const ProfileButton(this.assetName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.black),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 18),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileFormScreen(),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(45, 45, 45, 0.15),
                            blurRadius: 16,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(assetName),
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Text(
                  '>',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
