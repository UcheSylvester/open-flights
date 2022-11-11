# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airlines = Airline.create([
  { 
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png",
    description: 'Best airline in the world'
  }, 
  { 
    name: "Southwest",
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png",
    description: 'Best airline in the world'
  },
  { 
    name: "Delta",
    image_url: "https://open-flights.s3.amazonaws.com/Delta.png",
    description: 'Best airline in the world'
  }, 
  { 
    name: "Alaska Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png",
    description: 'Best airline in the world'
  }, 
  { 
    name: "JetBlue",
    image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png",
    description: 'Best airline in the world'
  }, 
  { 
    name: "American Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png",
    description: 'Best airline in the world'
  }
])

reviews = Review.create([
  {
    title: "Great airline",
    description: "I had a lovely time.",
    score: 5,
    airline: airlines.first
  },
  {
    title: "Bad airline",
    description: "I had a bad time.",
    score: 1,
    airline: airlines.first
  },
])
