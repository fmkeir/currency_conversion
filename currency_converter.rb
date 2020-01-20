require_relative('currency_converter_class')

p "What country do you want to exchange to?"
country = gets.chomp
p "How many euros do you want to exchange?"
value = gets.chomp.to_f

converter = CurrencyConverter.new
result = converter.conversion(country, value)
p "#{value} EUR at an exchange rate of #{converter.countries_rate[country.to_sym]} is #{result} #{converter.countries_currency[country.to_sym]}"
