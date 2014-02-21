class Despesa < ActiveRecord::Base
	belongs_to :user, :foreign_key => :usr_pag
	validates_presence_of :nome, :mes_ref, :ano_ref,  message: "nao pode estar em branco."
end
