class TarefasController < ApplicationController
	respond_to :html, :json, :xml

	def index
		@tarefas = Tarefa.all
		count_tarefas_concluidas
		respond_with @tarefas
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

	def edit
		index
		render :index
	end

	def create
		Tarefa.create titulo: params[:tarefa]
		redirect_to tarefas_path
	end

	def update
		Tarefa.update params[:id], titulo: params[:titulo]
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
