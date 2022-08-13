Python 3.10.4 (tags/v3.10.4:9d38120, Mar 23 2022, 23:13:41) [MSC v.1929 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.

9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

          8520, 9510, 7530, 3570, 1590

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. Crear una función para determinar el valor máximo de atención gastada en “Toto”.
historial5 = (8520, 9510, 7530, 3570, 1590)
def valorMaximoGastada(historial5):
    max_value = max(historial5)
    print('Maximum value:', max_value)
    return max_value
valorMaximoGastada(historial5)