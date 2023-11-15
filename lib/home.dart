import 'package:flutter/material.dart';
import 'package:inhacks_2023/notification.dart';
import 'package:inhacks_2023/widgets/donation_long.dart';
import 'package:inhacks_2023/widgets/donation_tall.dart';
import 'package:inhacks_2023/widgets/form_input.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Top(),
            Content(),
          ],
        ),
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.only(left: 24, top: 48, right: 24, bottom: 24),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Hi, Humble!',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.75),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              NotificationButton()
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            children: const [
              Text(
                'Ayo, buat perbedaan dengan berbagi!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          const FormInput(
            placeholder: 'Cari di sini',
            prefixIcon: Icons.search,
            useBottomPadding: false,
          )
        ],
      ),
    );
  }
}

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  ContentState createState() => ContentState();
}

class ContentState extends State<Content> {
  List<bool> isSelected = [true, false, false, false, false, false];
  int currentContent = 0;
  List<String> category = [
    'food',
    'furnish',
    'clothing',
    'electronics',
    'food',
    'food'
  ];
  List<String> categoryText = [
    'Makanan',
    'Furnitur',
    'Pakaian',
    'Elektronik',
    'Lain - lain',
    'Lain - lain'
  ];
  Map<String, List<String>> itemsName = {
    'food': [
      'Roti Bakar Madu',
      'Bakso Bakar',
      'Kue Ulang Tahun',
      'Pizza Vegan',
    ],
    'furnish': [
      'Kursi Hitam Modern',
      'Kursi Putih ala Bar',
      'Kursi Warna Model Minimalis',
      'Meja Multifungsi',
    ],
    'clothing': [
      'Baju Polkadot',
      'Sepatu Brand',
      'Sepatu Anak',
      'Celana Jeans',
    ],
    'electronics': [
      'Keyboard Wireless',
      'Smart Watch Bekas',
      'Wireless Mouse',
      'Headphone Kabel',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ToggleButtons(
              constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              fillColor: Colors.transparent,
              selectedColor: Colors.white,
              color: Colors.black,
              renderBorder: false,
              isSelected: isSelected,
              onPressed: (index) {
                setState(() {
                  if (!isSelected[index]) {
                    for (var i = 0; i < isSelected.length; i++) {
                      isSelected[i] = false;
                    }
                    isSelected[index] = true;
                    currentContent = index;
                  }
                });
              },
              children: [
                for (var i = 0; i < isSelected.length; i++)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isSelected[i]
                          ? AppColors.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      categoryText[i],
                      style: TextStyle(
                        fontWeight:
                            isSelected[i] ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 1; i <= 4; i++)
                          DonationTall(
                            assetName:
                                'assets/images/${category[currentContent]}-$i.jpg',
                            address: 'Purwokerto Selatan',
                            rating: 4.5,
                            itemName:
                                itemsName[category[currentContent]]![i - 1],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  for (var i = 1; i <= 4; i++)
                    DonationLong(
                      assetName:
                          'assets/images/${category[currentContent]}-$i.jpg',
                      address: 'Purwokerto Selatan',
                      distance: 3.3,
                      itemName: itemsName[category[currentContent]]![i - 1],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStatePropertyAll(Size.zero),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NotificationScreen(),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.asset('assets/icons/notification.png'),
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(64),
            ),
          ),
        ],
      ),
    );
  }
}
