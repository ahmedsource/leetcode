# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums,k)
    current = nums[0...k].sum
    max = current
    (k...nums.length).each do |i|
      current += nums[i] - nums[i-k]
      max = [current, max].max
    end
    max / k.to_f
end