require 'minitest/autorun'
require 'active_record'
require 'database_cleaner'
require 'pry'

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



class MiniTest::Test
  def setup
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'db/validations.db'
    ) 
    # replaced by yml

    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end