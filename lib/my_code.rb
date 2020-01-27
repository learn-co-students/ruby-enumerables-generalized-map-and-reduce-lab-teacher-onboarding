def map(arr)
  rarr = []
  arr.each { |e| rarr.push(yield(e)) }
  rarr
end

def reduce(arr, start = 0)
  acc = start
  arr.each { |e| acc = yield(acc, e) }
  acc
end
