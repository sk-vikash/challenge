def getKey(object, key):
     for x in key:
          if x == "/":
               continue
          object = object[x]

     print(object)

print("Test Case 1 - object is {\"a\":{\"b\":{\"c\":\"d\"}}} and key is a/b/c")
getKey({"a":{"b":{"c":"d"}}} , "a/b/c")

print("\nTest Case 2 - object is {\"a\":{\"b\":{\"c\":\"d\"}}} and key is a/b/")
getKey({"a":{"b":{"c":"d"}}} , "a/b/")

print("\nTest Case 3 - object is {\"a\":{\"b\":{\"c\":\"d\"}}} and key is a/b")
getKey({"a":{"b":{"c":"d"}}} , "a/b")

print("\nTest Case 4 - object is {\"a\":{\"b\":{\"c\":\"d\"}}} and key is a/")
getKey({"a":{"b":{"c":"d"}}} , "a/")

print("\nTest Case 5 - object is {\"a\":{\"b\":{\"c\":\"d\"}}} and key is a")
getKey({"a":{"b":{"c":"d"}}} , "a")

print("\nTest Case 6 - object is {\"a\":{\"b\":{\"c\":\"d\"}}} and key is blank")
getKey({"a":{"b":{"c":"d"}}} , "")

print("\nTest Case 7 - object is {\"x\":{\"y\":{\"z\":\"a\"}}} and key is x/y/z")
getKey({"x":{"y":{"z":"a"}}} , "x/y/z")

print("\nTest Case 8 - object is {\"x\":{\"y\":{\"z\":\"a\"}}} and key is x/y/")
getKey({"x":{"y":{"z":"a"}}} , "x/y/")

print("\nTest Case 9 - object is {\"x\":{\"y\":{\"z\":\"a\"}}} and key is x/y")
getKey({"x":{"y":{"z":"a"}}} , "x/y")

print("\nTest Case 10 - object is {\"x\":{\"y\":{\"z\":\"a\"}}} and key is x/")
getKey({"x":{"y":{"z":"a"}}} , "x/")

print("\nTest Case 11 - object is {\"x\":{\"y\":{\"z\":\"a\"}}} and key is x")
getKey({"x":{"y":{"z":"a"}}} , "x")

print("\nTest Case 12 - object is {\"x\":{\"y\":{\"z\":\"a\"}}} and key is blank")
getKey({"x":{"y":{"z":"a"}}} , "")

