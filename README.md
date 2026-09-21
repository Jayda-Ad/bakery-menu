# Bakery Products Menu

A Flutter bakery app that displays a menu of baked goods in a grid layout. Users can browse products and tap any item to view its details.

![demo](./bakery-screenshot.gif)

## Features
- **Product grid** — all bakery items displayed in a responsive 2-column grid
- **Product cards** — each card shows the item's image, name, and price
- **Product details page** — tap any product to see a larger image, name, price, and description
- **Custom theme** — warm brown color palette and custom calligraphy font
- **Clean navigation** — smooth screen transitions using `Navigator`

## Tech Stack
- Flutter
- Dart
- Material Design widgets

## How It Works
- `main.dart` launches the app and sets `Homescreen` as the home page
- `Homescreen` holds a list of `Product` objects and displays them using `GridView.builder`
- Each grid item is a `Productcard` widget that shows the image, name, and price
- Tapping a card navigates to `ProductDetail`, passing the selected product

## How to Run

**Prerequisites:** Flutter SDK installed ([install guide](https://docs.flutter.dev/get-started/install))

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
3. Run the app:
   ```bash
   flutter run
