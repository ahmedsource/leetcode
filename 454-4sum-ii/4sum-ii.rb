# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @param {Integer[]} nums4
# @return {Integer}
def four_sum_count(nums1, nums2, nums3, nums4)
  ans = 0
  m = {}
  n = nums1.length
  for i in 0...n
    for j in 0...n
      x = nums1[i]
      y = nums2[j]
      sum = x+y
      m[sum] ? m[sum] = m[sum] + 1 : m[sum] = 1
    end
  end
  for i in 0...n
    for j in 0...n
      x = nums3[i]
      y = nums4[j]
      target = -(x+y)
      ans+=m[target] if m[target]
    end
  end
  ans
end