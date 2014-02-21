class HomeController < ApplicationController
  def home
  	@users = User.all
  	@despesas = Despesa.includes(:user)
    @anos = Despesa.select(:ano_ref).distinct
    @meses = Despesa.select(:mes_ref, :ano_ref).distinct
  end

  def help
  end

  def novoMes
  	@despesas = Despesa.where(:ano_ref => Despesa.maximum(:ano_ref), :mes_ref => Despesa.maximum(:mes_ref), :recorrente => 1)

    @despesas.each do |d|
      @despesa = Despesa.new(nome: d.nome, ano_ref: d.ano_ref, mes_ref: (d.mes_ref+1), valor: d.valor, recorrente: d.recorrente)
      @despesa.save
    end
      
      redirect_to root_path

  end

end
