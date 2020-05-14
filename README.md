# AceBook MySpace

[![Build Status](https://travis-ci.com/Steven-Klavins/acebook-myspace.svg?branch=master)](https://travis-ci.com/Steven-Klavins/acebook-myspace)

## [Medium Blog](https://medium.com/acebook-myspace)

## [Trello Wall](https://trello.com/b/ig2kAuJ5/myspace-acebook)

This is a Rails API Backed, designed to work with the [React Frontend](https://github.com/hturnbull93/acebook-myspace-react)

## Setup Instructions

### How to contribute to this project

See [CONTRIBUTING.md](CONTRIBUTING.md)

### Quickstart for a local development server

1. Clone this repository.
2. Clone the [React Frontend repo](https://github.com/hturnbull93/acebook-myspace-react).
3. Prepare the Rails API server:

    ```bash
    bundle install
    bin/rails db:setup

    bundle exec rspec # Run the tests to ensure it works
    bin/rails server -p 3001 # Start the server at localhost:3001
    ```

4. Prepare the React Frontend server (from the root dir that repo):

    ```bash
    npm install
    npm start
    ```

5. Navigate to <http://localhost:3000.>
6. Enjoy.

## The Team ❤️

[Angelica Beristain](https://github.com/Angelica137)
[Faye Carter](https://github.com/FayeCarter)
[Thomas Harper](https://github.com/tommyrharper)
[Steve Klavins](https://github.com/Steven-Klavins)
[Ed Phillips](https://github.com/Edward-Phillips)
[Harry Turnbull](https://github.com/hturnbull93)
