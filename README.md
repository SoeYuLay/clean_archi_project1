# News Articles App (Flutter Clean Architecture)

A modern Flutter News Application built using Clean Architecture principles. This app allows users to browse the latest news articles, save their favorite articles, and manage saved content efficiently.

## Features

- Fetch and display latest news articles from API
- View detailed news content
- Save articles for offline reading
- Remove saved articles
- Fast and responsive UI
- Scalable and maintainable architecture

## Architecture

This project strictly follows Clean Architecture, ensuring separation of concerns, scalability, and testability.

## Clean Architecture Emphasis

This project highlights:

- Separation of concerns
- Independent layers (low coupling)
- Testable business logic
- Scalable structure for future features
- Dependency inversion principle

## Unit Testing (Repository Layer)

This project includes unit tests for the Repository layer, ensuring that data handling logic works correctly and independently from UI and external dependencies.

🔹 What is Tested?
- API data fetching
- Data transformation (DTO → Entity)
- Error handling (exceptions, failures)
- Local database operations (save & delete articles)

## Testing Approach
- Mock dependencies (API service, local database)
- Test repository logic in isolation
- Verify correct data is returned or handled
- Each layer depends only on abstractions, not implementations.

## Getting Started

git clone https://github.com/SoeYuLay/clean_archi_project1.git
