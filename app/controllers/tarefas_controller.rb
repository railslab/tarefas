class TarefasController < ApplicationController
	def index
		@tarefas = Tarefa.all
		count_tarefas_concluidas
	end

	def ativas
		@tarefas = Tarefa.where concluida: false
		count_tarefas_concluidas
		render :index
	end

	def concluidas
		@tarefas = Tarefa.where concluida: true
		count_tarefas_concluidas
		render :index
	end

	def toggle
		Tarefa.find(params[:id]).toggle! :concluida
		redirect_to tarefas_path
	end

	def create
		Tarefa.create titulo: params[:tarefa]
		redirect_to tarefas_path
	end

	def destroy
		Tarefa.delete params[:id]
		redirect_to tarefas_path
	end

	def destroy_concluidas
		Tarefa.delete_all concluida: true
		redirect_to tarefas_path
	end

private

	def count_tarefas_concluidas
		@tarefas_concluidas_count = Tarefa.where(concluida: true).count
	end
end
