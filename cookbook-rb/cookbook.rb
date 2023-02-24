INSERT_RECIPE = 1
PRINT_RECIPES = 2
SEEK_RECIPES = 3
EXIT = 4

def welcome()
    puts "Bem vindo ao cookbook, sua rede social de receitas"
    puts
end

def menu()
    puts "[#{INSERT_RECIPE}] Cadastrar Receita"
    puts "[#{PRINT_RECIPES}] Ver receitas cadastradas"
    puts "[#{SEEK_RECIPES}] Buscar Receitas" 
    puts "[#{EXIT}] Sair do Programa"
    
    print "Escolha uma opcão: "
    #return
    gets.to_i()
end

def insert_recipe()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita '#{nome}' cadastrada com Sucesso!"
    puts 
    return { nome: nome, tipo: tipo }
end

def print_recipes(receitas) 
    puts "======= Receitas Cadastradas ======="
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if receitas.empty? 
        puts "Nenhuma receita cadastrada."
    end
end

def seek_recipes(nome)
    puts "Qual receita está procurando? "
    name_recipe = gets.chomp()
    puts
    if(name_recipe )
        puts "Receita #{name_recipe} encontrada."
    else
        puts "Receita não encontrada."
    end
end

welcome()

receitas = []

opcao = menu()

loop do
    if(opcao == INSERT_RECIPE)
        receitas << insert_recipe()
    elsif(opcao == PRINT_RECIPES)
        print_recipes(receitas)
    elsif(opcao == SEEK_RECIPES)
        seek_recipes(receitas)
    elsif(opcao == EXIT)
        break
    else
        puts "Opção inválida."
    end

    opcao = menu()
end  
    puts
    puts "Obrigado por usar o Cookbook, volte sempre!"
