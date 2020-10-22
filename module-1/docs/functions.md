# Funciones

* En `python` las funciones tienen el tipo `function` y se pueden asignar a variables o pasar como argumentos.
* Son bloques de codigo reutilizables
* Permiten segmentar el codigo y sobre todo dan capacidad de `ABSTRACIÓN`
    * Una función como una caja negra con entrada y salida

* Una función puede o no tener parametros
* Puede tener parametros obligatórios, u opcionales (con valor por defecto, definidos con `=` en la firma)
* El return no es obligatorio
* UNA FUNCION QUE NO TIENE RETURN DEVUELVE `None`
* Puede devolver mas de una cosa, solo un objeto (`tuple`)
* Puede haber mas de un return
* El return termina la ejecución de la función

* Hay funciones que ya vienen con python: `BUILT-IN` functions
* Guardar funciones en librerias/modulos
* import -> Se pueden importar funciones!

* Se puede definir (no siempre) en python con `def`:
    ```python
    def function_name(args):
        return args
    ```

* Tipos(clases) tienen metodos, y metodos son funciones.
    ```python
    str.title()
    list.append()
    ```
    * Una función no es un método
    * Un método sí es una función

## Tipos de funciones
* PURAS: la salida depende SOLO de los parametros de entrada
* IMPURAS: la salida depende de variables/funciones globales (contexto) fuera del scope.
* DETERMINISTAS: bajo los mismos argumentos, siempre devuelve lo mismo
* NO-DETERMINISTAS: devuelve una cosa diferente cada vez que la llamas

## Scope
* Las funciones tienen su proprio `SCOPE` (ámbito) de variables/funciones. Las variables definidas dentro de una función solo son accesibles desde dentro de esta
* Variables GLOBALES: respecto todas las funciones
* Variables LOCALES: respecto de la propia función

## (Parámetros & Argumentos) 

* Parámetros: Lo que las funciones reciben (firma de la función)
* Argumentos: Se pasan a las funciones (llamada)

* El numero de parametros que defines es el mismo con el que tienes que llamar a una función
* Pero el numero de argumentos y parametros para una misma función puede variar con el uso de parametros por defecto.

* Hay argumentos posicionales (por el orden) y del tipo keyword (por el nombre)

* El orden de los argumentos posicionales importa
    ```python
    def division(a,b):
        return a/b
    # 4/5
    a=4
    b=5
    division(b,a) # => 5/4
    ```

## Otros

* Se puede definir una función dentro de otra. La función definida esta en el SCOPE de la funcion padre.
* RECURSIVIDAD: Una función se puede llamar a si misma.
* Las funciones, si se definen con def siempre hay que poner un nombre. Pero pueden tener o no nombre (funciones anónimas: `lambda` en python)
* Una función puede recibir otra como parámetro: `CALLBACK`
* Se usa el `pass` para no escribir bloque de codigo y evitar un SyntaxError