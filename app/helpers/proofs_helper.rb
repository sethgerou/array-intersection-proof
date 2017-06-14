module ProofsHelper

  def make_arrays(input_num)

    return_array = []
    array1 = []
    array2 = []

    input_num.times {array1 << rand(1..50000)}
    input_num.times {array2 << rand(1..50000)}

    return_array.push(array1, array2)
    return_array

  end

  def hash_intersection(arrays)
    start = Time.now

    hash = {}
    arrays[0].each { |value| hash[value] = ""}

    hash_built = Time.now - start

    found = []

    arrays[1].each do |value|
      found << value if hash[value]
    end

    runtime = Time.now - start
    hash_results = {
      runtime: runtime,
      hashbuilt: hash_built,
      found: found.uniq
    }

    hash_results
  end

  def iteration_intersection(arrays)
    start = Time.now

    found = []

    arrays[0].each do |value1|
      arrays[1].each do |value2|
        found << value1 if value1 == value2
      end
    end

    runtime = Time.now - start
    iteration_results = {
      runtime: runtime,
      found: found.uniq
    }

    iteration_results
  end

end
