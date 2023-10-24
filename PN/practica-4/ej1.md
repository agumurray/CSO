## Conceptos

**(a) Programa y Proceso:**
- **Programa:** Es estático (se encuentra en el disco), no tiene un program counter y existe desde que se edita hasta que se borra.
- **Proceso:** Es dinámico (se encuentra en la RAM), tiene un program counter y su ciclo de vida comprende desde que se ejecuta hasta que termina.

**(b) Definición de Tiempo de Retorno (TR) y Tiempo de Espera (TE) para un Job:**
- **TR:** Tiempo que transcurre entre que el proceso llega al sistema hasta que completa su ejecución.
- **TE:** Tiempo que el proceso se encuentra en el sistema esperando, es decir, el tiempo que pasa sin ejecutarse (TR - Tiempo de CPU).

**(c) Definición de Tiempo Promedio de Retorno (TPR) y Tiempo Promedio de Espera (TPE) para un lote de JOBS:**
- Tiempos promedios de los anteriores.

**(d) ¿Qué es el Quantum?:**
- Medida que determina cuánto tiempo podrá usar el procesador cada proceso.

**(e) ¿Qué significa que un algoritmo de scheduling sea apropiativo o no apropiativo (Preemptive o Non-Preemptive)?:**
- **Non Preemptive:** Una vez que un proceso está en estado de ejecución, continúa hasta que termina o se bloquea por algún evento (por ejemplo, E/S).
- **Preemptive:** El proceso en ejecución puede ser interrumpido y llevado a la cola de listos.
  - Mayor overhead pero mejor servicio.
  - Un proceso no monopoliza el procesador.

**(f) ¿Qué tareas realizan?**
i. **Short Term Scheduler**
  - Determina qué proceso pasará a ejecutarse.
ii. **Long Term Scheduler**
  - Admite nuevos procesos a memoria (controla el grado de multiprogramación).
iii. **Medium Term Scheduler**
  - Realiza el swapping entre el disco y la memoria cuando el SO lo determina (puede disminuir el grado de multiprogramación).

**(g) ¿Qué tareas realiza el Dispatcher?:**
- Asignación de CPU: Decide qué proceso de la cola de listos se ejecutará a continuación.
- Cambio de contexto: Guarda y restaura el contexto de los procesos en la CPU para permitir cambios suaves entre ellos.
- Inicialización del proceso: Carga programas y datos en memoria y configura el entorno para la ejecución del proceso seleccionado.
- Restauración de contexto: Restaura el estado previo de un proceso antes de continuar su ejecución.
- Supervisión de eventos: Está atento a interrupciones, señales de temporizador y llamadas al sistema que pueden requerir la selección de otro proceso.
- Control de recursos: Gestiona recursos compartidos, como dispositivos de E/S, para su uso eficiente.

