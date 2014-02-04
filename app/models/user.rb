class User < ActiveRecord::Base
	has_many :despesas
	validates_presence_of :nome, :banco, :agencia, :conta
end
