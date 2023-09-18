require 'active_interaction'

class FeatureInteraction < ActiveInteraction::Base
  integer  :user_id
  date :featured_till
  integer :article_id

  validates :user_id, presence: true
  validates :featured_till, presence: true
  validates :featured_till, comparison: { greater_than: Time.now.to_date }


  def execute
    article = Article.find(article_id)
    article.update(featured_by_id: user_id, featured_till: featured_till)
  end
end