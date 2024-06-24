# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  for i in 0...nums.length
    nums.reject! {|x| x==val}
  end
  nums.count
end