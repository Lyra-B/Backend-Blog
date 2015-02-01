require_relative 'helper'

FactoryGirl.define do

  factory(:post) do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraph
    author
  end

  factory(:author) do
    name Faker::Name.name
    twitter "@#{Faker::Name.name}"
    e_mail Faker::Internet.email
    password Faker::Internet.password
    age Faker::Number.number(2)
    #dob Faker::Date.backward(14)
  end

  # factory(:tag) do
  #   name
  # end

end