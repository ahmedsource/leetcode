# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  i = 0
  l = nums.length
  while i < l
    if nums[i] == val
      l-=1
      nums[i] = nums[l]
    else
      i+=1
    end
  end
  return l
end