def assign_drug(filename):
    '''Assigns a drug to a file name'''
    number = filename[13:-4]
    result = ''
    if(int(number) % 2) == 1:
        result = 'tylenol'
    else:
        result = 'placebo'
    return result

import sys

filename = sys.argv[1] 
print assign_drug(filename)

assert assign_drug("inflammation_1.dat") == "tylenol"
assert assign_drug("inflammation_2.dat") == "placebo"
assert assign_drug("inflammation_3.dat") == "tylenol"
