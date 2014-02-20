# -*- encoding : utf-8 -*-
class Admin::ReportsController < Admin::BaseController
  def index
    @balances = Balance.out.all || []
    @grouped_balances = @balances.group_by {|b| b.paizhao }
    @series = []
    Reason.out.all.each do |r|
      data = []
      @grouped_balances.each_pair do |paizhao, balances|
        data << balances.select{|b| b.reason == r.reason}.sum(&:amount)
      end
      @series << {:name => r.reason, :data  => data.dup}
    end
    @in_balances = Balance.in.all || []
  end
end
