# todo_list

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# TODO List Application

A responsive Flutter application developed to manage daily tasks with a simple and user-friendly interface. This project also demonstrates important Flutter concepts through 10 practical experiments.

## Features

* Add and manage daily tasks
* Display task lists
* Delete tasks
* Responsive user interface
* Navigation between screens
* Stateful and Stateless Widgets
* Custom widgets and themes
* Form validation
* Animations
* REST API integration
* Unit and widget testing

## Technologies Used

* Flutter
* Dart
* Visual Studio Code
* Git and GitHub
* Provider
* REST API

## Flutter Experiments

This project covers the following 10 Flutter concepts:

1. **Dart Basics** – Hello World program and arithmetic operations.
2. **Flutter Widgets and Layouts** – Exploring widgets and implementing Row, Column and Stack layouts.
3. **Responsive UI Design** – Implementing MediaQuery and breakpoints for different screen sizes.
4. **Navigation Between Screens** – Implementing navigation using Navigator and named routes.
5. **State Management** – Understanding Stateful and Stateless widgets, setState and Provider.
6. **Custom Widgets and Themes** – Creating reusable widgets and applying custom themes and styles.
7. **Forms and Validation** – Designing forms with input fields, validation and error handling.
8. **Animations** – Implementing AnimatedOpacity and AnimatedSlide.
9. **REST API Integration** – Fetching data from an API and displaying it in the UI.
10. **Testing and Debugging** – Writing widget tests and checking application functionality.
## Screenshots

### Experiment 1 – Dart Basics
![Experiment 1](<screenshots/Experiment 1 - Dart Basics.png>)

### Experiment 2 – Flutter Widgets and Layouts
![Experiment 2](<screenshots/Experiment 2 - Layouts and Widgets.png>)

### Experiment 3 – Responsive UI Design
![Experiment 3](<screenshots/Experiment 3 - Mediaqueries and Responsive UI.png>)

### Experiment 4 – Navigation
![Experiment 4](<screenshots/Experiment 4 - Namedroutes and Navigation.png>)

### Experiment 5 – State Management
![Experiment 5](<screenshots/Experiment 5 - Stateful and Stateless Widget and State Management.png>)

### Experiment 6 – Custom Widgets and Themes
![Experiment 6](<screenshots/Experiment 6 - Customwidgets.png>)

### Experiment 7 – Forms and Validation
![Experiment 7](<screenshots/Experiment 7 - Formdesign.png>)

### Experiment 8 – Animations
![Experiment 8](<screenshots/Experiment 8 - Animations.png>)

### Experiment 9 – REST API Integration
![Experiment 9](<screenshots/Experiment 9 - API.png>)

### Experiment 10 – Testing and Debugging
![Experiment 10](<screenshots/Experiment 10 - Testing.png>)

## Project Structure

```text
todo_list/
│
├── lib/
│   │
│   ├── exp1/
│   │   ├── hello.dart
│   │   └── operations.dart
│   │
│   ├── exp2/
│   │   ├── layouts.dart
│   │   └── widgets.dart
│   │
│   ├── exp3/
│   │   ├── mediaquerybreakpoint.dart
│   │   └── responsiveui.dart
│   │
│   ├── exp4/
│   │   ├── namedroutes.dart
│   │   └── navigation.dart
│   │
│   ├── exp5/
│   │   ├── statefullstateless.dart
│   │   └── statemanagement.dart
│   │
│   ├── exp6/
│   │   └── customwidgets.dart
│   │
│   ├── exp7/
│   │   └── formdesign.dart
│   │
│   ├── exp8/
│   │   └── animations.dart
│   │
│   ├── exp9/
│   │   └── api.dart
│   │
│   ├── exp10/
│   │   └── testing.dart
│   │
│   └── main.dart
│
├── test/
│   └── exp10_test.dart
│
├── screenshots/
│   ├── 00_home_screen.png
│   ├── 01_exp1_dart_basics.png
│   ├── 02_exp2_widgets_layouts.png
│   ├── 03_exp3_responsive_ui.png
│   ├── 04_exp4_navigation.png
│   ├── 05_exp5_state_management.png
│   ├── 06_exp6_themes_styling.png
│   ├── 07_exp7_forms_validation.png
│   ├── 08_exp8_animations.png
│   ├── 09_exp9_rest_api.png
│   └── 10_exp10_testing_debugging.png
│
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

## Getting Started

### Prerequisites

* Flutter SDK
* Dart SDK
* Visual Studio Code
* Google Chrome

### Installation

1. Clone the repository:

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

2. Open the project folder:

```bash
cd todo_list
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the main application:

```bash
flutter run -d chrome
```

### Run Individual Experiments

Each experiment is maintained in a separate Dart file.

For example:

```bash
flutter run -t lib/exp2/layouts.dart -d chrome
```

You can replace the file path to run other experiments.

### Run Tests

Execute the following command:

```bash
flutter test test/exp10_test.dart
```

Expected output:

```text
00:04 +1: All tests passed!
```

## Author

TODO List Application – Flutter Lab Project.

