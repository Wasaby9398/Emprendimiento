# Segundo Parcial

## Diseño y diagrama de flujo
Para este Segudo parcial se realiza una FSM de un semaforo de dos vias según la siguiente imagen: 
![alt text](Imagenes/image-2.png) , ![alt text](Imagenes/image-1.png)

Donde lo que se pide es que se le agrugue una funcion unica, la cual para esta entrega yo lo que he agregado es tener botones para pasos peatonales, asi como tambien cambiar las salidas de 2 leds por semaforo a tener que cada led represente una sola luz de los semaforos.

La funcion extra cosnta en, un botón para cruce peatonal, el cual consiste en si la calle que se quiere cruzar tiene tránsito y el semáforo está en verde, el peatón puede presionar un botón y el semáforo correspondiente a la calle que se quiere cruzar se pondrá en rojo, y cuando este en rojo la calle se prende una luz peatonal en color verde indicando que el peatón puede cruzar, el diagrama de flujo quedaria como el siguiente: 

![alt text](Imagenes/image-3.png)

Con este diagrama de estados se procede a sacar las tablas de estados, y las ecuaciones resultantes:

![alt text](Imagenes/Tabla_de_Entradas.png), ![alt text](Imagenes/Ecuaciones_NextState.png)

![alt text](Imagenes/Tabla_Out.png), ![alt text](Imagenes/Ecuaciones_Output.png)

>si se desea ver estas tablas, puede descargar el archvio de [Tablas de estados](Documentos/Tablas%20de%20estados.xlsx)
>si es necesario tambien se provee una simulacion en logisim en el archivo [Simulacion](Documentos/Simulacion.circ)

## Código Vivado
>Todos los archivos de Vivado se encuentran en la carpeta [Vivado](Vivado/)
>esta carpeta se puede descargar y ejecutar el archivo de [SegundoParcial.xpr](Vivado/SegundoParcial.xpr) y se tendra
>el proyecto en vivado.



## Resutados


