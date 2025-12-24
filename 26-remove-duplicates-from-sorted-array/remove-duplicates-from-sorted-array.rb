# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty? || nums.nil?
  k = 1
  i = 1
  while i < nums.length
    if nums[i] != nums[i-1]
      nums[k] = nums[i]
      k+=1
    end
    i+=1
  end
  return k
end