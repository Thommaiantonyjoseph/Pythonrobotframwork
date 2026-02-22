def find_missing(nums):
    missing = []
    for num in range(min(nums), max(nums)):
        if num not in nums:
            missing.append(num)
    return missing

print(find_missing([1,2,4,6]))