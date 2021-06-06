import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController loginController;

  @override
  void initState() {
    loginController = LoginController(
      service: LoginServiceImpl(),
      onUpdate: () {
      if (loginController.state is LoginStateSuccess) {
        final user  = loginController.user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset("assets/images/emoji.png"),
                  title: Text(
                    "Faça seu login com uma das contas abaixo",
                    style: AppTheme.textStyles.button,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              if (loginController.state is LoginStateLoading) ...[
                CircularProgressIndicator(),
              ] else if (loginController.state is LoginStateFailure) ...[
                Text((loginController as LoginStateFailure).message)
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: SocialButtonWidget(
                    imagePath: "assets/images/google.png",
                    label: "Entrar com Google",
                    onTap: () {
                      loginController.googleSignIn();
                    },
                  ),
                ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SocialButtonWidget(
                  imagePath: "assets/images/apple.png",
                  label: "Entrar com Apple",
                  onTap: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
