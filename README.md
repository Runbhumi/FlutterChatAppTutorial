# Flutter Chat App

![how to make a chat app with flutter by theindianappguy](https://user-images.githubusercontent.com/55942632/81176283-938adc80-8fc2-11ea-8d59-7392205a1ed0.png)

A fully functioning chat application built with **Flutter** and **Firebase**, featuring real-time messaging, user authentication, and cloud-based data storage.

## Features

- **Firebase Authentication** -- Sign in, Sign up, and Sign out with email/password or Google
- **Cloud Firestore** -- Real-time message storage and retrieval
- **Simple & Compound Queries** -- Search for users by username
- **Shared Preferences** -- Persistent login state across app restarts
- **Chat Rooms** -- Create chat rooms and send messages in real time
- **Stream & StreamBuilder** -- Live updates for messages and chat rooms

## Prerequisites

- Flutter 3.10+ and Dart 3.0+
- A Firebase project with Authentication and Cloud Firestore enabled
- `google-services.json` (Android) and/or `GoogleService-Info.plist` (iOS) configured in your project

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/theindianappguy/FlutterChatAppTutorial.git
   cd FlutterChatAppTutorial
   ```

2. **Set up Firebase**
   - Create a project in the [Firebase Console](https://console.firebase.google.com/)
   - Enable **Email/Password** and **Google** sign-in methods under Authentication
   - Enable **Cloud Firestore** in production or test mode
   - Download `google-services.json` and place it in `android/app/`
   - Download `GoogleService-Info.plist` and place it in `ios/Runner/`

3. **Install dependencies**
   ```bash
   flutter pub get
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
  main.dart                  # App entry point with Firebase initialization
  models/
    user.dart                # ChatUser model
  services/
    auth.dart                # Firebase Auth service (email, Google sign-in)
    database.dart            # Cloud Firestore database methods
  helper/
    authenticate.dart        # Toggle between Sign In and Sign Up views
    constants.dart           # Global constants (current user name)
    helperfunctions.dart     # SharedPreferences helper utilities
    theme.dart               # Custom theme colors
  views/
    chat.dart                # Individual chat room screen
    chatrooms.dart           # Chat rooms list screen
    forgot_password.dart     # Forgot password screen
    search.dart              # User search screen
    signin.dart              # Sign in screen
    signup.dart              # Sign up screen
  widget/
    widget.dart              # Reusable UI widgets (app bar, input decorations)
```

## Learn

Full YouTube Playlist: https://www.youtube.com/playlist?list=PLBxWkM8PLHcr2vkdY2n9rIcxjZ9Th3Us7

Topics covered in this series:
- Firebase Auth: Sign in, Sign up, and Sign out
- Firebase Firestore: Upload and retrieve data stored in Cloud Firestore
- Perform simple and compound queries in Cloud Firestore
- Building complex UI with Flutter
- Shared Preferences to keep users logged in
- Creating chat rooms and sending messages
- Using Stream and StreamBuilder

Live at [flutterdevconnect.web.app](https://flutterdevconnect.web.app)

## Created & Maintained By

[Sanskar Tiwari](https://github.com/theindianappguy) ([@theindianappguy](https://twitter.com/Theindianappguy)) ([YouTube](https://www.youtube.com/c/SanskarTiwari))

> If you found this project helpful or you learned something from the source code and want to thank me,
> consider checking out what I am building at [MagicSlides.app](https://www.magicslides.app), [MagicForm.app](https://www.magicform.app) & [SheetAI.app](https://www.sheetai.app)

## License

    Copyright 2020 Sanskar Tiwari

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
