class StaticPagesController < ApplicationController
    # Criando uma Action(função ou método)
    def index 
        @nome = "Edinaldo"  # O rails utiliza o conceito de convention over configuration, ou seja, utlizamos as convention do ruby, não precisamos
        # configurar tudo, o rails já faz essa configuração. Ex: controller: static_page_controller.rb com a view: static_page
    end
end
