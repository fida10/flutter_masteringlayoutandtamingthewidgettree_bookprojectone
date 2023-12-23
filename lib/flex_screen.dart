// Importing the Flutter Material Design library
import 'package:flutter/material.dart';
// Importing a custom widget from another file in the same project
import 'package:masteringlayoutandtamingthewidgettree_bookprojectone/labelled_container.dart';

// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the UI that can't change over time.
class FlexScreen extends StatelessWidget {
  // Constructor for the FlexScreen widget, calling the superclass constructor with a key parameter
  const FlexScreen({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Scaffold widget, which provides a framework in which material design widgets can be placed.
    return Scaffold(
      // Creating an AppBar at the top of the Scaffold
      appBar: AppBar(
        // Setting the title of the AppBar
        title: const Text('Appbar title, flexible'),
      ),
      // Creating a SafeArea widget, which adjusts its child widget to avoid operating system interfaces like the notch on an iPhone X.
      body: SafeArea(
        // Creating a Column widget, which arranges its children vertically.
        child: Column(
          // Aligning the children of the Column along the start of the horizontal axis (left side for left-to-right languages).
          crossAxisAlignment: CrossAxisAlignment.start,
          // Defining the children of the Column
          children: <Widget>[
            // Using a spread operator (...) to insert multiple widgets returned by the _header method.
            ..._header(context, 'Expanded'),
            // Inserting a DemoExpanded widget
            const DemoExpanded(),
            // Using a spread operator (...) to insert multiple widgets returned by the _header method.
            ..._header(context, 'Flexible'),
            // Inserting a DemoFlexible widget
            const DemoFlexible(),
            // Inserting an Expanded widget that contains a Spacer widget, which creates an adjustable, empty space that can be used to tune the spacing between widgets.
            const Expanded(
              child: Spacer(),
            ),
            // Inserting a DemoFooter widget
            const DemoFooter(),
          ],
        ),
      ),
    );
  }

  // Defining a method that returns an Iterable of Widgets. This method creates a header with some space above it and a text.
  Iterable<Widget> _header(BuildContext buildContext, String text) {
    return [
      // Creating a SizedBox widget, which forces its child to have a specific width and/or height. Here it's used to create a space of 20 logical pixels.
      const SizedBox(
        height: 20,
      ),
      // Creating a Text widget, which displays a string of text with a single style.
      Text(
        // The text to display
        text,
        // Setting the style of the text using the current theme's headlineSmall style.
        style: Theme.of(buildContext).textTheme.headlineSmall,
      ),
    ];
  }
}


// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class DemoExpanded extends StatelessWidget {
  // Constructor for the DemoExpanded widget, calling the superclass constructor with a key parameter
  const DemoExpanded({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a SizedBox widget, which forces its child to have a specific width and/or height. Here it's used to create a space of 100 logical pixels.
    return const SizedBox(
      height: 100,
      // Creating a Row widget, which arranges its children horizontally.
      child: Row(
        // Defining the children of the Row
        children: [
          // Inserting a LabelledContainer widget with a specified width and color.
          LabelledContainer(
            text: '100',
            width: 100,
            color: Colors.green,
          ),
          // Inserting an Expanded widget that takes up the remaining space in the Row.
          Expanded(
              child: LabelledContainer(
            text: 'Remainder',
            color: Colors.blue,
            textColor: Colors.white,
          )),
          // Inserting another LabelledContainer widget with a specified width and color.
          LabelledContainer(
            text: '40',
            width: 40,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}

/*
The DemoExpanded class is a StatelessWidget that builds a Row of LabelledContainer widgets. The first and last LabelledContainer widgets have a fixed width, while the middle one is wrapped in an Expanded widget, which means it will take up the remaining space in the Row.
*/

// Defining another new widget class that extends StatelessWidget.
class DemoFlexible extends StatelessWidget {
  // Constructor for the DemoFlexible widget, calling the superclass constructor with a key parameter
  const DemoFlexible({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a SizedBox widget, which forces its child to have a specific width and/or height. Here it's used to create a space of 100 logical pixels.
    return const SizedBox(
      height: 100,
      // Creating a Row widget, which arranges its children horizontally.
      child: Row(
        // Defining the children of the Row
        children: [
          // Inserting a Flexible widget that takes up 1/4 of the space in the Row.
          Flexible(
            flex: 1,
            child: LabelledContainer(
              text: '25%',
              color: Colors.deepOrange,
            ),
          ),
          // Inserting another Flexible widget that also takes up 1/4 of the space in the Row.
          Flexible(
              flex: 1,
              child: LabelledContainer(
                text: '25%',
                color: Colors.orange,
              )),
          // Inserting a third Flexible widget that takes up 1/2 of the space in the Row.
          Flexible(
              flex: 2,
              child: LabelledContainer(
                text: '50%',
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}

/*
The DemoFlexible class is a StatelessWidget that builds a Row of LabelledContainer widgets. Each LabelledContainer is wrapped in a Flexible widget, which means it will take up a proportion of the space in the Row based on the flex factor. The first two LabelledContainer widgets have a flex factor of 1, so they each take up 1/4 of the space, while the third LabelledContainer has a flex factor of 2, so it takes up 1/2 of the space.
*/

// Defining a new widget class that extends StatelessWidget, meaning it describes a part of the user interface that can't change over time.
class DemoFooter extends StatelessWidget {
  // Constructor for the DemoFooter widget, calling the superclass constructor with a key parameter
  const DemoFooter({super.key});

  // Overriding the build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    // Returning a Center widget, which centers its child within itself.
    return Center(
      // Creating a Container widget, which combines common painting, positioning, and sizing widgets.
      child: Container(
        // Applying a decoration to the Container. Here it's a BoxDecoration, which is an immutable description of how to paint a box.
        decoration: BoxDecoration(
            // Setting the color of the box to yellow.
            color: Colors.yellow,
            // Setting the shape of the box to a rounded rectangle with a radius of 40 pixels.
            borderRadius: BorderRadius.circular(40)),
        // Applying padding to the Container. Here it's symmetric vertical padding of 15 pixels and horizontal padding of 30 pixels.
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
        // Creating a Text widget, which displays a string of text with a single style.
        child: Text(
          // The text to display
          'Text at the bottom',
          // Setting the style of the text using the current theme's titleSmall style.
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}

/*
The DemoFooter class is a StatelessWidget that builds a centered Container with a Text widget inside. The Container has a yellow background, rounded corners, and symmetric padding. The Text widget displays the string 'Text at the bottom' with the current theme's titleSmall style.
*/
