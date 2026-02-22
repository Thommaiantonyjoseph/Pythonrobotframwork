def deep_compare(d1, d2):
    if type(d1) != type(d2):
        return False

    if isinstance(d1, dict):
        if d1.keys() != d2.keys():
            return False
        return all(deep_compare(d1[k], d2[k]) for k in d1)

    return d1 == d2

d1 = {"a": 1, "b": {"c": 2}}
d2 = {"a": 1, "b": {"c": 2}}

print(deep_compare(d1, d2))