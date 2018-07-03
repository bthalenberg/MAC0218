directory = "./"
input_file = 'orcamento_clean.txt'

DespesaDetalhe.delete_all

$map = Hash.new

File.open(File.join(directory, input_file), 'r') do |f|
  lines = f.readlines
  l_tabs = [-1]
  stack = ["Orçamento"]
  lines.each do |line|
    n_tabs = line[/\A */].size
    element = line
    while n_tabs <= l_tabs.last
      l_tabs.pop
      stack.pop
    end
    $map[element] = [stack.last, rand(1..1000)]
    l_tabs.push(n_tabs)
    stack.push(element)
  end
end

DespesaDetalhe.create( alinea: "Orçamento", grupo: nil, parent: nil, proposta_orcamentaria: 0, 
  					   participacao: nil, ano: 2018)

$map.each do | key, value|
  DespesaDetalhe.create( alinea: key, grupo: nil, parent: value[0], proposta_orcamentaria: value[1], 
  							participacao: nil, ano: 2018)
end