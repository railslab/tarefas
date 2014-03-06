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

	def destroy
		Tarefa.delete params[:id]
		redirect_to tarefas_path
	end

	def destroy_concluidas
		Tarefa.delete_all concluida: true
		redirect_to tarefas_path
	end
end
