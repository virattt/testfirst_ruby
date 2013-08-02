def measure(i=1)
  count = 0 
  total_time = 0

  i.times do
    start_time = Time.now

    yield

    end_time = Time.now
    total_time += (end_time - start_time).to_f
    count += 1
  end
  total_time / count # take average
end