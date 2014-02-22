# -*- encoding : utf-8 -*-
class Item < ActiveRecord::Base
  UNITS = %w{ 个 件 KG 桶 条 }
  attr_accessible :danjia, :danwei, :name, :quantity, :tuzhi, :user_id, :xinghao

  validates :danwei, :presence => true
  validates :name, :presence => {:message => "物品名称不能空"}
  validates :danjia, :numericality => {:message => "价格格式不对"}, :allow_blank => true
end
