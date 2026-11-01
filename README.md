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
![Experiment 1](Screenshots/Experiment%201%20-%20Dart%20Basics.png)

### Experiment 2 – Layouts and Widgets
![Experiment 2](Screenshots/Experiment%202%20-%20Layouts%20and%20Widgets.png)

### Experiment 3 – Mediaqueries and Responsive UI
![Experiment 3](Screenshots/Experiment%203%20-%20Mediaqueries%20and%20Responsive%20UI.png)

### Experiment 4 – Namedroutes and Navigation
![Experiment 4](Screenshots/Experiment%204%20-%20Namedroutes%20and%20Navigation.png)

### Experiment 5 – Stateful and Stateless Widget and State Management
![Experiment 5](Screenshots/Experiment%205%20-%20Stateful%20and%20Stateless%20Widget%20and%20State%20Management.png)

### Experiment 6 – Custom Widgets
![Experiment 6](Screenshots/Experiment%206%20-%20Customwidgets.png)

### Experiment 7 – Form Design
![Experiment 7](Screenshots/Experiment%207%20-%20Formdesign.png)

### Experiment 8 – Animations
![Experiment 8](Screenshots/Experiment%208%20-%20Animations.png)

### Experiment 9 – API
![Experiment 9](Screenshots/Experiment%209%20-%20API.png)

### Experiment 10 – Testing
![Experiment 10](Screenshots/Experiment%2010%20-%20Testing.png)
## Project Structure

```text
todo_list/
│
├── lib/
│   │
│   ├── exp1/
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
├── Screenshots/
│   ├── Experiment 1 - Dart Basics.png
│   ├── Experiment 2 - Layouts and Widgets.png
│   ├── Experiment 3 - Mediaqueries and Responsive UI.png
│   ├── Experiment 4 - Namedroutes and Navigation.png
│   ├── Experiment 5 - Stateful and Stateless Widget and State Management.png
│   ├── Experiment 6 - Customwidgets.png
│   ├── Experiment 7 - Formdesign.png
│   ├── Experiment 8 - Animations.png
│   ├── Experiment 9 - API.png
│   └── Experiment 10 - Testing.png
│
├── pubspec.yaml
├── pubspec.lock
└── README.md
'''

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

