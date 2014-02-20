# -*- encoding : utf-8 -*-
class Reason < ActiveRecord::Base
  attr_accessible :details, :reason, :cate

  validates :reason, :presence => { :message => "请输入维修原因" }
  validates :reason, :uniqueness => { :message => "原因不能重复输入" }

  scope :in, where(:cate => "in")
  scope :out, where(:cate => "out")
end
