module Midori
  class Post < ActiveRecord::Base
    belongs_to :image
    attr_accessible :body, :date, :properties, :slug, :status, :title, :type
    after_initialize :init

    validates_presence_of :date, :status

    with_options if: ->(p){ p.status == "PUBLISHED" } do |published|
      published.validates :title, presence: true
      published.validates :body,  presence: true
      published.validates :slug,  presence: true, uniqueness: true
    end

  private

    def init
      # self.date ||= Time.now
      self.status ||= "DRAFT"
    end
  end
end
