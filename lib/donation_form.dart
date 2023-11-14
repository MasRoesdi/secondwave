import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inhacks_2023/finish.dart';
import 'package:inhacks_2023/widgets/form_input.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class DonationFormScreen extends StatefulWidget {
  const DonationFormScreen({super.key});

  @override
  DonationFormScreenState createState() => DonationFormScreenState();
}

class DonationFormScreenState extends State<DonationFormScreen> {
  int? val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Formulir Donasi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(AppPadding.screen),
                  child: Column(
                    children: [
                      const ImageInput(),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 18),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: [
                            const FormInput(placeholder: 'Nama Produk'),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 24),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: DropdownButton(
                                      value: val,
                                      hint: const Text('Kategori'),
                                      isExpanded: true,
                                      underline: Container(),
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 0,
                                          child: Text('Makanan'),
                                        ),
                                        DropdownMenuItem(
                                          value: 1,
                                          child: Text('Minuman'),
                                        ),
                                        DropdownMenuItem(
                                          value: 2,
                                          child: Text('Elektronik'),
                                        ),
                                        DropdownMenuItem(
                                          value: 3,
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
                              ],
                            ),
                            // TODO number input
                            const FormInput(placeholder: 'Alamat'),
                            const FormInput(
                              placeholder: 'Deskripsi',
                              isMultipleLine: true,
                              useBottomPadding: false,
                            ),
                          ],
                        ),
                      ),
                      OpaqueButton(
                        'Kirim',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        padX: 32,
                        padY: 16,
                        callback: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FinishScreen(),
                            ),
                          );
                        },
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

// Needs imagePicker package
class ImageInput extends StatelessWidget {
  const ImageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.zero),
      ),
      onPressed: () async {
        ImagePicker().pickImage(source: ImageSource.gallery);
      },
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/icons/image_input.png'),
                      Text(
                        'Choose Image',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Support: JPG, PNG, JPEG',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
