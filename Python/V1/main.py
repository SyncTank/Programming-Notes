print("hello world")

with open("books/frankenstein.txt") as f:
    file_contents = f.read()
    
#print(len(file_contents.split()))

dct = {}
lst_spl = file_contents.lower().split()

for item in lst_spl:
        for char in item:
            if char.isalpha():
                if char not in dct:
                    dct[char] = 1
                elif char in dct:
                    dct[char] = dct[char] + 1
            

print("--- Begin report of books/frankenstein.txt ---")
print(len(file_contents.split()), " words found in the document")
print()

order_dct = dict(sorted(dct.items(), key=lambda item: item[1], reverse=True))
# dictionary way is better
#for key, value in order_dct.items():
#    print(f"The {key} character was found {value} times")

lst_key = list(order_dct.keys())
lst_pair = list(order_dct.values())

for count in range(0, len(lst_key)):
    print(f"The {lst_key[count]} character was found {lst_pair[count]} times")
    
print("--- End report ---")
