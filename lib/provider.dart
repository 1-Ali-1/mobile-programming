import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ChangingIndex extends ChangeNotifier {
  int index = 1;
  changeIndex(int i) {
    index = i;
    notifyListeners();
  }
}
