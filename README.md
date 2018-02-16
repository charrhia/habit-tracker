# README

![Build Status](https://codeship.com/projects/91db6e20-e769-0135-b764-76d2e62999cc/status?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/charrhia/habit-tracker/badge.svg?branch=master)](https://coveralls.io/github/charrhia/habit-tracker?branch=master)
[![Code Climate](https://codeclimate.com/github/charrhia/habit-tracker/badges/gpa.svg)](https://codeclimate.com/github/charrhia/habit-tracker)


# Ruby Version
* Ruby v 2.4.1
* Rails v 5.1.4

# Installation

```
bundle install
npm install
rake db:create
rake db:migrate
```
Then navigate to http://localhost:3000 in your browser to view locally or access directly through https://goal-habit-tracker.herokuapp.com/

# Test Suite
 ```
 rake db:test:prepare
 rake
 npm test
 ```
 # Application Walkthrough
* A user must create an account and sign in
* Navigate to the 'Goals' link on the navigation bar or the 'click here' link on the front page in order to set up your desired goals you want to track
* Record whether you accomplished that goal daily on the main page
* Assess progress with the daily, weekly, and monthly report functions on your 'Reports' page
* Click 'Settings' to update user information
* Enjoy!
