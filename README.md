# Tarefas (TODO)

Baseado neste exemplo:
[todomvc](http://todomvc.com/architecture-examples/backbone/)

## Passos

**Passo 1:** baixar o [projeto inicial](https://github.com/railslab/tarefas/releases) e descompactar

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

**Passo 9:** [exibir o título da tarefa](https://github.com/railslab/tarefas/commit/6df7423101e755bee839ef5768c199831f09e4d5)

**Passo 10:** [contador de tarefas no rodapé](https://github.com/railslab/tarefas/commit/83f04a74d196c4f629c371b9abef09b24d5fb7de)

**Passo 11:** [colocar classe completed se a tarefa estiver concluida](https://github.com/railslab/tarefas/commit/a335c753f43a9f0a96f97f54535a45ce765d9f58)

**Passo 12:** Criar [rota customizada](https://github.com/railslab/tarefas/commit/8bcee399ec8da0da77aa7a846cdf2cd109358224) para exibir as tarefas ativas

**Passo 13:** [Selecionar link ativo da página atual](https://github.com/railslab/tarefas/commit/92497670945ef6421393f53595035ce2e84388ff)

**Passo 14:** [excluir tarefas](https://github.com/railslab/tarefas/commit/28027222b330bfd77c96057415baad1d7bc316d2)
