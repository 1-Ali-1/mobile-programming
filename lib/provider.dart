import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ChangingIndex extends ChangeNotifier {
  int index = 1;
int drawerIsOpen = 1;
  

  changeIndex(int i) {
    index = i;
    notifyListeners();
  }

  changeDrawer(int codeForOpen) {
    drawerIsOpen = codeForOpen;
    notifyListeners();
  }
}
