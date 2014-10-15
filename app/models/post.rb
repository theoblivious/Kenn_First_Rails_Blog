class Post < ActiveRecord::Base
  def self.ordered_first_10
    order("published_at").limit(10)
  end
end
