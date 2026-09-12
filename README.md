# TutorAI – Cloud-Based AI Tutoring Web Application

TutorAI is a cloud-based AI tutoring web application designed to help students learn through interactive, conversational AI. Students can ask academic questions, receive step-by-step explanations, ask follow-up questions, and manage their previous conversations.

The project demonstrates the integration of **web development, REST APIs, artificial intelligence, cloud databases, and cloud deployment** to solve a real-world educational problem.

## Live Application

**Deployed Application:**
https://tutorai-iopn.onrender.com

## Features

* AI-powered academic question answering
* Conversational follow-up questions
* Step-by-step explanations
* Persistent conversation history
* Recent conversation management
* Rename conversations
* Delete conversations
* Markdown and mathematical expression rendering
* Cloud-based data persistence using MongoDB Atlas
* Cloud deployment using Render

## System Architecture

```text
                     Student
                        |
                        v
              React + TypeScript
                   Frontend
                        |
                  REST / JSON
                        |
                        v
              Node.js + Express
                   Backend
                  /         \
                 /           \
                v             v
          Gemini API      MongoDB Atlas
           (AI Service)    (Database)
```

### Architecture Flow

1. The student enters a question through the React frontend.
2. The frontend sends the request to the Node.js/Express backend.
3. The backend validates the request and conversation history.
4. The backend sends the question to the Gemini API.
5. Gemini generates the tutoring response.
6. The backend returns the response to the frontend.
7. Conversation data is stored in MongoDB Atlas.
8. Previous conversations can be retrieved through the conversation APIs.

## Technology Stack

| Technology    | Purpose                                    |
| ------------- | ------------------------------------------ |
| React         | Frontend user interface                    |
| TypeScript    | Type-safe frontend development             |
| Vite          | Frontend development and build tool        |
| Node.js       | Backend runtime                            |
| Express.js    | REST API server                            |
| Gemini API    | AI-powered tutoring responses              |
| MongoDB       | Database                                   |
| MongoDB Atlas | Cloud-hosted database                      |
| Git & GitHub  | Version control and source-code management |
| Render        | Cloud deployment                           |

## REST API

TutorAI uses REST APIs with JSON for communication between the frontend and backend.

| Method | Endpoint                 | Description                       |
| ------ | ------------------------ | --------------------------------- |
| GET    | `/`                      | Backend health check              |
| POST   | `/api/ask`               | Generates an AI tutoring response |
| POST   | `/api/conversations`     | Creates a conversation            |
| GET    | `/api/conversations`     | Retrieves conversations           |
| GET    | `/api/conversations/:id` | Retrieves a specific conversation |
| PATCH  | `/api/conversations/:id` | Updates a conversation            |
| DELETE | `/api/conversations/:id` | Deletes a conversation            |

## Database

TutorAI uses **MongoDB Atlas** as its cloud database.

Conversation information is stored in the `conversations` collection. A conversation contains information such as:

* Conversation title
* User and assistant messages
* Creation timestamp
* Last updated timestamp

Using MongoDB Atlas allows conversation data to persist independently of the user's local browser or device.

## Cloud Deployment

The application uses multiple cloud services:

* **Render** – application/backend deployment
* **MongoDB Atlas** – cloud database
* **Gemini API** – cloud-based AI service
* **GitHub** – source-code repository and version control

Sensitive configuration values such as the Gemini API key and MongoDB connection URI are stored using environment variables rather than being included directly in the source code.

## Project Structure

```text
TutorAi/
│
├── src/
│   ├── App.tsx
│   ├── main.tsx
│   └── index.css
│
├── server/
│   ├── server.js
│   ├── package.json
│   └── .env
│
├── public/
│
├── package.json
├── vite.config.ts
├── tsconfig.json
└── README.md
```

## Running the Project Locally

### 1. Clone the repository

```bash
git clone https://github.com/yas-hi-la/TutorAi.git
cd TutorAi
```

### 2. Install frontend dependencies

```bash
npm install
```

### 3. Install backend dependencies

```bash
cd server
npm install
```

### 4. Configure environment variables

Create a `.env` file inside the `server` directory:

```env
GEMINI_API_KEY=your_gemini_api_key
MONGODB_URI=your_mongodb_connection_string
MONGODB_DB_NAME=tutorai
```

Do not commit API keys or database credentials to GitHub.

### 5. Start the backend

From the `server` directory:

```bash
node server.js
```

The backend runs on:

```text
http://localhost:5050
```

### 6. Start the frontend

From the project root:

```bash
npm run dev
```

The Vite development server will provide the local frontend URL.

## Testing

The application can be tested using the following scenarios:

* Open the deployed application
* Ask an academic question
* Ask a follow-up question
* Open recent conversations
* Rename a conversation
* Delete a conversation
* Refresh the application and retrieve stored conversations
* Verify stored conversation data in MongoDB Atlas
* Access the deployed application from another device

## Current Limitations

* User authentication and individual user accounts are not currently implemented.
* Conversations are stored in a common collection without a user identifier.
* PDF/document upload is not currently implemented.
* AI-generated responses may occasionally contain inaccurate information.
* The application depends on external cloud services and internet connectivity.

## Future Enhancements

### User Authentication and Personalization

Implement user registration and login so that each student's conversations are associated with their individual account.

### Subject Management

Expand the **Create Subject** and **View Existing Subject** features so students can organize their learning into subjects such as Mathematics, Physics, Chemistry, and Biology.

### Subject-Based Learning

Allow conversations to be organized under a selected subject so that students can maintain separate learning contexts.

### Progress Tracking

Introduce a progress dashboard that records topics covered, questions asked, learning activity, and performance for each subject.

### PDF and Document Upload

Allow students to upload study materials and ask questions based on the uploaded content.

### Learning Analytics

Provide statistics and insights about frequently studied topics, learning activity, and areas that require additional practice.

### Multilingual Support

Support multiple languages to make the tutoring system accessible to a wider range of students.

## Academic Information

**Project:** TutorAI
**Student:** M. Yashila
**Register Number:** 25BCE5171
**Course:** BACSE344 – Cloud Infrastructure and Architecture
**Assignment:** Challenging Assignment
**Faculty:** Dr. P. Anandan

## Conclusion

TutorAI demonstrates how cloud technologies and AI services can be combined to create a practical educational application. The project integrates a React frontend, Node.js/Express backend, Gemini API, MongoDB Atlas, REST APIs, GitHub, and Render into a single cloud-based system.

The application provides a foundation for future improvements such as user authentication, subject-wise learning, progress tracking, document-based tutoring, and learning analytics.
