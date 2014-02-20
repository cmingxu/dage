# -*- encoding : utf-8 -*-
class Bug < ActiveRecord::Base
  attr_accessible :desc

  validates :desc, :presence => true
end
