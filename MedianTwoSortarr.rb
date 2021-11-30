#The idea is to find the median rank of element(s) for the combined array
#If nums1 is longer than nums2, we can get the median of nums1 (m1 = nums1[s]) and find how many elements in nums2 are smaller than m1 (lets say d). 
#Then m1's rank in the combined array is s - i + 1 + d, if this is the desired rank, we can return the m1. If the desired rank is smaller than this, 
#If so, we can safely discard the right half of nums1 and m1. If the desired rank is larger than this,
#We can safely discard the left half of nums1 and m1, but we also need to update rank (-(s-i + 1)) in the latter case.
#Since we always discard the half of the longer array,  the total final time complexity is O(log(m) + log(n))

#time complexity: O(log(m) + log(n))
#space complexity: O(1)



def find_median_sorted_arrays(nums1, nums2)
   
  nums1.concat(nums2).sort!
  return nums1[nums1.length/2] if nums1.length.odd?
  (nums1[nums1.length/2-1] + nums1[nums1.length/2]) / 2.0
end




#Success
#Details 
#Runtime: 60 ms, faster than 92.38% of Ruby online submissions for Median of Two Sorted Arrays.
#Memory Usage: 212 MB, less than 75.34% of Ruby online submissions for Median of Two Sorted Arrays.


