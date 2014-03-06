== Tarefas (TODO)

Baseado neste exemplo:
http://todomvc.com/architecture-examples/backbone/

== Passos

# Passo 1: entrar em sua pasta de projetos e fazer o clone do repositório:
	git clone https://github.com/railslab/tarefas.git

# Passo 2: entrar na pasta do projeto e instalar as dependências:
	cd tarefas
	bundle install --verbose

# Passo 3: iniciar o servidor em background: localhost:3000
	rails server -d

# Passo 4: criar o model tarefa:
	rails g model tarefa titulo concluida:boolean --no-test-framework

# Passo 5: criar a tabela no banco
	rake db:migrate

# Passo 6: colocar o seguinte código dentro do arquivo db/seeds.rb
	for i in 1..9
	  Tarefa.create titulo: "Tarefa #{i}",
	                concluida: i % 3 == 0
	end

# Passo 7: executar o seed para preencher o banco:
	rake db:seed
