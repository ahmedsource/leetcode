# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  ans = []
  nums.sort!
  nums.each_with_index do |n, i|
    next if i > 0 && n == nums[i - 1]
    l = i+1
    r = nums.length-1
    while l < r
      triplet = [n, nums[l], nums[r]]
      sum = triplet.sum
      if sum > 0
        r-=1
      elsif sum <0
        l+=1
      else sum == 0
        ans.push(triplet) if triplet.sum === 0
        l+=1
        l+=1 while nums[l] == nums[l-1]
      end
    end
  end
  ans
end