# PawSitters App

## OVERVIEW
Our application is designed to allow pet pawrents to easily and conveniently find pet sitting and dog walking services for their beloved furry (or scaly) friends. 
Additionally, users can also sign up to be a pet sitter or dog walker on our app, set their own schedule, rates, and preferences to make their experience as smooth and delightful as possible. Users are able to leave reviews for the sitters they hire on our platform to help other users find their perfect sitter!

## Landing Page
![pawSitters](https://i.imgur.com/XhDxiYe.png)

### Client Repo
https://github.com/angel-zh/react-pawsitters

### Link
-Coming Soon- 

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
- create a pet owner profile
- list myself as a pet sitter by creating a pet sitter profile
- hire a pet sitter by creating a booking
- edit and delete a booking
- upload a profile photo
- edit and delete my profile
- review a pet sitter
- edit and delete my review
- upload a photo in my review
```
## WIREFRAMES 
![homepage](https://i.imgur.com/SFBejoG.png)
![create](https://i.imgur.com/3J4847M.png)
![index](https://i.imgur.com/XypllTs.png)
![show](https://i.imgur.com/YmI2ScJ.png)


## ENTITY RELATIONSHIP DIAGRAMS
![ERD](https://i.imgur.com/A8yNtxh.png)
![TABLE](https://i.imgur.com/mh4YKkP.png)

## ROUTES
 `auth`
|Verb| Path | Action | Description |
|--------| ---------|----------|-----|
|POST|/sign-up/|Create|Create account|
|POST|/sign-in/|Create|Login then redirect|
|DELETE|/sign-out/|Delete|Logout, then redirect to homepage |
|PATCH|/change-password/|Edit| Change password|

`petsitters`
|Verb|Path|Action|Description|
|---|---|---|---|
| GET | /petsitters/ | Index | Index of all pet sitters |
| GET | /petsitters/:id/ | Show | Pet sitter’s homepage |
| POST | /petsitters/:id/ | Create | Create pet sitter|
| PATCH | /petsitters/:id/ | Edit  | Edit pet sitter |
| DELETE | /petsitters/:id/ | Delete | Delete pet sitter|

`petowners`
|Verb|Path|Action|Description|
|---|---|---|---|
| GET | /petowners/ | Show | Pet owner’s profile |
| POST | /petowners/:id/ | Create | Create pet owner|
| PATCH | /petowners/:id/ | Edit  | Edit pet owner |
| DELETE | /petowners/:id/ | Delete | Delete pet owner|

`bookings`
|Verb|Path|Action|Description|
|---|---|---|---|
| GET | /bookings/ | Index | Index of all user's bookings |
| POST | /bookings/:id/ | Create | Create booking|
| PATCH | /bookings/:id/ | Edit  | Edit booking |
| DELETE | /bookings/:id/ | Delete | Delete delete|

`reviews`
|Verb|Path|Action|Description|
|---|---|---|---|
| GET | /reviews/ | Index | Index of all user's reviews|
| POST | /reviews/:id/ | Create | Create a review|
| PATCH | /reviews/:id/ | Edit  | Edit a review |
| DELETE | /reviews/:id/ | Delete | Delete a review|


# django-pawsitters
