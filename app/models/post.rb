class Post < ActiveRecord::Base
  def self.ordered_first_10
    order("published_at").limit(10)
  end
  def self.search(q)
    where(['body LIKE ? OR subject LIKE ?', "%#{q}%", "%#{q}%"])  # this is the template to use to perform the seach query.  This is sql
  end
end




# also this is a  class method indicated by the self.search which means its looking at the whole table rather than instances of the table (rows).
# in SQL : SELECT * FROM post WHERE body LIKE  %test%  OR subject LIKE  %test%. Post is the implicit receiver of this method because it self is  within the class of Post.
