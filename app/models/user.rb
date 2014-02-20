# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  ROLES = { :boss => "经理", :agent => "一般工作人员" }
  devise :database_authenticatable

  scope :agents, lambda { scoped.select { |u| u.roles.include? "agent" } } 

  serialize :roles, Array

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :mobile, :login, :roles
  validates :name,  :presence => { :message => "姓名不能为空" }
  validates :name, :uniqueness => true
  validates :login,  :presence => { :message => "登陆账号不能空" }
  validates :login, :uniqueness => true
  validates :mobile, :presence => { :message => "手机号码不能为空" }
  validates :password, :presence => { :message => "密码不能为空" }, :on => :create
  validates :password_confirmation, :presence => { :message => "密码确认不能为空" }, :on => :create
  validates :roles, :presence => { :message => "用户角色不能为空" }

  has_many :locations
  has_many :balances
  has_one :huozhan
  has_many :shippings
  has_many :cargos

  def boss?
    roles.include? "boss"
  end

  def agent?
    roles.include? "agent"
  end

  def huozhan_admin?
    self.huozhan.present?
  end

  def caiwu_admin?
    self.locations.present?
  end

  def roles_in_words
    self.roles.map do |role|
      ROLES[role.to_sym]
    end.join(", ")
  end
end
