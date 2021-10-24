// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_assignment/pages/favorite.dart';
import 'package:flutter_assignment/pages/home_page.dart';
import 'package:flutter_assignment/pages/nearBy.dart';
import 'package:flutter_assignment/pages/notification.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:provider/provider.dart';

class ChoosingClass extends StatelessWidget {
  const ChoosingClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.of<ChangingIndex>(context).index == 1
        ? HomePage()
        : Provider.of<ChangingIndex>(context).index == 2
            ? Favorite()
            : Provider.of<ChangingIndex>(context).index == 3
                ? NearBy()
                : Notifi();
  }
}
