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

  validates :age, presence: true
end 