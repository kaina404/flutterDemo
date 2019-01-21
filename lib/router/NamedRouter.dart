import 'package:flutter/material.dart';

class NamedRouter {
  static Map<String, WidgetBuilder> routes;

  static Widget initApp() {
    return MaterialApp(
      initialRoute: '/',
      routes: NamedRouter.initRoutes(),
    );
  }

  static initRoutes() {
    routes = {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen()
    };
    return routes;
  }


}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
            // Navigate to the second screen using a named route
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
