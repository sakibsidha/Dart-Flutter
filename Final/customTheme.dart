final ThemeData customTheme = ThemeData(
	useMaterial3: true,
	colorScheme: ColorScheme.fromSeed(
		seedColor: Colors.green,
		secondary: Colors.yellow,
	),
	scaffoldBackgroundColor: Colors.white,
	textTheme: TextTheme(
		headlineLarge: TextStyle(
			fontSize: 32,
			fontWeight: FontWeight.bold,
		),
		bodyLarge: TextStyle(
			fontSize: 16,
			color: Colors.black,
		)
	),
	appBarTheme: AppBarTheme(
		centerTitle: true,
		backgroundColor: Colors.green,
	),
	elevatedButtonTheme: ElevatedButtonThemeData(
		style: ElevatedButton.styleFrom(
			backgroundColor: Colors.blueAccent,
		)
	)
)
