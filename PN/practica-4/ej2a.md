# Utilidad de Comandos en Linux

## i. `top`
- Muestra información en tiempo real sobre la actividad del sistema, incluyendo la lista de procesos en ejecución, su consumo de recursos y otras estadísticas importantes del sistema.

## ii. `htop`
- Es una herramienta similar a `top`, pero proporciona una interfaz más interactiva y amigable para supervisar los procesos en ejecución y sus recursos.

## iii. `ps`
- Muestra una lista de procesos en ejecución en el sistema. Puede proporcionar detalles sobre los procesos, como su identificador (PID), estado y recursos utilizados.

## iv. `pstree`
- Muestra una representación en forma de árbol de los procesos en ejecución, lo que facilita la visualización de las relaciones jerárquicas entre los procesos.

## v. `kill`
- Se utiliza para enviar señales a procesos en ejecución, lo que permite detener o controlar su comportamiento. La señal más común es SIGTERM, que solicita a un proceso que se cierre de manera ordenada.

## vi. `pgrep`, `pkill`, `killall`
- Estos comandos permiten buscar y enviar señales a procesos en función de su nombre o características específicas. `pgrep` busca procesos que coincidan con un patrón y devuelve sus PIDs, `pkill` envía señales a procesos basados en un patrón, y `killall` envía señales a procesos por su nombre.

## vii. `killall`
- Envía señales a todos los procesos que coinciden con un nombre específico.

## viii. `renice`
- Permite cambiar la prioridad de ejecución de un proceso en ejecución. Puede aumentar o disminuir la prioridad de un proceso para asignar más o menos tiempo de CPU.

## ix. `xkill`
- Es una herramienta gráfica que permite a los usuarios seleccionar una ventana en el entorno de escritorio y forzar la terminación de la aplicación que la posee.

## x. `atop`
- Ofrece una visión detallada y en tiempo real del rendimiento del sistema, incluyendo información sobre procesos, uso de CPU, memoria, E/S y más. Es una herramienta más avanzada que `top` y proporciona un registro acumulativo de datos para un análisis más profundo.

Estos comandos son útiles para supervisar, gestionar y controlar procesos y recursos en sistemas Unix y Linux.
