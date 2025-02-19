# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    h = Hash.new
    nums.each_with_index do |v, i|
        return true if h.include?(v)
        h[v] = i
    end
    return false
end