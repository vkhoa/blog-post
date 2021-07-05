# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

query {
    user(id: 1) {
        id
        role
        posts {
          id
          title
          text
        }
    }
}

query {
    allUsers {
        id
        role
        posts {
          id
          title
          text
        }
    }
}


mutation {
  createUser(input:{
    email:"test@email.com",
    password:"123456"
  }) {
    user {
      id
      email
    }
  }
}

mutation {
  createUser(input:{
    email:"test@email.com",
    password:"12345"
  }) {
    user {
      id
      email
    }
    errors
  }
}