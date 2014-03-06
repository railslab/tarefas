class TarefasController < ApplicationController
	def index
		@tarefas = Tarefa.all
	end
end