class Tarefa < ActiveRecord::Base
	# procurar saber porque nao funciona:
	# default_scope { order('created_at').reverse_order }
	default_scope { order('created_at desc') }
	scope :concluidas, -> { where(concluida: true) }

	# alternativa
	def self.ativas
		where concluida: false
	end
end
