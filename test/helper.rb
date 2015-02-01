require 'minitest/autorun'
require 'active_record'
require 'database_cleaner'
require 'pry'
require 'faker'
require 'factory_girl'
# require 'Date'
# require 'date_validator'

# TODO - require your models here, e.g.
require_relative '../models/author'
require_relative '../models/comment'
require_relative '../models/image'
require_relative '../models/post'
require_relative '../models/post_tag'
require_relative '../models/tag'
require_relative '../migrations/create_authors'
require_relative '../migrations/create_comments'
require_relative '../migrations/create_images'
require_relative '../migrations/create_post_tags'
require_relative '../migrations/create_posts'
require_relative '../migrations/create_tags'
require_relative '../test/factories'
#require_relative '../migrations/_add_email_to_authors'



class MiniTest::Test
  include FactoryGirl::Syntax::Methods
  def setup
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'db/validations_two.db'
    ) 
    # replaced by yml

    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end