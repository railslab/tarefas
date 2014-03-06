# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# criar 9 tarefas numeradas de 1 a 9, marcando como concluida de 3 em 3
for i in 1..9
  Tarefa.create titulo: "Tarefa #{i}",
                concluida: i % 3 == 0
end