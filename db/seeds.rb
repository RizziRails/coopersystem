
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


Unidade.create( id: 1, nome: 'litro', sigla: 'lt')
Unidade.create( id: 2,  nome: 'kilograma', sigla: 'kg')
Unidade.create( id: 3,  nome: 'tonelada', sigla: 'ton')

Mp.create( id: 1, nome: 'Hipoclorito de Sódio (NaCIO)', apelido: 'Cloro', unidade_id: 1)
Mp.create( id: 2, nome: 'Acido Sulfurido', apelido: 'Sulfurico', unidade_id: 1)
Mp.create( id: 3, nome: 'Acido Acetico', apelido: 'Acetico', unidade_id: 1 )
Mp.create( id: 4, nome: 'H2O', apelido: 'Agua Industrial', unidade_id: 1 )



Formula.create( id: 1, nome: 'detergente A' )
Formula.create( id: 2, nome: 'detergente B')
Formula.create( id: 3, nome: 'Limpa Vidro')
Formula.create( id: 4, nome: 'Água Sanitária')
Formula.create( id: 5, nome: 'Limpa Pedra')

Tipo.create( id: 1, tipo: 'Garrafa')
Tipo.create( id: 2, tipo: 'Galão')
Tipo.create( id: 3, tipo: 'Tambor')
Tipo.create( id: 4, tipo: 'Balde')

Material.create( id: 1, tipo: 'Plástico')
Material.create( id: 2, tipo: 'Vidro')
Material.create( id: 3, tipo: 'Pet')















