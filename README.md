
# 📱 Credpal Assessment

This is a mobile app built with Flutter as part of a Credpal assessment. The project focuses on clean architecture, organized folder structure, modular components, and simple state management using ViewModels.

---

## Project Overview

CredPal Assessment is a mobile application that showcases a product screen where users can:

- View products on the app
- View featured merchants on the app
- scroll to view products
- view details of selected product


## Features

- **Product Feed**: View Products
- **Scroll horizontally**: Scroll horizontally to view product feed
- **View Merchants**: View merchants involved

## 🗂️ Project Structure

```plaintext
lib/
├── config/
│   └── app_colors.dart              # App theme colors
│
├── data/
│   └── models/
│       ├── featured_merchant_model.dart
│       ├── product_model.dart
│       └── ProductCard.java         # (Possibly misplaced Java file)
│
├── presentation/
│   ├── components/
│   │   ├── home_page_widgets/
│   │   │   ├── featured_merchants_widget.dart
│   │   │   ├── home_header.dart
│   │   │   └── product_card.dart
│   │   ├── custom_search_input.dart
│   │   ├── custom_text.dart
│   │   └── gap.dart
│   └── pages/
│       └── home_page.dart
│
├── provider/
│   ├── products_view_model.dart     # ViewModel for managing state
│   └── products_view_model.g.dart   # Generated file (e.g., Freezed/MobX)
│
├── utils/
│   ├── extensions.dart
│   └── screen_utils.dart
│
└── main.dart                        # Entry point of the application 
```

## State Management

The application uses Riverpod for state management:

- ` list of products`: Fetch list of products

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:

```bash
git clone https://github.com/wilsongreat/credpal_assessment_app.git
```

2. Navigate to the project folder:

```bash
cd credpal_assessment
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

## Testing

The application includes widget tests to ensure UI components work as expected. Run tests with:

```bash
flutter test
```

### Key Test Cases

- Tab navigation functionality
- Search filtering
- Modal display for post creation

## GitHub Actions Integration

This project uses GitHub Actions for continuous integration. On each push or pull request to the
main branch, the workflow:

1. Sets up the Flutter environment
2. Gets all dependencies
3. Runs widget tests
4. Reports test results
5. Fails the workflow if any tests fail

### GitHub Actions Setup

Create a `.github/workflows/flutter_ci.yml` file with the following content:

```yaml
name: Flutter CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Setup Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.27.3'
          channel: 'stable'

      - name: Install dependencies
        run: flutter pub get

      - name: Verify formatting
        run: dart format --output=none --set-exit-if-changed .

      - name: Analyze project source
        run: flutter analyze

      - name: Run tests
        run: flutter test --coverage

      - name: Upload coverage to Codecov
        uses: codecov/codecov-action@v3
        with:
          file: coverage/lcov.info
```

## Future Improvements

- Add authentication flow
- Implement notification system
- Create user profiles

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## SCREENSHOTS AND RECORDING 

https://github.com/user-attachments/assets/a288a94b-19a5-4166-af69-25ba12ffda0e

- <img width="321" alt="Screenshot 2025-04-07 at 01 51 45" src="https://github.com/user-attachments/assets/0219dda3-25cb-40ef-a767-3a5e32b23560" />
- <img width="321" alt="Screenshot 2025-04-07 at 01 52 24" src="https://github.com/user-attachments/assets/2b135bcd-09a7-4698-a875-6f622965f9a6" />
- <img width="321" alt="Screenshot 2025-04-07 at 01 51 59" src="https://github.com/user-attachments/assets/1cdf4faf-cb23-452a-9214-7b960ef591c4" />
