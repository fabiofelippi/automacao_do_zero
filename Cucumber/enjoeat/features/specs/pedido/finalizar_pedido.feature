#language: pt

@green_food
Funcionalidade: Finalizar pedido
    Para que eu possa receber pedido no meu endereço
    Sendo um usuário que fechou o carrinho com itens
    Posso finalizar o meu pedido

    # MODO RUIM DE ESCREVER
    # Cenario: Finalizar pedido com Cartão Refeição
    #     Dado que eu fechei meu carrinho 
    #     E preencho o campo nome com "Fabio"
    #     E preencho o campo email com "fabio@eu.com"
    #     E preencho o campo de cofirmação de email com "fabio@eu.com"
    #     E preencho o campo rua com "Avenida Paulista"
    #     E preencho o campo numero com "1000"
    #     E preencho o campo complemento com "17 andar"
    #     E clico na forma de pagamaneto "Cartão Refeição"
    #     Quando clico em "Finalizar Pedido"
    #     Então devo ver uma mansagem de sucesso

    Cenario: Finalizar pedido com Cartão Refeição
        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descrição                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maça. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        E informei os meus dados de entrega:
            | nome        | Fabio            |
            | email       | fabio@eu.com     |
            | rua         | Avenida Paulista |
            | numero      | 1000             |
            | complemento | 17o andar        |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """