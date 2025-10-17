# It Legend Flutter Task

## overview

This project is a mobile application developed using the Flutter framework. It leverages SQLite for secure local data persistence, and the retrieved data is managed and displayed using the Cubit (State Management) within the Model-View-ViewModel (MVVM) architectural structure.

It adheres to the **Model-View-ViewModel (MVVM)** architectural pattern, separating concerns to ensure improved testability, scalability, and code clarity.

## Technical Stack & Dependencies

### **Architecture (MVVM)**

The codebase is structured around the MVVM pattern for robust separation of duties:

* **View:** The UI layer (Widgets) handles rendering and captures user input.

* **ViewModel (Cubit):** Manages the presentation logic and state transitions, acting as the interface between the View and the Model.

* **Model:** Encapsulates the core business logic, data structures (entities), and repository contracts.

### **Key Dependencies**

The following core packages drive the application's functionality:

* **flutter_bloc:** Utilized for reliable and predictable state management. We leverage the Cubit implementation to manage ViewModel logic and emit state changes to the View.

* **sqflite:** Provides local, persistent data storage via an embedded SQLite database solution, enabling offline data access and caching.

* **path:**  Provides utilities for manipulating and combining file system path strings across different platforms.

## Install Packages 
* [flutter_bloc](https://pub.dev/packages/flutter_bloc)
* [sqflite](https://pub.dev/packages/sqflite)
* [path](https://pub.dev/packages/path)

**A few resources to get you started if this is your first Flutter project:**

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
