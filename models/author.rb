class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :tags, :through => :posts
  belongs_to :image
  #set_table_name :users

  validates :name, presence: true
	validates :name, length: { minimum: 10 }

  validates :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :twitter, presence: true
  validates :twitter, format: {with: /\A^@[a-zA-Z]+/, :message => "must start with @"}
  # validates :twitter_starts_with_at

  # def twitter_starts_with_at
  validates :e_mail, presence: true, length: {minimum: 5} 
  #validates :e_mail, 
end 