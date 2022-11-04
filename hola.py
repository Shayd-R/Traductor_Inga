t="hola"
text=t+" leo como vas"
text1=text.split()
traduc=[]
for palabras in text1:
    if palabras=="hola":
        a="hello"
    else:
        a=palabras
    traduc.append(a)  
    print(traduc)
print(traduc)