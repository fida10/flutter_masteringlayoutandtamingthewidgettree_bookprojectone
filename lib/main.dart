// Import the Material Design package, which provides visual, behavioral, and motion-rich widgets.
import 'package:flutter/material.dart';

// Import the custom Dart files for the DeepTree, FlexScreen, and ProfileScreen classes.
import 'package:masteringlayoutandtamingthewidgettree_bookprojectone/deep_tree.dart';
import 'package:masteringlayoutandtamingthewidgettree_bookprojectone/flex_screen.dart';
import 'package:masteringlayoutandtamingthewidgettree_bookprojectone/profile_screen.dart';

// Define the main function that is the entry point for the Dart program.
void main() {
  // Call the runApp function with an instance of MyApp.
  // runApp makes the given widget the root of the widget tree and initializes the app.
  runApp(const MyApp());
}

// Define a new class named MyApp that extends StatelessWidget.
// StatelessWidget is a widget that describes part of the user interface which can depend on configuration information in the constructor and doesn't change over time.
class MyApp extends StatelessWidget {
  // Define a constant constructor for MyApp.
  // This constructor calls the constructor of the superclass (StatelessWidget) with a named parameter key.
  const MyApp({super.key});

  // Override the build method that is called when Flutter needs to render this widget.
  // The build method returns a widget which describes what this widget looks like.
  @override
  Widget build(BuildContext context) {
    // Return a MaterialApp widget that provides a number of widgets required for Material Design apps.
    return MaterialApp(
      // Set the title of the MaterialApp to 'Flutter Demo'.
      title: 'Flutter Demo',
      // Set the theme of the MaterialApp.
      // The theme is used by the widgets in the app to determine their colors, font sizes, etc.
      theme: ThemeData(
        // Set the color scheme of the theme.
        // The color scheme is used by many Material widgets.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Set the primary swatch of the theme.
        // The primary swatch is used to generate the theme's primary color, primary color dark, primary color light, etc.
        primarySwatch: Colors.grey,
        // Enable the use of Material 3.
        // Material 3 is a design system that helps teams build high-quality digital experiences.
        useMaterial3: true,
      ),
      // Set the home of the MaterialApp to an instance of FlexScreen.
      // The home is the default route of the app (i.e., the first screen that is displayed when the app is launched).
      home: const FlexScreen(),
      // Uncomment the following lines to set the home to an instance of ProfileScreen or DeepTree.
      //home: const ProfileScreen(),
      //home: const DeepTree(),
    );
  }
}
// The MyApp class is a stateless widget that serves as the root of the widget tree. It returns a MaterialApp widget, which provides a number of widgets required for Material Design apps. The MaterialApp is configured with a theme that determines the colors, font sizes, etc. used by the widgets in the app. The home of the MaterialApp is set to an instance of FlexScreen, but it can be changed to an instance of ProfileScreen or DeepTree.



/*
Usages of theme, implicitly: 

Sure, the theme you've defined in your MaterialApp widget will be used by default in many Material widgets. Here are a few examples:

AppBar color: The AppBar widget uses the primary color from the theme as its background color by default.

AppBar(
  title: Text('App Bar'),
  // The background color is set to the theme's primary color by default.
)

FloatingActionButton color: The FloatingActionButton widget uses the primary color from the theme as its background color by default.

FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  // The background color is set to the theme's primary color by default.
)

Text style: The Text widget uses the textTheme from the theme for its style by default.

Text(
  'This is some text',
  // The style is set to the theme's textTheme.bodyText2 by default.
)

Button color: The TextButton, ElevatedButton, and OutlinedButton widgets use the primary color from the theme for their text color or background color by default.

ElevatedButton(
  onPressed: () {},
  child: Text('Button'),
  // The background color is set to the theme's primary color by default.
)

In all these examples, you don't need to explicitly set the color or style. The widgets will use the theme's colors and styles by default.
 */

/*
Usages of theme, implicitly: 

You can access the theme data explicitly using the Theme.of(context) function. This function returns the nearest Theme in the widget tree. Here are some examples:

AppBar color: You can set the AppBar color explicitly using the theme's primary color.

AppBar(
  title: Text('App Bar'),
  backgroundColor: Theme.of(context).primaryColor, // Explicitly set the background color to the theme's primary color.
)

FloatingActionButton color: You can set the FloatingActionButton color explicitly using the theme's primary color.

FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  backgroundColor: Theme.of(context).primaryColor, // Explicitly set the background color to the theme's primary color.
)

Text style: You can set the Text style explicitly using the theme's text theme.

Text(
  'This is some text',
  style: Theme.of(context).textTheme.bodyText2, // Explicitly set the style to the theme's textTheme.bodyText2.
)

Button color: You can set the ElevatedButton color explicitly using the theme's primary color.
In all these examples, you're explicitly setting the color or style using the theme data from the context.

ElevatedButton(
  onPressed: () {},
  child: Text('Button'),
  style: ElevatedButton.styleFrom(
    primary: Theme.of(context).primaryColor, // Explicitly set the background color to the theme's primary color.
  ),
)

 */