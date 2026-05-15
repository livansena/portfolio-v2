# Agent Instructions for Portfolio_v2 Rails Project

## Project Overview
This is a Rails 7.1.5 application built with Ruby 3.3.0, using SQLite database. It's a portfolio project, currently in early stages with no domain models or routes defined yet.

## Key Technologies
- Rails 7.1 with Hotwire (Turbo + Stimulus)
- Jbuilder for JSON API responses
- Import maps for JavaScript modules
- Docker for containerization

## Build and Test Commands
- Setup: `bundle install && bin/rails db:setup`
- Development server: `bin/rails server`
- Tests: `bin/rails test`
- Docker build: `docker build .`

## JSON API Development
When creating JSON APIs:
- Use Jbuilder templates in `app/views/{resource}/` directories
- Controllers should respond with `format.json { render json: @resource }` or use Jbuilder
- For error handling, customize ApplicationController for JSON responses
- Routes: Define RESTful routes in `config/routes.rb`

## Conventions
- Follow Rails conventions for MVC structure
- Use Active Record for database interactions
- Stimulus controllers in `app/javascript/controllers/`
- Tests in `test/` directory with parallel execution

## Pitfalls
- Default error responses are HTML; implement JSON error serialization for APIs
- Import maps require pinning external JS libraries in `config/importmap.rb`
- Production requires RAILS_MASTER_KEY for credentials

## Key Files
- [config/routes.rb](config/routes.rb) - Route definitions
- [app/controllers/application_controller.rb](app/controllers/application_controller.rb) - Base controller
- [config/database.yml](config/database.yml) - Database config
- [Gemfile](Gemfile) - Dependencies

For more details, see [README.md](README.md) (currently template).</content>
<parameter name="filePath">\\wsl.localhost\Ubuntu\home\livanpassos\portfolio_v2\AGENTS.md