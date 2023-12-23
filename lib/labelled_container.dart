// Importing the Flutter Material Design library
import 'package:flutter/material.dart';

// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class LabelledContainer extends StatelessWidget {
  // Defining a final variable for the text of the LabelledContainer
  final String text;
  // Defining a final variable for the width of the LabelledContainer
  final double? width;
  // Defining a final variable for the height of the LabelledContainer
  final double? height;
  // Defining a final variable for the color of the LabelledContainer
  final Color? color;
  // Defining a final variable for the color of the text
  final Color? textColor;

  // Constructor for the LabelledContainer widget, calling the superclass constructor with a key parameter and initializing the text, width, height, color, and textColor
  const LabelledContainer({
    super.key,
    // The text is required
    required this.text,
    // The width is optional
    this.width,
    // The height defaults to double.infinity if not provided
    this.height = double.infinity,
    // The color is optional
    this.color,
    // The textColor is optional
    this.textColor,
  });

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Container widget, which is a convenience widget that combines common painting, positioning, and sizing widgets.
    return Container(
      // Setting the width of the container to the width variable
      width: width,
      // Setting the height of the container to the height variable
      height: height,
      // Setting the color of the container to the color variable
      color: color,
      // Aligning the child of the container to the center
      alignment: Alignment.center,
      // Creating a Text widget as the child of the container
      child: Text(
        // Setting the text of the Text widget to the text variable
        text,
        // Setting the style of the Text widget
        style: TextStyle(
            // Setting the color of the text to the textColor variable
            color: textColor,
            // Setting the font size of the text to 20
            fontSize: 20),
      ),
    );
  }
}

/*
The LabelledContainer class is a StatelessWidget that builds a Container widget with a Text widget as its child. The Container widget has a width, height, and color, and it aligns its child to the center. The Text widget displays a string of text with a specific color and font size. The text, width, height, color, and textColor are all variables that can be specified when creating a LabelledContainer widget.
*/