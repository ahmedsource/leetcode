# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.each_with_index do |n, i|
        return i if n >= target
    end
    nums.length
end