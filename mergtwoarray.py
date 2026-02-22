a1 = [1, 3, 5]
a2 = [2, 4, 6]

def merge(a1, a2):
    i = j = 0
    result = []

    while i < len(a1) and j < len(a2):
        if a1[i] < a2[j]:
            result.append(a1[i])
            i += 1
        else:
            result.append(a2[j])
            j += 1

    result.extend(a1[i:])
    result.extend(a2[j:])
    return result

print(merge([1,3,5],[2,4,6]))