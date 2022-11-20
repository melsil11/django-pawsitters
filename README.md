# PawSitters App

## OVERVIEW
Our application is designed to allow pet pawrents to easily and conveniently find pet sitting and dog walking services for their beloved furry (or scaly) friends. 
Additionally, users can also sign up to be a pet sitter or dog walker on our app, set their own schedule, rates, and preferences to make their experience as smooth and delightful as possible. Users are able to leave reviews for the sitters they hire on our platform to help other users find their perfect sitter!

### Link
-In Development- 

### Brought to you by The Flossing Avocados Team
* Alina Ishizaki - https://github.com/amishizaki
* Angel Zhou - https://github.com/angel-zh
* Melanie Silva - https://github.com/melsil11
* Sam Phillips - https://github.com/sam-phillips21

### Technologies Used

- React
- Django
- Python
- PostgreSQL
- CSS
- JavaScript
- HTML5
- Bootstrap

## USER STORIES

```
As a user, I want the ability to... 
- sign up, sign in, change password, and sign out
- find pet sitters
- hire a pet sitter
- list myself as a pet sitter by creating a pet sitter profile
- upload a profile photo
- edit and delete my pet sitter profile
- review a pet sitter
- edit and delete my review
- upload a photo in my review

```

## ROUTES
 


| Verb | Path | Action | Description |
| —------- | —------- | —------- | —------- |
| GET | / | Index | Landing page |
| GET | users/ | Show | Show all details for user - homepage |
| POST |  users/signup | Create | Create account for new user |
| POST | users/login | Login | Login, then redirect |
| POST | users/logout | Logout | Logout, then redirect to homepage |
| GET | users/pets | Show | Index all user’s pets |
| GET | users/reviews | Show | Show user’s reviews |


| Verb | Path | Action | Description |

| —------- | —------- | —------- | —------- |
| GET | /pet-sitters | Show | Index of all pet-sitters |
| GET | /pet-sitters/:id | Show | Pet-sitter’s homepage |
| POST | /pet-sitters/:id | Review | Add review for pet-sitter |
| PATCH | /pet-sitters/:id | Edit Review | Edit review for pet-sitters |
| DELETE | /pet-sitters/:id | Delete Review | Delete review for pet-sitters |


|Schedule||
|--------| -------------------|
| Monday | Planning and Pitch |
| Tuesday | Backend - Initial set up |
| Monday | Backend |
|Tuesday|Frontend - React  - Components etc|
|Wednesday|Frontend - React - Components etc|
|Thursday|Stretch Goals - deploy|
|Friday|Present|
|Saturday |Party!!!!|





 





# django-pawsitters
