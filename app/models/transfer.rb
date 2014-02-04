class Transfer < ActiveRecord::Base
	validates_presence_of :usr_pagante, :usr_destino
	validates :valor, :numericality => {:greater_than => 0}
end
