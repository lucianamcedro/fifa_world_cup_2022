import 'package:fifa_album_flutter/pages/my_stickers/my_stickers_page.dart';
import 'package:fifa_album_flutter/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:fifa_album_flutter/pages/my_stickers/presenter/my_stickers_presenter_impl.dart';
import 'package:fifa_album_flutter/repository/stickers/stickers_repository.dart';
import 'package:fifa_album_flutter/repository/stickers/stickers_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class MyStickersRoute extends FlutterGetItPageRoute {
  const MyStickersRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<StickersRepository>(
            (i) => StickersRepositoryImpl(dio: i())),
        Bind.lazySingleton<MyStickersPresenter>(
            (i) => MyStickersPresenterImpl(stickersRepository: i())),
      ];

  @override
  WidgetBuilder get page =>
      (context) => MyStickersPage(presenter: context.get());
}
