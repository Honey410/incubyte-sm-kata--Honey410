# Employee Salary Management API

## 📌 Overview
* This is a Rails API application that manages employees and salary-related operations.
* Built using Ruby on Rails with a strong focus on Test-Driven Development (TDD).
* Includes Swagger documentation for API exploration.

---

## ⚙️ Tech Stack
* Ruby version: 3.2.0
* Rails version: 7.2.3
* Database: PostgreSQL
* Testing: RSpec
* API Docs: Rswag (Swagger)

---

## 🚀 Setup Instructions
* Clone the repository
* Run:
  * `bundle install`
  * `rails db:create`
  * `rails db:migrate`
  * `RAILS_ENV=test bundle exec rspec`
  * `rails server`

---

## 📡 API Endpoints

### 👤 Employee CRUD
* `GET /employees`
* `GET /employees/:id`
* `POST /employees`
* `PATCH /employees/:id`
* `DELETE /employees/:id`

---

### 💰 Salary Calculation
* `GET /salary_calculation/:employee_id`

---

### 📊 Salary Metrics
* `GET /salary_metrics/country?country=India`
* `GET /salary_metrics/job_title?job_title=Developer`

---

## 🧪 TDD Approach
* Followed strict **Red → Green → Refactor** cycle
* Each feature started with failing tests
* Implemented minimal code to pass tests
* Refactored using service objects and clean architecture
* Commit history reflects incremental TDD workflow

---

## 🤖 AI Usage (Important)
* Used ChatGPT for:
  * Initial Rails API scaffolding
  * Generating RSpec test templates

* Manually refined:
  * Business logic
  * Edge case handling
  * Code structure and maintainability

---

## 🧪 Running the Test Suite
* Run:
  * `RAILS_ENV=test bundle exec rspec`

---

## 📘 Swagger Documentation
* To regenerate API documentation:
  * `RAILS_ENV=test rails rswag`

* Swagger UI available at:
  * http://localhost:3000/api-docs

