import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/appbar_widget.dart';
import 'package:split_it/modules/home/widgets/info_card_widget.dart';
// import 'package:split_it/modules/login/models/user_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final UserModel user =
    //     ModalRoute.of(context)!.settings.arguments as UserModel;
    // print(user);

    return Scaffold(
      appBar: AppBarWidget(
        onTapAddButton: () {
          print("clicou");
        },
      ),
    );
  }
}
