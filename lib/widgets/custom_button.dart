import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double? width;
  final double height;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = Colors.orange,
    this.textColor = Colors.white,
    this.width,
    this.height = 50,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
// Use this widget inside your product list or grid:
//
// dart
// ProductCard(
// product: yourProductInstance,
// onTap: () {
// // Navigate to product details or perform other actions
// },
// );

// CustomButton(
// text: 'Add to Cart',
// onPressed: () {
// // Handle button press
// },
// buttonColor: Colors.green,
// textColor: Colors.white,
// width: 200,
// height: 45,
// );
