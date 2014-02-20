# -*- encoding : utf-8 -*-
class ItemRecord < ActiveRecord::Base
  USAGE_TYPE = %w(item_in item_out)
  attr_accessible :item_id, :num, :price, :reason, :usage_type, :user_id, :vehicle_id

  validates :num, :presence => { :message => "不能空" }
  validates :num, :numericality => { :message => "必须是数字" }

  belongs_to :item
  belongs_to :user
  belongs_to :vehicle

  def usage_type_in_word
    self.usage_type == "item_in" ? "入库" : "出库"
  end

  after_create do |ir|
    if ir.usage_type == "item_in"
      ir.item.update_attribute(:amount, ir.item.amount += ir.num)
    else
      ir.item.update_attribute(:amount, ir.item.amount -= ir.num)
    end
  end
end
