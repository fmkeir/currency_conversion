class CurrencyConverter
  attr_reader :countries_rate, :countries_currency
  def initialize()
    @countries_rate = {
      america: 0.9,
      uk: 0.85,
      japan: 122.09
    }
    @countries_currency = {
      america: "USD",
      uk: "GBP",
      japan: "YEN"
    }
  end

  def conversion(country, value_in_euros)
    for target in @countries_rate.keys
      if country.to_sym == target
        return (@countries_rate[country.to_sym] * value_in_euros).round(2)
      end
    end
    return nil
  end
end
