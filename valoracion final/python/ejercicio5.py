Historial = (2350, 5960, 23000, 1000, 8900)
total = 0
for x in range(len(Historial)):
    total += Historial[x]
if total < 30000:
    print(total)
else:
    print("Gastos por encima de lo presupuestado")