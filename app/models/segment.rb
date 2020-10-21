class Segment < ActiveRecord::Base
  has_many :segment_articles
  has_many :articles, :through => :segment_articles

  validates :title, presence: true, allow_blank: false
end
