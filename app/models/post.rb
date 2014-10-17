class Post < ActiveRecord::Base
  def self.ordered_first_10
    order("published_at").limit(10)
  end
  def self.search(q)
    result= Post.where(['body LIKE ? OR subject LIKE ?', "%#{q}%", "%#{q}%"])
  end
end
