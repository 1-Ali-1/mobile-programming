import 'package:flutter/material.dart';

class ButtonNavBar extends StatelessWidget {
  final String text;
  final bool isSelected;
  final IconData icon;
  const ButtonNavBar({
    Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: isSelected ? 10 : 0,
                  right: 0.1,
                  child: SizedBox(
                    width: 45,
                    height: 45,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        isSelected
                            ? Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              )
                            : Container(),
                        isSelected
                            ? Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.teal[900],
                                  ),
                                ),
                              )
                            : Container(),
                        Center(
                            child: Icon(
                          icon,
                          color: Colors.white,
                          size: 30,
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
