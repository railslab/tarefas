class ChangeDefaultTarefaConcluida < ActiveRecord::Migration
  def change
  	change_column_default :tarefas, :concluida, false
  end
end
