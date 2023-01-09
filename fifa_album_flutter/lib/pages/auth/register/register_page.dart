import 'package:fifa_album_flutter/core/ui/styles/text_styles.dart';
import 'package:fifa_album_flutter/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 106.82,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bola.png',
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Cadastrar Usuário',
              style: context.textstyles.titleBlack,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(label: Text('Nome Completo *,')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(label: Text('E-mail *,')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(label: Text('Senha *,')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(label: Text('Confirma Senha,')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button.primary(
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width * .9,
                      label: 'Cadastrar'),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
