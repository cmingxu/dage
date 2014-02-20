# -*- encoding : utf-8 -*-
class Page < ActiveRecord::Base
  attr_accessible :content, :slug, :name, :title

  validates :name, :presence => true
  validates :slug, :presence => true
  validates :slug, :uniqueness => true
end
