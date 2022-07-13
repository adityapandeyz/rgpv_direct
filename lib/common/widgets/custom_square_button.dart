import 'package:flutter/material.dart';
import 'package:rgpv_direct/constants/global_variables.dart';

class CustomSquareButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final String heroTagStr;

  const CustomSquareButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.heroTagStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 120,
        child: FloatingActionButton(
          heroTag: heroTagStr,
          onPressed: onTap,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          backgroundColor: GlobalVariables.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
