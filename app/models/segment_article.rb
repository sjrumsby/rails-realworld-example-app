class SegmentArticle < ActiveRecord::Base
  has_one :article
  belongs_to :segment

  validates :order, presence: true, allow_blank: false
  accepts_nested_attributes_for :segment
end
