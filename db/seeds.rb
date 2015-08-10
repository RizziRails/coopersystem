
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email


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

Embalagem.create( volume: 1 , unidade_id: 1, material_id: 1, tipo: 'Garrafa 1 lt' )
Embalagem.create( volume: 2 , unidade_id: 1, material_id: 1, tipo: 'Garrafa 2 lts')
Embalagem.create( volume: 5 , unidade_id: 1, material_id: 1, tipo: 'Galão 5 lts')
Embalagem.create( volume: 20 , unidade_id: 1, material_id: 1, tipo: 'Balde 20 lts')
Embalagem.create( volume: 50 , unidade_id: 1, material_id: 1, tipo: 'Tambor 50 lts')
Embalagem.create( volume: 100 , unidade_id: 1, material_id: 1, tipo: 'Tambor 100 lts')
Embalagem.create( volume: 200 , unidade_id: 1, material_id: 1, tipo: 'Tambor 200 lts')

Status.create( id: 1,tipo: 'Em inspeção' )
Status.create( id: 2,tipo: 'Liberado p/uso' )
Status.create( id: 3,tipo: 'Rejeitado' )
Status.create( id: 4,tipo: 'Liberado c/restrições')
Status.create( id: 5,tipo: 'Encerrado')


















