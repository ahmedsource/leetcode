# @param {String} pattern
# @param {String} s
# @return {Boolean}
#290. Word Pattern
def word_pattern(pattern, s)
  letters = pattern.split('')
  words = s.split(" ")
  map = {}
  ans = true
  ans = false if letters.length != words.length
  letters.each_with_index do |l, i|
    if map[l]
      map[l] === words [i] ? next : ans = false
    else
      map.values.include?(words[i]) ? ans = false : map[l] = words[i]
    end
  end
  return ans
end