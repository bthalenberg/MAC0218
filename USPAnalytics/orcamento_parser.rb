directory = "../"
input_file = 'orcamento.txt'
output_file = 'orcamento.json'

$map = Hash.new

def solve(item)
  h = Hash.new
  h['name'] = item.sub(/\(.*\)/, "").strip
  if $map[item].nil?
    h['size'] = 1
  else
    h['children'] = []
    $map[item].each do |c|
      h['children'] << solve(c)
    end
  end
  h
end

File.open(File.join(directory, input_file), 'r') do |f|
  lines = f.readlines
  l_tabs = [-1]
  stack = ["Orçamento"]
  lines[2, 118].each do |line|
    n_tabs = line[/\A */].size
    element = line
    while n_tabs <= l_tabs.last
      puts "pop #{stack.pop}"
      l_tabs.pop
    end
    puts "ligando #{element} a #{stack.last}"
    if $map[stack.last].nil?
      $map[stack.last] = []
    end
    $map[stack.last].push(element)
    l_tabs.push(n_tabs)
    stack.push(element)
  end
end

File.open(File.join(directory, output_file), 'w') do |f|
  json = solve("Orçamento").to_json
  puts json
  f.puts json
end