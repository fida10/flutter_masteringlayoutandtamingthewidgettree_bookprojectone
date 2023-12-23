// Importing the Flutter Material Design library
import 'package:flutter/material.dart';
// Importing a custom widget from another file in the same project
import 'package:masteringlayoutandtamingthewidgettree_bookprojectone/star.dart';

// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class ProfileScreen extends StatelessWidget {
  // Constructor for the ProfileScreen widget, calling the superclass constructor with a key parameter
  const ProfileScreen({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Scaffold widget, which provides a framework in which material design widgets can be placed.
    return Scaffold(
        // Creating a Stack widget, which overlays several children widgets.
        body: Stack(
      children: [
        // Inserting an Image widget that displays an image from an asset.
        Image.asset('assets/images/skyline.jpeg'),
        // Inserting a Transform widget that applies a translation transformation before painting its child.
        Transform.translate(
          // Setting the offset of the translation to 100 logical pixels down the screen.
          offset: const Offset(0, 100),
          // Creating a Column widget, which arranges its children vertically.
          child: const Column(
            // Defining the children of the Column
            children: [
              // Inserting a ProfileImage widget
              ProfileImage(),
              // Inserting a ProfileDetails widget
              ProfileDetails(),
              // Inserting a ProfileActions widget
              ProfileActions(),
            ],
          ),
        )
      ],
    ));
  }
}

/*
The ProfileScreen class is a StatelessWidget that builds a screen with a Stack of widgets. The Stack includes an Image widget that displays a background image, and a Column of widgets that includes a ProfileImage, ProfileDetails, and ProfileActions. The Column is translated down the screen by 100 logical pixels.
*/

// Defining another new widget class that extends StatelessWidget.
class ProfileImage extends StatelessWidget {
  // Constructor for the ProfileImage widget, calling the superclass constructor with a key parameter
  const ProfileImage({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a ClipOval widget, which clips its child to an oval shape.
    return ClipOval(
      // Inserting an Image widget that displays an image from an asset.
      child: Image.asset(
        // The name of the asset
        'assets/images/borger.jpeg',
        // Setting the width of the image to 200 logical pixels
        width: 200,
        // Setting the height of the image to 200 logical pixels
        height: 200,
        // Setting the box fit to fitWidth, which means the image will be as wide as possible within the box, with the aspect ratio preserved.
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

/*
The ProfileImage class is a StatelessWidget that builds a ClipOval widget with an Image widget inside. The Image widget displays an image from an asset and is clipped to an oval shape by the ClipOval widget. The image has a fixed width and height of 200 logical pixels and is as wide as possible within the box, with the aspect ratio preserved.
*/

// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class ProfileDetails extends StatelessWidget {
  // Constructor for the ProfileDetails widget, calling the superclass constructor with a key parameter
  const ProfileDetails({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Padding widget, which gives its child some padding.
    return Padding(
        // Setting the padding to 20 logical pixels on all sides.
        padding: const EdgeInsets.all(20.0),
        // Creating a Column widget, which arranges its children vertically.
        child: Column(
          // Aligning the cross axis to the start (left for a Column).
          crossAxisAlignment: CrossAxisAlignment.start,
          // Defining the children of the Column
          children: [
            // Inserting a Text widget that displays a string of text with a single style.
            const Text(
              // The text to display
              'Ye ol\' scottish border collie',
              // Setting the style of the text to a font size of 35 and a weight of 600.
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            // Inserting a StarRating widget with a value of 5.
            const StarRating(value: 5),
            // Calling the _buildDetails function to create a Row of Text widgets for the age.
            _buildDetails('Age', '6'),
            // Calling the _buildDetails function to create a Row of Text widgets for the status.
            _buildDetails('Status', 'A good boy'),
          ],
        ));
  }
}

/*
The ProfileDetails class is a StatelessWidget that builds a Column of widgets with some padding. The Column includes a Text widget that displays the string 'Ye ol' scottish border collie' with a large font size and weight, a StarRating widget with a value of 5, and two Rows of Text widgets that display the age and status of the profile.
*/

// Defining a function that builds a Row of Text widgets.
Widget _buildDetails(String heading, String value) {
  // Returning a Row widget, which arranges its children horizontally.
  return Row(
    // Defining the children of the Row
    children: [
      // Inserting a Text widget that displays the heading with a bold font weight.
      Text(
        // The text to display, with a colon added for formatting.
        '$heading: ',
        // Setting the style of the text to a bold font weight.
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      // Inserting another Text widget that displays the value.
      Text(value),
    ],
  );
}

/*
The _buildDetails function builds a Row of Text widgets. The first Text widget displays a heading with a bold font weight, and the second Text widget displays a value. This function is used in the ProfileDetails class to display the age and status of the profile.
*/


// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class ProfileActions extends StatelessWidget {
  // Constructor for the ProfileActions widget, calling the superclass constructor with a key parameter
  const ProfileActions({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Row widget, which arranges its children horizontally.
    return Row(
      // Aligning the main axis to the center (horizontal center for a Row).
      mainAxisAlignment: MainAxisAlignment.center,
      // Defining the children of the Row
      children: [
        // Calling the _buildIcon function to create a Column of an Icon and a Text widget for 'Feed'.
        _buildIcon(Icons.restaurant, 'Feed'),
        // Calling the _buildIcon function to create a Column of an Icon and a Text widget for 'Save'.
        _buildIcon(Icons.favorite, 'Save'),
        // Calling the _buildIcon function to create a Column of an Icon and a Text widget for 'Walk'.
        _buildIcon(Icons.directions_walk, 'Walk')
      ],
    );
  }
}

/*
The ProfileActions class is a StatelessWidget that builds a Row of Columns of Icon and Text widgets. The Row is centered, and each Column represents an action that can be taken on the profile: 'Feed', 'Save', and 'Walk'. Each action is represented by an icon and a text label.
*/

// Defining a function that builds a Column of an Icon and a Text widget.
Widget _buildIcon(IconData iconData, String textForIcon) {
  // Returning a Padding widget, which gives its child some padding.
  return Padding(
    // Setting the padding to 20 logical pixels on all sides.
    padding: const EdgeInsets.all(20),
    // Creating a Column widget, which arranges its children vertically.
    child: Column(
      // Defining the children of the Column
      children: [
        // Inserting an Icon widget that displays an icon from the material design library.
        Icon(
          // The icon to display
          iconData,
          // Setting the size of the icon to 40 logical pixels
          size: 40,
        ),
        // Inserting a Text widget that displays a string of text with a single style.
        Text(
          // The text to display
          textForIcon,
          // Setting the style of the text to a font size of 15.
          style: const TextStyle(fontSize: 15),
        ),
      ],
    ),
  );
}

/*
The _buildIcon function builds a Column of an Icon and a Text widget with some padding. The Icon widget displays an icon from the material design library, and the Text widget displays a string of text with a single style. This function is used in the ProfileActions class to create the actions that can be taken on the profile.
*/