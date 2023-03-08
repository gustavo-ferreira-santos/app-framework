Dado('sleepar alguns segundos') do
  binding.pry
  puts 'sleepando 5 segundos'
  sleep(5)
end

Quando('sleepar mais segundos') do
  puts 'sleepando 10 segundos'
  sleep(10)
end

Então('sleepar ainda mais segundos') do
  puts 'sleepando 15 segundos'
  sleep(15)
end
