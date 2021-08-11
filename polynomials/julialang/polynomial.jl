function nthPower(x, power)
  if (power < 0)
    throw(DomainError(power, "argument must be nonnegative"))
  end

  result = 1
  for i = 1:power
    result *= x
  end
  result
end

function calcTerm(coeffient, term::Tuple{Int, Int})
  coeffient * nthPower(term[1], term[2])
end
