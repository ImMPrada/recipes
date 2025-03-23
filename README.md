# Recipes API

A GraphQL API built with Ruby on Rails that provides a robust and flexible interface for managing recipes and related data.

## Description

This application serves as a backend API that exposes a GraphQL endpoint, allowing clients to efficiently query and mutate recipe-related data. The API is designed to be performant, maintainable, and follows best practices for GraphQL implementations.

## Tools & Technologies Used

- **Ruby on Rails 8.0.2**: Web framework
- **GraphQL 2.4**: Query language for APIs
- **MySQL**: Database (via mysql2 gem)
- **Rubocop**: Code style enforcement

## Local Development Setup

### Prerequisites

- Ruby 3.2.2 (recommended, specified in .ruby-version)
- MySQL
- Rbenv (optional, for managing Ruby versions)

### Installation Steps

1. Clone the repository:

```bash
git clone [repository-url]
cd recipes
```

2. Install dependencies:

```bash
bundle install
```

3. Set up the database:

```bash
rails db:create db:migrate
```

4. Start the server:

```bash
rails server
```

The application will be available at `http://localhost:3000`

### GraphQL Playground

Access the GraphQL playground at `http://localhost:3000/graphiql` to explore and test the API.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
