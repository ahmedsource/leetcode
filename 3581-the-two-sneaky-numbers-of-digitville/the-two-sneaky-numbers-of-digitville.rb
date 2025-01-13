# @param {Integer[]} nums
# @return {Integer[]}
def get_sneaky_numbers(nums)
    l = nums.length
    h = {}
    r = []
    for i in 0...l
        h[nums[i]] ? r.push(nums[i]) : h[nums[i]] = i
    end
    p r
end