# Tarefas (TODO)

Baseado neste exemplo:
[todomvc](http://todomvc.com/architecture-examples/backbone/)

## Passos

**Passo 1:** baixar o projeto inicial e descompactar:

	https://github.com/railslab/tarefas/releases

**Passo 2:** entrar na pasta do projeto e instalar as dependências:

	cd tarefas
	bundle install --verbose

**Passo 3:** iniciar o servidor em background: localhost:3000

	rails server -d

**Passo 4:** criar o model tarefa:

	rails g model tarefa titulo concluida:boolean --no-test-framework

**Passo 5:** criar a tabela no banco

	rake db:migrate

**Passo 6:** colocar o seguinte código dentro do arquivo db/seeds.rb

	for i in 1..9
	  Tarefa.create titulo: "Tarefa #{i}",
	                concluida: i % 3 == 0
	end

**Passo 7:** executar o seed para preencher o banco:

	rake db:seed

**Passo 8:** exibir lista de tarefas, baseado [neste exemplo](https://github.com/railslab/tarefas/commit/3bd785475cf51bf792eecf0b579d395e1f26c7b6)