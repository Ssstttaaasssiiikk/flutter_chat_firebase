import 'package:chat_flutter_firebase/services/auth/auth_service.dart';
import 'package:chat_flutter_firebase/components/app_button.dart';
import 'package:chat_flutter_firebase/components/app_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 32,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 50),
            Text(
              'Создание аккаунта',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            AppTextfield(
              hintText: 'email',
              controller: _email,
            ),
            const SizedBox(height: 10),
            AppTextfield(
              hintText: 'пароль',
              controller: _password,
            ),
            const SizedBox(height: 10),
            AppTextfield(
              hintText: 'подтверждение пароль',
              controller: _confirmPassword,
            ),
            const SizedBox(height: 25),
            AppButton(
              text: 'создать пользователя',
              onTap: () => register(context),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Есть аккаунт?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextButton(
                  onPressed: onTap,
                  child: Text(
                    'Войти',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
