# -*- encoding : utf-8 -*-
class Hetong < ActiveRecord::Base
  attr_accessible :beizhu, :bianhao, :client_contact, :client_name, :end_time, :price, :name

  validates :name, :presence => {:message => "名称不能空"}
  validates :bianhao, :presence => {:message => "编号不能空"}
  validates :name, :uniqueness => {:message => "合同名称重复"}
  validates :bianhao, :uniqueness => {:message => "编号重复"}
  validates :price, :numericality => {:message => "价格格式不对"}, :allow_blank => true
  
end
