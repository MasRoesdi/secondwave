import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/form_input.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class ProfileFormScreen extends StatelessWidget {
  const ProfileFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text('Edit Akun'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppPadding.screen),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FormInput(
              placeholder: 'Nama Lengkap',
              icon: Icons.person_outline,
            ),
            const FormInput(
              placeholder: 'Nama Pengguna',
              icon: Icons.person_outline,
            ),
            const FormInput(
              placeholder: 'Email',
              icon: Icons.mail_outline,
            ),
            const FormInput(
              placeholder: 'Password',
              icon: Icons.lock_outline,
            ),
            const FormInput(
              placeholder: 'Nomor Telepon',
              icon: Icons.phone_outlined,
            ),
            const FormInput(
              placeholder: 'Alamat',
              icon: Icons.pin_drop_outlined,
            ),
            OpaqueButton(
              'Simpan',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              padX: 64,
              padY: 16,
              callback: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
