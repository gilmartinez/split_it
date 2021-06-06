import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:split_it/modules/home/widgets/add_button.dart';
import 'package:split_it/modules/home/widgets/info_card_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  // final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({required this.onTapAddButton})
      : super(
            preferredSize: Size.fromHeight(298),
            child: Stack(
              children: [
                Container(
                  height: 230,
                  color: AppTheme.colors.appBarBackground,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 62),
                      child: ListTile(
                        leading: ClipRRect(
                          child: Image.asset(
                            'assets/images/gil.png',
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: Text(
                          'Gilberto',
                          style: AppTheme.textStyles.appBarTitle,
                        ),
                        trailing: AddButtonWidget(
                          onTap: onTapAddButton,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoCardWidget(value: 142),
                        InfoCardWidget(value: -42),
                      ],
                    )
                  ],
                ),
              ],
            ));
}


/**
 * 
 * AppBar(
        backgroundColor: AppTheme.colors.title,
        toolbarHeight: 120,
        title: Text(
          "Gilberto",
          style: AppTheme.textStyles.homeTitle,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: 80,
            height: 80,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // child: Image.network(user.photoUrl!),
                child: Image.asset("assets/images/gil.png")),
          ),
        ),
        actions: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 48,
                  height: 56,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.3),
                      borderRadius: BorderRadius.circular(8)),
                  child: IconButton(
                    iconSize: 18,
                    icon: Icon(Icons.add),
                    onPressed: () => {},
                  ),
                ),
              ),

              // IconButton(icon: Icon(Icons.phone_locked), onPressed: () => {})
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
            ],
          )
        ],
      ),
 * 
 */