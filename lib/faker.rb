# -*- encoding : utf-8 -*-

class Faker
  def self.fake_name
    data = ::DATA.split("\n")
    data[rand(data.length)].split(",")[0]
  end

  def self.fake_phone
    data = ::DATA.split("\n")
    data[rand(data.length)].split(",")[2]
  end

  def self.fake_paizhao
    initials = %w( 京 津 冀 晋 蒙 辽 黑 沪 苏 浙 皖 闽 赣 鲁 豫 鄂 湘)
    letter = ('A'..'Z').to_a
    initials.sample + letter.sample + ("%06d" % rand(100000))
  end

end


DATA = <<EOF


EOF
