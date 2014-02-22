# -*- encoding : utf-8 -*-
class Ruku < ActiveRecord::Base
  belongs_to :user
  attr_accessible :item_id, :name, :quantity, :user_id, :xinghao, :supplier, :name_param
  attr_accessor :name_param


  validates :name_param, :presence => {:message => "名称不能空"}
  validates :quantity, :presence => {:message => "数量不能空"}
  validates :quantity, :numericality => {:message => "入库数量为整数"}
  validate :name_xinghao_exist

  def name_xinghao_exist
     self.errors.add(:name_param, "物品不存在， 先再库存中添加物品") unless Item.exists?(["name = ? AND xinghao = ?", self.name, self.xinghao])
  end

  def name_param=(what)
    self.name = what.split("-")[0]
    self.xinghao = what.split("-")[1]
  end

  def name_param
    (self.name.present? && self.xinghao.present?) ? "#{self.name}-#{self.xinghao}" : ""
  end

end
