# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Unidade.create(nome: 'litro', sigla: 'lt')
Unidade.create(nome: 'kilograma', sigla: 'kg')
Unidade.create(nome: 'tonelada', sigla: 'ton')

Mp.create( nome: 'Cloro', apelido: 'Cloro', unidade_id: 1)
Mp.create( nome: 'Acido Sulfurido', apelido: 'Sulfurico', unidade_id: 1)
Mp.create( nome: 'Acido Acetico', apelido: 'Acetico', unidade_id: 1 )
Mp.create( nome: 'H20', apelido: 'Agua', unidade_id: 1 )



Formula.create( nome: 'detergente A' )
Formula.create( nome: 'detergente B')
Formula.create( nome: 'Limpa Vidro')
Formula.create( nome: 'Água Sanitária')
Formula.create( nome: 'Limpa Pedra')







