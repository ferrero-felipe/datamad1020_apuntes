OPERACIÓN TRIUNFO DE LAS FUNCIONES

- es un bloque de un codigo encapsulado **reutilizable**
- puede tener argumentos
- se pueden llamar, utilizar
- se puede llamar (por su nombre) una función dentro de otra función
- puede tener un return para devolver un valor
- Syntax python posible para definir funciones:
```python
def function(arg1,arg2):
    pass
```
- permite la **ABSTRACCIÓN**
- existen built-in functions (funciones que vienen por defecto)
```python
print("Hello World")
```
```shell
echo "Hello World"
```
- se pueden importar (librerias, modulos)
- las funciones tienen su proprio `scope`. Variables locales definidas en una función no son accesibles fuera de ella.
```python
def func(a):
    b = a + 5
func(5)
print(b)
">>>> NameError: b not defined"
```
- Funciones pueden ser recursivas,, i.e.: llaman a si mismas
```python
def recurs():
    return recurs()
```
- Puede o no tener parametros, y pueden tener parametros con valores por defecto. Regla de la sintáxis. Los parametros por defecto siempre vienen despues de los obligatorios
```python
def func(a=True,b=None):
    pass
func(3,5)
func(8)
func(b=8)
func()
```
- Solo devuelve un objeto
```python
def func(a,b):
    return a,b # Es una tupla
```
- pueden o no tener nombre, pero 2 funciones no pueden tener el mismo nombre. Las funciones sin nombre se llaman funciones anónimas. En python se llaman `lambdas`.
```python
lambda a,b : a+b
lambda x: x
lambda _: 75
```
```js
(a,b) => a+b
```

```python
def no_return():
    a = 75
    print(a)
no_return()
```
- Una función sin return devuelve None
- TODAS LAS FUNCIONES SIEMPRE DEVUELVEN ALGO
- Tipos de funciones
    - en relación al `scope`
        - puras: solo dependen del input (de los argumentos que se le pase)
        - impuras: dependen del contexto (del estado de variables globales)
    - sobre la relación input/output
        - deterministas: siempre dan el mismo output para el mismo input / contexto
        - no-deterministas: pueden dar outputs diferentes en un mismo contexto con mismos inputs


- Las funciones se pueden definir en cualquier parte, pero siempre que esten antes de la llamada
- functions vs method
    - Todos los metodos son funciones, pero no la recíproca
    - Un metodo es una función de un a clase específica, que viene con un objeto.
    - Como reconocemos un metodo? Por la llamada.
        - Una función: `function(args)`
        - Un método: `object.method(args)`

- puede haber mas de un return, sabiendo que el return interrumpe (termina) la ejecución.

```python
def func(a):
    if a > 5:
        return True
    else:
        return False
func(6)
```


```python
def velocidad(distancia, tiempo):
    return distancia/tiempo

speed = velocidad(108, 1.003)
```

- distancia y tiempo son los PARAMETROS de la funcion velocidad.
- 108 y 1.003 son los ARGUMENTOS que se pasan a la llamada de la función velocidad