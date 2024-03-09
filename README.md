# Pizza App

Pizza App is a mobile application developed using Flutter and Flutter Bloc, following the Clean Architecture principles. This app allows users to browse a variety of pizzas, customize their orders, and place them.

## Features

- View a list of available pizzas.
- Customize pizza toppings and size.
- Add pizzas to the cart.
- Place pizza orders.

## Technologies Used

- Flutter: [Flutter Documentation](https://flutter.dev/)
- Flutter Bloc: [Flutter Bloc Documentation](https://pub.dev/packages/flutter_bloc)

## Project Structure

The project follows Clean Architecture principles, separating code into layers:

- **presentation:** Contains the UI layer, including screens, widgets, and bloc event listeners.
- **domain:** Defines the core business logic and entities.
- **data:** Implements the data sources and repositories.
- **injection:** Handles dependency injection using the `get_it` package.

## Getting Started

### Prerequisites

Make sure you have Flutter installed. For installation instructions, refer to the [Flutter documentation](https://flutter.dev/docs/get-started/install).

### Running the App

1. Clone the repository:

   ```
   git clone https://github.com/ManU4kym/sizzle-and-sauce.git
2. Navigate to project:
    ````
   cd pizaa_app
3. Install dependencies:
    ````
   flutter pub get
3. Run app
    ````
   flutter run
