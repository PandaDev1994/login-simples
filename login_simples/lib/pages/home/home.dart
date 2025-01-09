import 'package:flutter/material.dart';
import 'package:meu_app/comuns/button_custom.dart';
import 'package:meu_app/comuns/colors.dart';
import '../../comuns/scaffold_messenger_custom.dart';
import '../../comuns/text_form_field_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isObscured = false;

  final FocusNode _focusNode = FocusNode();

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final String nome = "Alexandre";
  final String password = "123456";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _focusNode.requestFocus());
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textFormFieldCustom(
              _loginController,
              'Login',
              'Digite seu login aqui',
              false,
              null,
              false,
              null,
              null,
              _focusNode
            ),
            textFormFieldCustom(
              _passwordController,
              'Senha',
              'Digite sua senha aqui',
              true,
              isObscured,
              true,
              isObscured ? Icons.visibility_off : Icons.visibility,
              () => toggleIcon(),
              FocusNode(),
            ),
            buttonCustom(
              'Entrar',
              () => login(),
              Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  login() {
    if (_passwordController.text == password && _loginController.text == nome) {
      _passwordController.text = '';
      _loginController.text = '';
      _focusNode.requestFocus();
      scaffoldMessenger('Bem-vindo', AppColors.success,context);
    } else {
      scaffoldMessenger('Login ou senha incorreto', AppColors.error,context);
    }
  }

  toggleIcon() {
    setState(() {
      isObscured = !isObscured;
    });
  }
}
