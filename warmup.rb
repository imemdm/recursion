def fibs(n)
  fbs = [0, 1]

  2.upto(n-1) do |i|
    fbs << fbs[i - 1] + fbs[i - 2]
  end

  fbs
end

def fibs_rec(n)
  return n if n < 2

  fibs_rec(n - 2) + fibs_rec(n - 1)
end
