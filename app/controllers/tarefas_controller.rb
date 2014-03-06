class TarefasController < ApplicationController
	def index
		@tarefas = Tarefa.all
	end

	def ativas
		@tarefas = Tarefa.where concluida: false
		render :index
	end

	def concluidas
		@tarefas = Tarefa.where concluida: true
		render :index
	end
end
