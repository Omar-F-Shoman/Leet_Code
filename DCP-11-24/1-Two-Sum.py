from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        index_map = {}  # To store the index of each number
        for i, num in enumerate(nums):
            complement = target - num
            if complement in index_map:
                return [index_map[complement], i]  # Return the indices of the two numbers
            index_map[num] = i  # Store the index of the current number