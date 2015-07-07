class LoanPayment
  def initialize(apr, years, principal)
    @apr = apr.to_f
    @years = years.to_i
    @principal = principal.to_f
  end

  def apr
    return @apr
  end

  def years
    return @years
  end

  def principal
    return @principal
  end

  def rate_per_period
    return apr / 100 / 12
  end

  def number_periods
    return years * 12
  end

  def present_value
    return principal
  end

  def monthly_payment
    return (rate_per_period*present_value)/(1 - (1+rate_per_period)**(-number_periods))
  end
end
