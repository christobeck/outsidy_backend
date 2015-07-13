# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sonsie = Venue.create!()

Venue.destroy_all
Space.destroy_all


Venue.create!(name:'Stephi\'s on Tremont' street:'571 Tremont Street' hood:'South End' city:'Boston' state:'MA' zip:'02118' tel:'6172362063')
Venue.create!(name:'Gaslight Brasserie' street:'560 Harrison Avenue' hood:'South End' city:'Boston' state:'MA' zip:'02118' tel:'6174220224')
Venue.create!(name:'Kitchen' street:'560 Tremont Street' hood:'South End' city:'Boston' state:'MA' zip:'02118' tel:'6176951250')
Venue.create!(name:'Parish Café II' street:'493 Massachusetts Avenue' hood:'South End' city:'MA' state:'MA' zip:'02118')

Venue.create!(name:'Rattlesnake Bar & Kitchen' street:'384 Boylston Street' hood:'Back Bay' city:'Boston' state:'MA' zip:'02116' tel:'6178597772')
Venue.create!(name:'Parish Café' street:'361 Boylston Street' hood:'Back Bay' city:'Boston' state:'Boston' zip:'MA' tel:'6172474777')
Venue.create!(name:'Atlantic Fish Company' street:'761 Boylston Street' hood:'Back Bay' city:'Boston' state:'MA' zip:'02116' tel:'6172674000')
Venue.create!(name:'Abe & Louie\'s' street:'793 Boylston Street' hood:'Back Bay' city:'Boston' state:'MA' zip:'02116' tel:'6175366300')



Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')
Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')
Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')
Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')
Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')
Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')
Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')


# Venue.create!(name:'string' street:'string' hood:'string' city:'string' state:'string' zip:'string' tell:'number')
# Space.create!(spacetype:'string' location:'string' views:'string' food:'boolean' alcohol:'boolean' wifi:'boolean' venue:'references')

