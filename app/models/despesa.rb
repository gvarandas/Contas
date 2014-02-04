class Despesa < ActiveRecord::Base
	belongs_to :user, foreign_key: :user_id
	validates_presence_of :nome, :valor, :message => "não pode estar em branco"
end
