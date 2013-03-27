module Midori
  class Post < ActiveRecord::Base
    belongs_to :image
    attr_accessible :body, :date, :properties, :slug, :status, :title, :type
  end
end
