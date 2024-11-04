import 'package:chat_flutter_firebase/services/auth/auth_service.dart';
import 'package:chat_flutter_firebase/components/app_button.dart';
import 'package:chat_flutter_firebase/components/app_textfield.dart';
import 'package:chat_flutter_firebase/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(_email.text, _password.text);
    } catch (error) {
      showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context) => AlertDialog(
          title: Text(error.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            child: Column(
              children: [
                Text(
                  'Войти',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 30),
                Wrap(
                  runSpacing: 15,
                  direction: Axis.horizontal,
                  children: [
                    AuthTextField(
                      controller: _email,
                      label: 'Email',
                      isPassword: false,
                      error: false,
                    ),
                    AuthTextField(
                      controller: _password,
                      label: 'Пароль',
                      isPassword: true,
                      error: false,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                CustomButton(
                  loading: false,
                  text: 'Войти',
                  onPressed: () => login(context),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'У вас нет аккаунта?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextButton(
                      onPressed: onTap,
                      child: Text(
                        'Создать',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.blue),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
