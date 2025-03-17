def isRefCorrect(referencenumber):
    listed = list(referencenumber)
    checknumber = listed.pop()
    totalAmount = 0
    product = 1

    while len(listed) > 0:
        if product == 1:
            product = 7
        elif product == 3:
            product = 1
        else:
            product = 3
        totalAmount += product * int(listed.pop())

    result = (10 - (totalAmount % 10)) % 10
    return result == int(checknumber)

def isEqual(headerTotal, rowTotal, maxDifference):
    if(abs(headerTotal - rowTotal) < maxDifference):
        return True
    return False 

if __name__ == '__main__':
    ref = ['1431432', '15432359', '1531439']
    val = isRefCorrect(ref)
    print(val)