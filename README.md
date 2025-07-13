# Duckie : Languages Learning App

Duckie is a cross-platform Languages learning application featuring a Flutter frontend and a .NET backend. The app is designed to help students improve their English skills through lessons, quizzes, conversations, and personalized progress tracking.

---

## Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Backend API](#backend-api)
- [API Endpoints](#api-endpoints)
- [Frontend (Flutter)](#frontend-flutter)
- [Environment Variables](#environment-variables)
- [Contributing](#contributing)
- [License](#license)

---

## Features

### Student Features
- **Splash Screen:** Animated splash screen on app launch.
- **Introduction & About Screens:** On first launch, users see an introduction and about screen explaining the app's purpose and features.
- **Registration & Login:** Secure student registration and authentication.
- **English Level Test:** New users take a placement test to determine their English level.
- **Multi-language Support:** Add, view, and manage the languages you are learning. Support for multiple source and target languages.
- **Dashboard/Home View:** Shows units, lessons, progress, level, daily points, and total points.
- **Units & Lessons:** Units contain multiple lessons. Completing all lessons in a unit unlocks a final quiz and the next unit.
- **Multiple Practice Modes:** Practice vocabulary, translation, listening, and speaking with different lesson types (Learn Words, Hear Words, Use Words).
- **Visual Progress Tracking:** Progress bars and completion status for lessons, units, and overall learning.
- **Quizzes:** Placement and lesson quizzes with instant feedback and scoring.
- **Situations:** Real-life situation videos and conversation practice.
- **Mission-based Learning:** Complete missions of varying difficulty for extra motivation and rewards.
- **Conversations:** Practice English through guided conversation scenarios.
- **Achievements:** Earn badges and track learning milestones.
- **Profile Management:** Update personal information and view progress.
- **Chat:** Chat with friends, coaches, and Duckie AI chatbot for English practice and support.
- **Search Functionality:** Search for situations, friends, and lessons.
- **Coach Profiles & Ratings:** View detailed coach profiles, including ratings, experience, and specializations.
- **Chat History Management:** View and delete chat history with friends, coaches, and DuckieBot.
- **Light & Dark Mode:** Switch between light and dark themes for comfortable viewing. Preview themes in settings.
- **Reminders:** Enable or disable learning reminders to stay on track.
- **Premium Plan:** View current membership status and upgrade to a premium membership for additional features and benefits.
- **In-app Support & Policies:** Access Terms of Use, Privacy Policy, and Help & Support from within the app.
- **Account Deletion:** Self-service account deletion for user privacy and control.

### Admin Features
- **Admin Login:** Secure admin authentication.
- **Lesson Management:** Add, edit, and delete lessons and units.
- **Student Management:** View and manage student accounts and progress.
- **Quiz Management:** Create and manage quizzes and questions.

### General Features
- **Deep Linking:** Password reset and other actions via email links open directly in the app.
- **Responsive UI:** Works on Android, iOS, Windows, macOS, and Linux.
- **Email Notifications:** Automated emails for password reset and notifications.
- **Secure API:** JWT-based authentication and role-based access control.

---

## App Flow & Screens

The Duckie app provides a seamless and engaging learning experience through the following screens and user flow:

1. **Splash Screen**
   - Animated logo and branding on app launch.

2. **Introduction Screen**
   - Shown on first app open. Introduces the app's features and benefits.

3. **About Screen**
   - Provides information about the app, its mission, and how it works.

4. **Registration/Login**
   - Secure sign up and login forms. Option to reset password via email.

5. **English Level Test**
   - New users take a placement test to assess their English proficiency. Results determine starting level.

6. **Home View (Dashboard)**
   - Displays:
     - User's current level, daily points, total points, and score.
     - List of units. Each unit contains multiple lessons.
     - Progress bars for units and lessons.
     - Quick access to review, practice, and explore new content.

7. **Units & Lessons**
   - Each unit contains several lessons. Completing all lessons unlocks a final quiz for the unit.
   - After passing the final quiz, the next unit is unlocked.

8. **Quizzes**
   - Interactive quizzes after each lesson and at the end of each unit. Instant feedback on answers.

9. **Situations**
   - Real-life video scenarios to help users practice English in context.
   - Each situation includes vocabulary and conversation practice.

10. **Conversations**
    - Guided conversation scenarios for speaking and listening practice.

11. **Chat**
    - **Chat with Friends:** Find and chat with other learners.
    - **Chat with Coach:** Connect with English coaches for personalized help.
    - **Duckie Chatbot:** AI-powered English learning assistant for instant support and practice.

12. **Profile & Settings**
    - Edit profile, change password, manage learning settings, switch themes (light/dark), and enable reminders.
    - View and upgrade to premium membership.

13. **Achievements & Progress**
    - Track badges, milestones, and learning streaks.

4. **Language Management**
   - Add and manage learning languages from the Languages screen. Choose "I speak" and "I want to learn" languages. Locked languages are shown for future unlocks or premium users.

5. **Practice Modes**
   - Choose between different practice types (Learn Words, Hear Words, Use Words) in lessons. Practice translation, vocabulary, and more.

6. **Missions**
   - Access and complete missions from the chat section for extra practice. Missions are categorized by difficulty (Beginner, Intermediate, Advanced).

7. **Search**
   - Use search bars to quickly find situations, friends, and lessons.

8. **Coach Profiles**
   - Browse and select coaches based on detailed profiles, ratings, experience, and specializations.

9. **Chat History**
   - Manage chat history, including deleting conversations with friends, coaches, and DuckieBot.

10. **Theme Customization**
    - Preview and select app themes (light/dark) in settings.

11. **Membership & Upgrade**
    - View membership status (e.g., FREE Membership) and upgrade options in settings.

12. **Support & Policies**
    - Access support and legal documents (Terms of Use, Privacy Policy, Help & Support) from settings.

13. **Account Deletion**
    - Delete your account from the settings menu for privacy and control.

---

## Screenshots


| Login Screen | Dashboard | Lesson View |
|--------------|-----------|-------------|
| ![Login](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20151955.png?raw=true) | ![Dashboard](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164158.png?raw=true)) | ![Lesson](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-06-21%20021018.png) |

---

## Screenshots Gallery

Below are screenshots showcasing the main features and user interface of the Englearn app:

| ![Splash](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-02-01%20211640.png?raw=true) | ![Login](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20151806.png?raw=true) | ![Home](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20151850.png?raw=true) |
|:--:|:--:|:--:|
| Splash | Intro | Register  |

| ![Lesson](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20151955.png?raw=true) | ![Quiz](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20152006.png?raw=true) | ![Quiz Result](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20153200.png?raw=true) |
|:--:|:--:|:--:|
| Login | Reset Password | Level Test |

| ![Situations](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20153226.png?raw=true) | ![Missions](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164158.png?raw=true) | ![Chat](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164212.png?raw=true) |
|:--:|:--:|:--:|
| Level Test Result  | Dashbord (Home View) | Units |

| ![DuckieBot](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164223.png?raw=true) | ![Chat History](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164235.png?raw=true) | ![Coach List](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164243.png?raw=true) |
|:--:|:--:|:--:|
| Lessons | Complete Lessons | Unit Quiz |

| ![Coach Profile](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164300.png?raw=true) | ![Search Friends](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164311.png?raw=true) | ![Chat with Friend](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164333.png?raw=true) |
|:--:|:--:|:--:|
| Correct Answer | Wrong Answer | Situations |

| ![Languages](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164358.png?raw=true) | ![Add Language](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164409.png?raw=true) | ![Settings (Light)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164417.png?raw=true) |
|:--:|:--:|:--:|
| Conversations | Duckie Bot | Chat History |

| ![Settings (Dark)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164427.png?raw=true) | ![Edit Profile](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164437.png?raw=true) | ![Languages (Light)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164445.png?raw=true) |
|:--:|:--:|:--:|
| Chat With Duckie | Coach List | Coach Profile |


| ![Add Language](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164458.png?raw=true) | ![Settings](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164524.png?raw=true) | ![Edit Profile](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164553.png?raw=true) |
|:--:|:--:|:--:|
| Search Friends | Chat With Friends | User Languages |

| ![Level Test](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164600.png?raw=true) | ![Level Test Result](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164612.png?raw=true) | ![Home (Light)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164619.png?raw=true) |
|:--:|:--:|:--:|
| Add Language | User Profiles | Settings ) |

| ![Home (Dark)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164629.png?raw=true) | ![Learn (Light)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-06-19%20174649.png?raw=true) | ![Learn (Dark)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164648.png?raw=true) |
|:--:|:--:|:--:|
| Edit Profile | Learn Settings | Home (Dark) |

| ![Learn (Dark)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164656.png?raw=true) | ![Learn (Light)](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164702.png?raw=true) | ![More Food Lesson](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164715.png?raw=true) |
|:--:|:--:|:--:|
| Units (Dark) | Units (Light) | Conversations (Dark) |

| ![Food Lesson](https://github.com/gaball1/Duckie/blob/main/Screenshot%202025-07-13%20164725.png?raw=true) |
|:--:|
| Languages (Dark) |

---

## Project Structure

```
Englearn Flutter/
  ├── lib/
  │   ├── Features/
  │   │   └── home/
  │   │       ├── data/
  │   │       │   └── presentation/
  │   │       │       ├── Models/
  │   │       │       ├── view_models/
  │   │       │       └── views/
  │   ├── constants.dart
  │   └── main.dart
  ├── android/ ios/ linux/ macos/ windows/
  └── ...
WebApplication1/
  ├── Controllers/
  ├── Models/
  ├── Data/
  ├── Services/
  ├── Views/
  ├── Program.cs
  └── ...
```

---

## Getting Started

### Prerequisites
- Flutter SDK (latest stable)
- .NET 6 SDK or later
- Android Studio/Visual Studio Code/Emaulator (for mobile)
- Visual Studio Code/Visual Studio

### Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/englearn.git
   cd englearn
   ```

2. **Backend Setup:**
   - Navigate to `WebApplication1/`
   - Configure `appsettings.json` for your database and email credentials.
   - Run migrations and start the backend:
     ```bash
     dotnet ef database update
     dotnet run
     ```

3. **Frontend Setup:**
   - Navigate to `Englearn Flutter/`
   - Install dependencies:
     ```bash
     flutter pub get
     ```
   - Configure `lib/api.env` for API endpoints.
   - Run the app:
     ```bash
     flutter run
     ```

---

## Backend API

- Built with ASP.NET Core Web API.
- RESTful endpoints for students, lessons, quizzes, conversations, and admin actions.
- Email sending via MailKit (Gmail SMTP).
- JWT authentication and role-based authorization.

**Key Controllers:**
- `StudentApiController`
- `LessonApiController`
- `ConversationApiController`
- `AdminController`
- `SituationApiController`
- `UnitApiController`

---

## API Endpoints

| Method | Endpoint                                      | Description                                 | Auth Required |
|--------|-----------------------------------------------|---------------------------------------------|--------------|
| POST   | /api/student/register                        | Register a new student                      | No           |
| POST   | /api/student/forgotPass                      | Request password reset email                | No           |
| POST   | /api/student/login                           | Student login                               | No           |
| PUT    | /api/student/changePassword                  | Change student password                     | Yes          |
| PUT    | /api/student/updateProfile                   | Update student profile                      | Yes          |
| DELETE | /api/student/{id}                            | Delete student account                      | Yes          |
| GET    | /api/student/test                            | Test endpoint (purpose unclear)             | Yes          |
| GET    | /api/student/all                             | Get all students                            | Yes (Admin)  |
| PUT    | /api/student/updateLevel                     | Update student level                        | Yes          |
| GET    | /api/conversationapi/index                   | Get all conversations                       | Yes          |
| GET    | /api/conversationapi/between/{user1Id}/{user2Id} | Get conversation between two users      | Yes          |
| POST   | /api/conversationapi/create                  | Create a new conversation                   | Yes          |
| GET    | /api/conversationapi/foruser/{userId}        | Get conversations for a user                | Yes          |
| GET    | /api/messageapi/conversation/{conversationId}| Get messages in a conversation              | Yes          |
| POST   | /api/messageapi/send                         | Send a message                              | Yes          |
| GET    | /api/situationapi                            | Get all situations                          | Yes          |
| GET    | /api/situationapi/{id}                       | Get situation by ID                         | Yes          |
| POST   | /api/situationapi/watched                    | Mark situation as watched                   | Yes          |
| POST   | /api/unitapi/index                           | Get all units                               | Yes          |
| POST   | /api/unitapi/unitDetails                     | Get unit details                            | Yes          |
| GET    | /api/units                                   | Get all units                               | Yes          |
| GET    | /api/units/{id}                              | Get unit by ID                              | Yes          |
| POST   | /api/units                                   | Create a new unit                           | Yes (Admin)  |
| PUT    | /api/units/{id}                              | Update a unit                               | Yes (Admin)  |
| DELETE | /api/units/{id}                              | Delete a unit                               | Yes (Admin)  |
| POST   | /api/admin/login                             | Admin login                                 | No           |
| POST   | /api/admin/register                          | Register a new admin                        | No           |
| GET    | /api/lessons                                 | Get all lessons                             | Yes          |
| GET    | /api/lessons/{id}                            | Get lesson by ID                            | Yes          |
| POST   | /api/lessons                                 | Create a new lesson                         | Yes (Admin)  |
| PUT    | /api/lessons/{id}                            | Update a lesson                             | Yes (Admin)  |
| DELETE | /api/lessons/{id}                            | Delete a lesson                             | Yes (Admin)  |
| POST   | /api/lessonapi/lessons                       | Get lessons (custom logic)                  | Yes          |
| POST   | /api/lessonapi/lessonContent                 | Get lesson content                          | Yes          |
| GET    | /api/situation                               | Get all situations (MVC)                    | Yes          |
| GET    | /api/situation/{id}                          | Get situation by ID (MVC)                   | Yes          |
| POST   | /api/situation                               | Create a new situation (MVC)                | Yes (Admin)  |
| PUT    | /api/situation/{id}                          | Update a situation (MVC)                    | Yes (Admin)  |
| DELETE | /api/situation/{id}                          | Delete a situation (MVC)                    | Yes (Admin)  |
| GET    | /api/placementquiz                           | Get placement quiz questions                | Yes          |
| POST   | /api/placementquiz/submit                    | Submit placement quiz answers               | Yes          |
| GET    | /api/apitest/text                            | Test API endpoint                           | No           |

---

## Frontend (Flutter)

- Modular architecture with features split into folders.
- State management via `ChangeNotifier` and custom view models.
- Deep link handling for password reset and other flows.
- Responsive design for mobile and desktop.

**Key Screens:**
- Login/Register
- Dashboard
- Lesson List & Content
- Quiz/Placement Test
- Conversation Practice
- Profile & Achievements

---

## Environment Variables

- **Flutter:**  
  `lib/api.env` for API base URLs and keys.
- **.NET:**  
  `appsettings.json` for DB connection, JWT secret, and email credentials.

---

## Contributing

We welcome contributions! To contribute:

1. **Fork the repository** and create your branch from `main`.
2. **Clone your fork** and set up the project as described above.
3. **Follow code style guidelines:**
   - Use clear, descriptive commit messages.
   - Format Dart code with `flutter format .`.
   - Use C# conventions for backend code.
4. **Test your changes** before submitting.
5. **Open a Pull Request** with a clear description of your changes and reference any related issues.

For major changes, please open an issue first to discuss what you would like to change.

---

## License

[MIT](LICENSE) 
