def concatenar_palabras(lista, espacio):
    return espacio.join(map(str, lista))


t="hola"
text=t+" leo como vas hola"
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
result=concatenar_palabras(traduc, " ")
print(result)

