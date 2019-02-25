alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ "
tailleAlphabet = len(alphabet)

def encode(mot):
    number = 0
    for index, i in enumerate(mot):
        number = number + (alphabet.index(i)) * tailleAlphabet ** (len(mot) - 1 - index)
    return number

encode('ninja')
 
def decode(number):
    r = []
    while(number > 0):
        r.append(alphabet[number % tailleAlphabet])
        number = number // tailleAlphabet
    return ''.join(r)[::-1]
        
decode(103804263)

phrase = "On va essayer avec une phrase"

e = encode(phrase)
print(e)
d = decode(e)
print(d)

for index, i in enumerate(alphabet):
    print("INSERT INTO alphabet VALUES (\"%s\", %s);" % (i, index+1))