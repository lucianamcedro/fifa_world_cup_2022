import 'package:fifa_album_flutter/core/ui/styles/button_styles.dart';
import 'package:fifa_album_flutter/core/ui/styles/colors_app.dart';
import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_login.png'),
                  fit: BoxFit.cover)),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          (MediaQuery.of(context).size.width > 450 ? .30 : .25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Text(
                          'Login',
                          style: context.textstyles.titleWhite,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text('E-mail')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Esqueceu a senha?',
                        style: context.textstyles.textSecondaryFontMedium
                            .copyWith(
                                color: context.colors.yellow, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Button(
                        width: MediaQuery.of(context).size.width * .9,
                        style: context.buttonStyle.yellowButton,
                        labelStyle: context
                            .textstyles.textSecondaryFontExtraBoldPrimaryColor,
                        label: 'Entrar'),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    Text.rich(
                      style: context.textstyles.textSecondaryFontMedium
                          .copyWith(color: Colors.white),
                      TextSpan(text: 'Não possui uma conta? ', children: [
                        TextSpan(
                          text: 'Cadastra-se',
                          style: context.textstyles.textPrimaryFontMedium
                              .copyWith(color: context.colors.yellow),
                        ),
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
