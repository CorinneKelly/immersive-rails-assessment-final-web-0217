# Rails Assessment

It's time to put our Rails know-how to the test. Today, we have a basic new application.

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations

## Setup

Before you begin, fork and clone this repo, run `rake db:migrate` and `rake db:seed` to get started.

## The Domain

The app you built on Monday is now functioning great. Stephen just has a few extra requests.

## Instructions / Deliverables

1. Initially, Stephen rated the interview with Michael J. Fox a 3, but in retrospect, it actually wasn't that bad! As a user, I should be able to edit an appearance so that I can change a rating. Build out the edit functionality for an appearance, keeping with RESTful conventions.
2. We want to add some more validations to our models - an appearance should only be valid if it has a rating on it that's between 1 and 5.
3. When we create a new appearance, we should also keep track of the producer who booked that appearance. This means that an appearance should also belong to a user. Update your schema, models, and forms to reflect this.   

### Hints / Tips

+ Remember we want to be RESTful. What URL should we use to display our edit form? What action should be responsible for updating the request?

### Notes
1. Did not make "producer" a visible or editable field since the producer should only be appearances that he/she made
2. Made the edit form a link on the episode show page for easy access
3. Abstracted the form for edit/new appearance pages since they were the same
4. Changed Episode index page to be links to episode show pages for better userability and navigation
5. In theory, everything works, but could not get anything to save or update to my database, spent way too much time debugging this. On the bright side, I successfully figured out flash messages and even got them to turn red!
6. next guess was to change the add user id to appearances column to "add_reference" but game of thrones music came on..