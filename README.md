# Navigation by Routes - (Method 3 - Professional Approach)

## Navigator.pushNamed(arguments)

### Step 1: Define Routes 
<b> routes_names.dart </b>

```
class RouteName {
  static const String homeScreen = 'home_screen';
  static const String screenTwo = 'screen_two';
  static const String screenThree = 'screen_three';
}
```


### Step 2: Use Switch Case

- <b> Use </b> `static Route<dynamic> generateRoute(RouteSettings settings)` 
- <b> Use </b> `data: settings.arguments as Map` <b> on MaterialPageRoute </b>



<b> routes.dart </b>
```
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: ((context) => const HomeScreen()));

      case RouteName.screenTwo:
        return MaterialPageRoute(
            builder: ((context) => ScreenTwo(data: settings.arguments as Map)));

      case RouteName.screenThree:
        return MaterialPageRoute(
            builder: ((context) =>
                ScreenThree(data: settings.arguments as Map)));

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Route Defined")),
          );
        });
    }
  }
}

```



### Step 3: Use initialRoute and onGenerateRoute with this method
<b>main.dart</b>
```
initialRoute: RouteName.homeScreen,
onGenerateRoute: Routes.generateRoute,
```

