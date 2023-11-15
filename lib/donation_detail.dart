import 'package:flutter/material.dart';
import 'package:inhacks_2023/request_form.dart';
import 'package:inhacks_2023/route.dart';
import 'package:inhacks_2023/widgets/navigation_top.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/plain_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';
import 'package:inhacks_2023/widgets/text_wrapper.dart';

class DonationDetailScreen extends StatelessWidget {
  const DonationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: AppPadding.screen,
                top: AppPadding.screen,
                right: AppPadding.screen,
              ),
              child: NavigationTop(callback: () {
                Navigator.pop(context);
              }),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: AppPadding.screen,
                    bottom: AppPadding.screen,
                    right: AppPadding.screen,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/furnish-4.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Text(
                            ' 4.5 ',
                            style: TextStyle(fontSize: 14),
                          ),
                          PlainButton(
                            ' See review ',
                            size: 13,
                            fontWeight: FontWeight.normal,
                            callback: () {},
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Deskripsi',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const TextWrapper(
                        Text(
                          'Kami memiliki 3 buah meja yang masih dalam kondisi'
                          'baik dan layak digunakan, namun kami ingin memberikannya '
                          'kepada mereka yang membutuhkannya. Meja ini adalah pilihan '
                          'yang sempurna untuk rumah atau ruang belajar. Desainnya simpel, '
                          'kokoh, dan sangat fungsional.',
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Alamat',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const TextWrapper(
                        Text(
                          'DI Pandjaitan No. 128, Purwokerto Selatan',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/food-1.jpg'),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Riyad Alam',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                '05 November 2023, 17.47',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: AppPadding.screen,
                bottom: AppPadding.screen,
                right: AppPadding.screen,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: OpaqueButton(
                      'Lihat Maps',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      padX: 32,
                      padY: 16,
                      color: Colors.transparent,
                      textColor: AppColors.primary,
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RouteScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: OpaqueButton(
                      'Dapatkan',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      padX: 32,
                      padY: 16,
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RequestFormScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MapsButton extends StatelessWidget {
  const MapsButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
