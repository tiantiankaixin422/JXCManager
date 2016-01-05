class Part < ActiveRecord::Base
  validates :name, :code,  :presence => { :message => '必填' } ,
            :uniqueness => {:message => '重复' }
  validates :price,  :presence => { :message => '必填' } ,
            :numericality => {:message => '必须是数字' }
end
