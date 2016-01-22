class Article < ActiveRecord::Base

  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }

  # def cached_comments_count
  #   Rails.cache.fetch([self, "comments_count"]) {comments.count}
  # end

  # def cached_comments
  #   Rails.cache.fetch([self, "comments"]) {comments.to_a}
  # end

end