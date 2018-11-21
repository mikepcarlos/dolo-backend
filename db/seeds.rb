# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### USERS #####

mike = User.create(username: 'SCUMbucket', password: "nottellingyou", email: "eatme@gmail.com", displayname: "Mike Carlos", img: '', bio: 'Making projects yo', score: 450)

gavin = User.create(username: 'saucedocta42', password: "allthesauce", email: "saucy@gmail.com", displayname: "Gavin Sauce", img: '', bio: 'Making saucy projects', score: 150)

steven = User.create(username: 'theprez', password: "this.propsyo", email: "props@gmail.com", displayname: "Steven WhateverYourLastNameIs", img: '', bio: 'Being president and making projects', score: 350)

danny = User.create(username: 'dantheman', password: "airbnb", email: "makingbread@gmail.com", displayname: "Danny Krug", img: '', bio: 'Is it time to go home yet', score: 650)

##### PROJECTS #####

building_a_robot = Project.create(name: "Build a Robot!", category: "Robotics", img: '', description: "I want to build a robot that can that can build robots and I need your help to do it!")

making_a_song = Project.create(name: "It's a hit!", category: "Music", img: '', description: "We're gunna make a smash hit yo! Step out the way Cardi B!")

making_a_movie = Project.create(name: "A Day in the Life", category: "Film", img: '', description: "A documentary film based on the life surrounding a venus fly trap. Most people don't know just how exciting their ecosystem is!")

building_a_house = Project.create(name: "Making a Trap House", category: "Construction", img: '', description: "I need skilled workers ready to make the illest trap house ever!")

#### TASKS ######

##ROBO##

solder = Task.create(title: "Soldering Wizard", timeleft: '06:30:00', start: "Nov 25, 2018", project: building_a_robot, user: mike)

programmer = Task.create(title: "Programming GAWD", timeleft: '02:00:00', start: "Nov 26, 2018", project: building_a_robot, user: steven)

##SONG##

producer = Task.create(title: "Beat Master", timeleft: '05:00:00', start: "Nov 25, 2018", project: making_a_song, user: mike)

arranger = Task.create(title: "Arranging", timeleft: '01:00:00', start: "Nov 26, 2018", project: making_a_song, user: danny)

##MOVIE##

cameraman = Task.create(title: "Camera Man", timeleft: '12:00:00', start: "Nov 25, 2018", project: making_a_movie, user: gavin)

editor = Task.create(title: "Editor", timeleft: '08:00:00', start: "Nov 26, 2018", project: making_a_movie, user: danny)

##HOUSE##

builder = Task.create(title: "HandyPerson", timeleft: '12:00:00', start: "Nov 26, 2018", project: building_a_house, user: gavin)

designer = Task.create(title: "Designing", timeleft: '05:00:00', start: "Nov 26, 2018", project: building_a_house, user: mike)

#### USERPROJECTS #####

UserProject.create(user: mike, project: building_a_robot)

UserProject.create(user: gavin, project: making_a_movie)

UserProject.create(user: steven, project: building_a_house)

UserProject.create(user: danny, project: making_a_song)

### USERTASKS ####

UserTask.create(user: mike, task: solder)

UserTask.create(user: mike, task: producer)

UserTask.create(user: mike, task: designer)

UserTask.create(user: gavin, task: cameraman)

UserTask.create(user: gavin, task: builder)

UserTask.create(user: steven, task: programmer)

UserTask.create(user: danny, task: arranger)

UserTask.create(user: danny, task: editor)

#### PROJECTTASKS #####

ProjectTask.create(project: building_a_robot, task: solder)

ProjectTask.create(project: building_a_robot, task: programmer)

ProjectTask.create(project: making_a_song, task: producer)

ProjectTask.create(project: making_a_song, task: arranger)

ProjectTask.create(project: making_a_movie, task: cameraman)

ProjectTask.create(project: making_a_movie, task: editor)

ProjectTask.create(project: building_a_house, task: builder)

ProjectTask.create(project: building_a_house, task: designer)
