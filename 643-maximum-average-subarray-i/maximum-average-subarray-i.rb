# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums,k)
    current = nums[0...k].sum
    max = current
    i=k
    while i < nums.length
      current += nums[i] - nums[i-k]
      max = [current, max].max
      i+=1
    end
    max / k.to_f
end