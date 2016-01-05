class PutRepertory < ActiveRecord::Base

  validates :order_num, :presence => { :message => '必填' } ,
            :uniqueness => {:message => '重复' }
  validates :sum, :presence => { :message => '必填' } ,
            :numericality => {:message => '必须是数字' }
  belongs_to :part
end
