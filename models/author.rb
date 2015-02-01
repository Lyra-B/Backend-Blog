# require 'Date'
class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :tags, :through => :posts
  belongs_to :image
  #set_table_name :users

  validates :name, presence: true
	validates :name, length: { minimum: 10 }

  validates :password, presence: true, length: {minimum: 8}
  validates :password, confirmation: true

  validates :twitter, presence: true
  validates :twitter, format: {with: /\A^@[a-zA-Z]+/, :message => "must start with @"}

  validates :e_mail, presence: true
  validates :e_mail, length: {minimum: 5} 
  validates :e_mail, format: {with: /\A^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$./, :message => "must contain @"}

  validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 21}

  # validates :dob, presence: true, date: after: Proc.new{Date.new(1995, 1, 1)},
  # before: Proc.new{Date.new(1994, 1, 1)}}

  validates :agreed_tc, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
end 