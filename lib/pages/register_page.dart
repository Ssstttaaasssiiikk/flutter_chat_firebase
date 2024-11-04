import 'package:chat_flutter_firebase/services/auth/auth_service.dart';
import 'package:chat_flutter_firebase/components/app_button.dart';
import 'package:chat_flutter_firebase/components/app_textfield.dart';
import 'package:chat_flutter_firebase/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register(BuildContext context) {
    final auth = AuthService();
    if (_password.text == _confirmPassword.text) {
      try {
        auth.signUpWithEmailPassword(_email.text, _password.text);
      } catch (error) {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => AlertDialog(
            title: Text(error.toString()),
          ),
        );
      }
    } else {
      showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Пароли не совпадают'),
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
                  'Создание аккаунта',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 30),
                Wrap(
                  runSpacing: 15,
                  direction: Axis.horizontal,
                  children: [
                    AuthTextField(
                      error: false,
                      controller: _login,
                      label: 'Логин',
                      isPassword: false,
                    ),
                    AuthTextField(
                      error: false,
                      controller: _email,
                      label: 'Email',
                      isPassword: false,
                    ),
                    AuthTextField(
                      error: false,
                      controller: _password,
                      label: 'Пароль',
                      isPassword: true,
                    ),
                    AuthTextField(
                      error: false,
                      controller: _confirmPassword,
                      label: 'Подтвердите пароль',
                      isPassword: true,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomButton(
                  loading: false,
                  text: 'Создать аккаунт',
                  onPressed: () => register(context),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'У вас есть аккаунт?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextButton(
                      onPressed: onTap,
                      child: Text(
                        'Войти',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.blue),
                      ),
                    ),
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
