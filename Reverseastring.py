def reverse_string(s):
    return s[::-1]

print(reverse_string("olleh"))


def reverse_string(s):
    result = ""
    for char in s:
        result = char + result
    return result

print(reverse_string("dlrow"))