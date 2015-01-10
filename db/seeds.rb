
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


Unidade.create( nome: 'litro', sigla: 'lt')
Unidade.create( nome: 'kilograma', sigla: 'kg')
Unidade.create( nome: 'tonelada', sigla: 'ton')

Mp.create( nome: 'Hipoclorito de Sódio (NaCIO)', apelido: 'Cloro', unidade_id: 1)
Mp.create( nome: 'Acido Sulfurido', apelido: 'Sulfurico', unidade_id: 1)
Mp.create( nome: 'Acido Acetico', apelido: 'Acetico', unidade_id: 1 )
Mp.create( nome: 'H2O', apelido: 'Agua Industrial', unidade_id: 1 )



Formula.create( nome: 'detergente A' )
Formula.create( nome: 'detergente B')
Formula.create( nome: 'Limpa Vidro')
Formula.create( nome: 'Água Sanitária')
Formula.create( nome: 'Limpa Pedra')

Tipo.create( tipo: 'Garrafa')
Tipo.create( tipo: 'Galão')
Tipo.create( tipo: 'Tambor')
Tipo.create( tipo: 'Balde')

Material.create(  tipo: 'Plástico')
Material.create(  tipo: 'Vidro')
Material.create(  tipo: 'Pet')















