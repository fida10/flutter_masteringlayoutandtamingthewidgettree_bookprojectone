// Importing the Flutter Material Design library
import 'package:flutter/material.dart';

// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class Star extends StatelessWidget {
  // Defining a final variable for the color of the star
  final Color color;
  // Defining a final variable for the size of the star
  final double size;

  // Constructor for the Star widget, calling the superclass constructor with a key parameter and initializing the color and size
  const Star({super.key, required this.color, required this.size});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a SizedBox widget, which forces its child to have a specific width and height.
    return SizedBox(
      // Setting the width of the box to the size of the star
      width: size,
      // Setting the height of the box to the size of the star
      height: size,
      // Creating a CustomPaint widget, which provides a canvas on which to draw during the paint phase.
      child: CustomPaint(
        // Creating a _StarPainter object to draw the star
        painter: _StarPainter(color),
      ),
    );
  }
}

/*
The Star class is a StatelessWidget that builds a SizedBox widget with a CustomPaint widget inside. The CustomPaint widget uses a _StarPainter object to draw a star with a specific color and size. The size of the SizedBox is set to the size of the star, forcing the star to have a specific size.
*/

// Defining a new class that extends CustomPainter, which provides a canvas on which to draw during the paint phase.
class _StarPainter extends CustomPainter {
  // Defining a final variable for the color of the star
  final Color color;

  // Constructor for the _StarPainter class, initializing the color
  _StarPainter(this.color);

  // Overriding the paint method to describe how to paint the star.
  @override
  void paint(Canvas canvas, Size size) {
    // Creating a Paint object and setting its color to the color of the star
    final paint = Paint()..color = color;

    // Creating a Path object and defining the points of the star
    final path = Path()
      // Moving the starting point of the path to the top of the star
      ..moveTo(size.width * 0.5, 0)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.618, size.height * 0.382)
      // Drawing a line to the next point of the star
      ..lineTo(size.width, size.height * 0.382)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.691, size.height * 0.618)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.809, size.height)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.5, size.height * 0.7639)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.191, size.height)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.309, size.height * 0.618)
      // Drawing a line to the next point of the star
      ..lineTo(0, size.height * 0.382)
      // Drawing a line to the next point of the star
      ..lineTo(size.width * 0.382, size.height * 0.382)
      // Closing the path to create a complete star
      ..close();
    // Drawing the path on the canvas with the paint
    canvas.drawPath(path, paint);
  }

  // Overriding the shouldRepaint method to indicate when the painting should be updated.
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Returning false because the painting doesn't need to be updated when the color changes.
    return false;
  }
}

/*
The _StarPainter class extends CustomPainter and defines how to paint a star. It uses a Path object to define the points of the star and a Paint object to define the color of the star. The paint method draws the path on the canvas with the paint. The shouldRepaint method returns false, indicating that the painting doesn't need to be updated when the color changes.

Additionally: 
The _StarPainter class is responsible for drawing the star. It uses a Path object to define the points of the star. The moveTo method moves the starting point of the path, and the lineTo method draws a line from the current point to the specified point. The points are calculated as fractions of the width and height of the star, creating a star shape. The close method closes the path, creating a complete star. The canvas.drawPath method then draws the path on the canvas with the specified paint.
*/


// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class StarRating extends StatelessWidget {
  // Defining a final variable for the color of the stars
  final Color color;
  // Defining a final variable for the number of stars
  final int value;
  // Defining a final variable for the size of the stars
  final double starSize;

  // Constructor for the StarRating widget, calling the superclass constructor with a key parameter and initializing the color, value, and starSize
  const StarRating(
      {super.key,
      // The number of stars is required
      required this.value,
      // The color of the stars defaults to deep orange if not provided
      this.color = Colors.deepOrange,
      // The size of the stars defaults to 25 if not provided
      this.starSize = 25});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Row widget, which arranges its children horizontally.
    return Row(
      // Defining the children of the Row
      children:
          // Using the List.generate constructor to create a list of Padding widgets for each star
          List.generate(
              value,
              (_) =>
                  // Creating a Padding widget, which gives its child some padding.
                  Padding(
                    // Setting the padding to 20 logical pixels on all sides.
                    padding: const EdgeInsets.all(20.0),
                    // Creating a Star widget with the specified color and size.
                    child: Star(color: color, size: starSize),
                  )),
    );
  }
}

/*
The StarRating class is a StatelessWidget that builds a Row of Padding widgets for each star. The number of stars is determined by the value variable, and each star is a Star widget with the specified color and size. The List.generate constructor is used to create a list of Padding widgets, and each Padding widget gives its child (the Star widget) some padding.
*/
