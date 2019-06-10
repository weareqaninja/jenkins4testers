#language:pt

@login
Funcionalidade: Busca
    Para que eu possa verificar se existe o filme desejado
    Sendo um gestor de catálogo
    Posso pesquisar items pelo titulo
    
    Cenario: Busca por titulo

        Dado que temos "batman_trilogy" do catalogo
        Quando eu faço uma busca pelo termo "Batman"
        Então devo ver os seguintes titulos:
            | keyword                                |
            | Batman Begins                          |
            | Batman O Cavaleiro das Trevas          |
            | Batman O Cavaleiro das Trevas Ressurge |

    Cenario: Busca 404

        Quando eu faço uma busca pelo termo "American Pie"
        Então devo ver a mensagem "Puxa! não encontramos nada aqui :("
