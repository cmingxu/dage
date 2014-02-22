# -*- encoding : utf-8 -*-
class Chuku < ActiveRecord::Base
  belongs_to :user
  belongs_to :hetong
  belongs_to :item

  attr_accessible :hetong_id, :price, :quantity, :user_id, :name_param, :hetong_param
  attr_accessor :name_param, :hetong_param

  validates :name_param, :presence => {:message => "名称不能空"}
  validates :hetong_param, :presence => {:message => "合同不能空"}
  validates :price, :presence => true
  validates :quantity, :presence => true
  validates :hetong_id, :presence => true
  validate  :ensure_have_enough_item


  after_create do
    self.item.update_attribute(:quantity, self.item.quantity - self.quantity.to_i)
  end

  def name_param=(what)
    self.item_name = what.split("-")[0]
    self.item_xinghao = what.split("-")[1]
    self.item_id = Item.find_by_name_and_xinghao(self.item_name, self.item_xinghao).try(:id)
  end

  def name_param
    (self.item_name.present? && self.item_xinghao.present?) ? "#{self.item_name}-#{self.item_xinghao}" : ""
  end

  def hetong_param=(what)
    self.hetong_id = Hetong.find_by_bianhao(what.split("-")[1]).try(:id)
  end

  def hetong_param
    self.hetong.present? ? "#{self.hetong.name}-#{self.hetong.bianhao}-#{self.hetong.client_name}" : ""
  end

  def ensure_have_enough_item
      self.errors.add(:name_param, "物品不存在") if self.item.nil?
    if self.item
      self.errors.add(:quantity, "库存不足") unless self.quantity.to_i > self.item.quantity.to_i 
    end
  end
end
