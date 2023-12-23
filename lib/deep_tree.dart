// Import the Material Design package, which provides visual, behavioral, and motion-rich widgets.
import 'package:flutter/material.dart';

// Define a new class named DeepTree that extends StatelessWidget.
// StatelessWidget is a widget that describes part of the user interface which can depend on configuration information in the constructor and doesn't change over time.
class DeepTree extends StatelessWidget {
  // Define a constant constructor for DeepTree.
  // This constructor calls the constructor of the superclass (StatelessWidget) with a named parameter key.
  const DeepTree({super.key});

  // Override the build method that is called when Flutter needs to render this widget.
  // The build method returns a widget which describes what this widget looks like.
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget that provides a visual scaffold for material design widgets.
    // The Scaffold is constant, meaning it doesn't change over time.
    return const Scaffold(
      // Set the body of the Scaffold to a SafeArea widget.
      // The SafeArea widget adjusts its child widget to avoid operating system interfaces like the status bar and the keyboard.
      body: SafeArea(
        // Set the child of the SafeArea to an instance of _CenterWidgetTest.
        child: _CenterWidgetTest(),
      ),
    );
  }
}

// The DeepTree class is a stateless widget that returns a Scaffold widget. The Scaffold provides a visual scaffold for material design widgets. The body of the Scaffold is set to a SafeArea widget, which adjusts its child widget to avoid operating system interfaces. The child of the SafeArea is an instance of _CenterWidgetTest.

// Define a new private class named _CenterWidgetTest that extends StatelessWidget.
// StatelessWidget is a widget that describes part of the user interface which can depend on configuration information in the constructor and doesn't change over time.
class _CenterWidgetTest extends StatelessWidget {
  // Define a constant constructor for _CenterWidgetTest.
  // This constructor doesn't take any arguments.
  const _CenterWidgetTest();

  // Override the build method that is called when Flutter needs to render this widget.
  // The build method returns a widget which describes what this widget looks like.
  @override
  Widget build(BuildContext context) {
    // Return a Center widget that centers its child within itself.
    return Center(
        // Set the child of the Center to a Column widget.
        // The Column widget arranges its children in a vertical array.
        child: Column(
      // Align the children along the main axis to the center of the Column.
      mainAxisAlignment: MainAxisAlignment.center,
      // Define the children of the Column.
      children: [
        // Define a constant Row widget.
        // The Row widget arranges its children in a horizontal array.
        const Row(
          // Align the children along the main axis to the center of the Row.
          mainAxisAlignment: MainAxisAlignment.center,
          // Define the children of the Row.
          children: [
            // Define a FlutterLogo widget.
            // The FlutterLogo widget displays the Flutter logo.
            FlutterLogo(),
            // Define a Text widget.
            // The Text widget displays a string of text with a single style.
            Text('A second widget in this column;'),
          ],
        ),
        // Call the _expandedBlueContainer method.
        // This method returns an Expanded widget that contains a blue Container.
        _expandedBlueContainer(),
        // Define a constant Text widget.
        const Text('A tree of nested widgets :D'),
        // Define another constant Text widget.
        const Text('Here is a third!'),
      ],
    ));
  }

  // Define a method that returns an Expanded widget.
  // The Expanded widget fills the available space along the main axis in a Flex widget (like Column or Row).
  Expanded _expandedBlueContainer() {
    // Return an Expanded widget.
    return Expanded(
      // Set the child of the Expanded to a Container widget.
      // The Container widget is a convenience widget that combines common painting, positioning, and sizing widgets.
      child: Container(
        // Set the color of the Container to blue.
        color: Colors.blue,
      ),
    );
  }
}

// The _CenterWidgetTest class is a private stateless widget that returns a Center widget. The Center widget centers its child within itself. The child of the Center is a Column widget, which arranges its children in a vertical array. The children of the Column include a Row widget, the result of the _expandedBlueContainer method, and two Text widgets. The _expandedBlueContainer method returns an Expanded widget that contains a blue Container.

/*
Using flutter's built in tooling (Extract method, extract widget)


Flutter's built-in tooling in IDEs like Visual Studio Code or IntelliJ/Android Studio can significantly improve productivity. Here are a few examples:

1. Extract to Widget: This refactoring feature allows you to quickly create a new widget from a part of your code. For example, if you find that the Row widget in your _CenterWidgetTest class could be reused elsewhere, you can extract it into a new widget.

class CustomRow extends StatelessWidget {
  const CustomRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterLogo(),
        Text('A second widget in this column;'),
      ],
    );
  }
}

Then, you can use CustomRow in your _CenterWidgetTest class:

class _CenterWidgetTest extends StatelessWidget {
  const _CenterWidgetTest();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomRow(),
        _expandedBlueContainer(),
        const Text('A tree of nested widgets :D'),
        const Text('Here is a third!'),
      ],
    ));
  }

  Expanded _expandedBlueContainer() {
    return Expanded(
        child: Container(
          color: Colors.blue,
        ),
      );
  }
}

2. Extract to Method: This refactoring feature allows you to quickly create a new method from a part of your code. For example, if you find that creating the Text widget could be simplified, you can extract it into a new method:

class _CenterWidgetTest extends StatelessWidget {
  const _CenterWidgetTest();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomRow(),
        _expandedBlueContainer(),
        _buildText('A tree of nested widgets :D'),
        _buildText('Here is a third!'),
      ],
    ));
  }

  Expanded _expandedBlueContainer() {
    return Expanded(
        child: Container(
          color: Colors.blue,
        ),
      );
  }

  Widget _buildText(String text) {
    return Text(text);
  }
}

3. Hot Reload and Hot Restart: These features allow you to quickly see the changes you made in your code without losing the current application state (Hot Reload) or by resetting the application state (Hot Restart).

4. Dart DevTools: Dart DevTools is a suite of performance tools for Dart and Flutter. It provides features like widget inspector, performance and memory analysis, and network traffic inspection.

To use these features, you typically select the code you want to refactor and then choose the appropriate option from the context menu or the top menu. The exact steps can vary depending on the IDE you are using.

 */

/*
Using flutter's built in tooling (various wrap with options)

Flutter's built-in tooling in IDEs like Visual Studio Code provides various "Wrap with widget" options that can significantly improve productivity. Here are a few examples:

1. **Wrap with Container**: This is useful when you want to apply padding, margins, decoration, or some constraints to a widget. For example, if you have a Text widget and you want to add some padding around it:

Text('Hello World')

can be wrapped with a Container to become:

Container(
  padding: EdgeInsets.all(8.0),
  child: Text('Hello World'),
)

2. **Wrap with Column/Row**: This is useful when you want to group multiple widgets vertically/horizontally. For example, if you have two Text widgets and you want to display them one below the other:

Text('Hello')
Text('World')

can be wrapped with a Column to become:

Column(
  children: <Widget>[
    Text('Hello'),
    Text('World'),
  ],
)

3. **Wrap with Padding**: This is useful when you want to add some space around a widget. For example, if you have a Text widget and you want to add some space around it:

Text('Hello World')

can be wrapped with Padding to become:

Padding(
  padding: EdgeInsets.all(8.0),
  child: Text('Hello World'),
)

To use these features, you typically select the widget you want to wrap and then choose the appropriate "Wrap with widget" option from the context menu or the top menu. The exact steps can vary depending on the IDE you are using.
*/