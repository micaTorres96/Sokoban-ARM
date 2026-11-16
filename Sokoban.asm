.data
/*COLORES PARA EL JUEGO*/
color_rojo: .ascii "\033[31m"
long_color_rojo=.-color_rojo

color_amarillo: .ascii "\033[33m"
long_color_amarillo=.-color_amarillo

color_verde: .ascii "\033[32m"
long_color_verde=.-color_verde

color_default: .ascii "\033[0m"
long_color_default=.-color_default
/*ETIQUETA PARA GUARDAR NOMBRE DE USUARIO
----------------------------------------------------------------------------*/
nombre_jugador: .space 30
mensaje_nombre: .asciz "Ingrese su nombre: \n"
long_mensaje_nombre=.-mensaje_nombre

/*ETIQUETAS PARA LECTURA/ESCRITURA DE ARCHIVOS
-------------------------------------------------------------------------------*/
ranking: .asciz "ranking.txt"
buffer_ranking: .space 5000
buffer2: .space 60

/*RANKING DE MEJORES HISTORICOS
cantidad_leida GUARDA CUANTOS CARACTERES SE LEYERON DEL ARCHIVO
fin_buffer GUARDA DIRECCION EN DONDE TERMINAN LOS DATOS LEIDOS
mejores_resultados GUARDA DIRECCIONES DE LOS 5 MEJORES RESULTADOS
mejores_movimietos GUARDA LA CANTIDAD DE MOVIMIENTOS DE LOS 5 MEJORES
-----------------------------------------------------------------------------*/
mejores_puntajes_historicos: .asciz "mejores.txt"
cantidad_leida: .word 0
fin_buffer: .word 0
mejores_resultados: .space 20           @creado para almacenar mejores
mejores_movimientos: .space 20

/*ETIQUETAS PARA CALCULAR TIEMPO DE JUEGO TRANSCURRIDO
--------------------------------------------------------------------------------*/
TIEMPO: .space 8                @para obtener el tiempo de juego
tiempo_comienzo: .space 8       @para guardar el tiempo de comienzo del juego
tiempo_final: .space 8          @para guardar el tiempo final del juego

unidad_segundos: .asciz " segundos\n"   @agregado para colocar 'segundos'
long_unidad_segundos= .-unidad_segundos

/*MENSAJE DE BIENVENIDA AL JUEGO CON SU LONGITUD
---------------------------------------------------------------------------------*/
mensaje_bienvenida:     .ascii "|-------------------------------------------------|\n"
                        .ascii "|*************** Bienvenido a Sokoban ************|\n"
                        .asciz "|-------------------------------------------------|\n"
long_mensaje_bienvenida= .-mensaje_bienvenida

/*MENSAJE QUE SE IMPRIME EN PANTALLA DE SELECCION DE NIVEL CON SU LONGITUD
-----------------------------------------------------------------------------------------------*/
seleccion_nivel:        .ascii "--------------------------------------------------\n"
                        .ascii "|*+*+*+*+*+* MODO ENTRENAMIENTO *+*+*+*+*+*+*+*+*+\n"
                        .ascii "--------------------------------------------------\n"
                        .ascii "+*+* ¿Que nivel de entrenamiento desea jugar? +*+|\n"
                        .ascii "------------$$$$$++++++ 1 ++++++$$$$$-------------\n"
                        .ascii "------------$$$$$++++++ 2 ++++++$$$$$-------------\n"
                        .asciz "------------$$$$$++++++ 3 ++++++$$$$$-------------\n"
long_seleccion_nivel= .-seleccion_nivel

/*MENSAJE QUE SE IMPRIME EN PANTALLA, CONSULTANDO POR LA TECLA A PRESIONAR A JUGADOR CON SU LONGITUD
--------------------------------------------------------------------------------------------- */
presione_una_tecla:     .asciz "------------ ¿Que tecla desea presionar? ---------\n"
long_presione_una_tecla= .-presione_una_tecla

/*nivel: reservado para nivel ingresado por el jugador
tecla: reservado para la tecla de movimiento ingresada por el jugador
------------------------------------------------------------------------------------------------*/
nivel: .space 2
tecla: .space 2

/*LAS 3 ETIQUETAS ESTAN RELACIONADAS, ALMACENAN EL NIVEL, LONGITUD Y ANCHO ACTUAL DEL MAPA SELECCIONADO
POR EL JUGADOR
-------------------------------------------------------------------------------------------------------*/
mapa_actual: .word 0            @direccion de mapa original seleccionado
nivel_actual: .word 0           @guarda direccion del nivel seleccionado
longitud_actual: .word 0
ancho_actual: .word 0
mapa_juego: .space 1354 @pensado para guardar una copia del mapa para reinicio

/*MENSAJE DE ERROR EN SELECCION DE NIVEL CON SU LONGITUD
-------------------------------------------------------------------------------------------------------*/
mensaje_error_de_ingreso: .asciz "El nivel seleccionado no existe. Seleccione uno valido \n"
long_error_de_ingreso= .-mensaje_error_de_ingreso

/*MENSAJE DE ERROR EN TECLA NO PERMITIDA CON SU LONGITUD
------------------------------------------------------------------------------------------------------*/
mensaje_error_tecla: .asciz "Tecla invalida, ingrese otro movimiento \n"
long_mensaje_error_tecla= .-mensaje_error_tecla

/* MAPAS DE ENTRENAMIENTO CON SU LONGITUD
------------------------------------------------------------------------------------------------------*/
mapa_de_entrenamiento1: .ascii  "#-#-#-#-#-#-#\n" @MAPA DE ENTRENAMIENTO 1: 14x9
                        .ascii  "|           |\n"
                        .ascii  "#     .     #\n"
                        .ascii  "|           |\n"
                        .ascii  "#     $     #\n"
                        .ascii  "|           |\n"
                        .ascii  "#     @     #\n"
                        .ascii  "|           |\n"
                        .ascii  "#-#-#-#-#-#-#\n"
                        .asciz  "             \n"
long_mapa_entrenamiento1= .- mapa_de_entrenamiento1


mapa_de_entrenamiento2: .ascii "#-#-#-#-#-#-#-#\n" @MAPA DE ENTRENAMIENTO 2: 16x11
                        .ascii "|             |\n"
                        .ascii "#    #        #\n"
                        .ascii "|             |\n"
                        .ascii "#   $  .      #\n"
                        .ascii "|             |\n"
                        .ascii "#     @   $   #\n"
                        .ascii "|             |\n"
                        .ascii "#       .     #\n"
                        .ascii "|             |\n"
                        .ascii "#-#-#-#-#-#-#-#\n"
                        .asciz "               \n"
long_mapa_entrenamiento2= .-mapa_de_entrenamiento2


mapa_de_entrenamiento3: .ascii "#-#-#-#-#-#-#-#-#-#\n" @MAPA DE ENTRENAMIENTO 3: 20x11
                        .ascii "|                 |\n"
                        .ascii "#       . .       #\n"
                        .ascii "|                 |\n"
                        .ascii "#     $ $ $ $     #\n"
                        .ascii "|                 |\n"
                        .ascii "#         @       #\n"
                        .ascii "|                 |\n"
                        .ascii "#       . .       #\n"
                        .ascii "|                 |\n"
                        .ascii "#-#-#-#-#-#-#-#-#-#\n"
                        .asciz "                   \n"
long_mapa_entrenamiento3= .-mapa_de_entrenamiento3

/*MAPAS DE JUEGO NIVELES 1,2 Y 3
------------------------------------------------------------------------------------------------------------*/

mapa1_eldp:     .ascii "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n" @20x29
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # # # # # # # # # # # # #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #                         #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #      . . . . . . . .    #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #      #   $ $ $ $        #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #      #   $ $ $ $        #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #      #     @            #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #      #                  #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #      # # # # # # # # #  #     #\n"
                .ascii "|                                     |\n"
                .ascii "#     #                               #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # # # # # # # # # # # # #     #\n"
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .asciz "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n"
long_mapa1=.-mapa1_eldp

mapa2_14s:      .ascii " #-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-\n" @20x33
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .ascii "#     $ $ $ $      # #     . . . .    #\n"
                .ascii "|                                     |\n"
                .ascii "#     $ $ $ $      # #     . . . .    #\n"
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # #        # # # #    # # #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # #        # # # #    # # #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     #              @            #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     #            #  #           #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # #                   # # #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # #                   # # #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     # . . . .           $ $ $ $ #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     # . . . .           $ $ $ $ #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     #                           #   #\n"
                .ascii "|                                     |\n"
                .ascii "#     # # # # # # # # # # # # # # #   #\n"
                .ascii "|                                     |\n"
                .asciz "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n"
long_mapa2_14s =.-mapa2_14s

mapa3_lfc:      .ascii "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n" @20x33
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .ascii "#         # # # # # # # # # #         #\n"
                .ascii "|                                     |\n"
                .ascii "#         #   .   .   .     #         #\n"
                .ascii "|                                     |\n"
                .ascii "#         #   .   $   .     #         #\n"
                .ascii "|                                     |\n"
                .ascii "# # # # # #   .   .   .     # # # # # #\n"
                .ascii "|                                     |\n"
                .ascii "#                 $                   #\n"
                .ascii "|                                     |\n"
                .ascii "#         $       @        $          #\n"
                .ascii "|                                     |\n"
                .ascii "#    $   $   $   $   $   $   $   $    #\n"
                .ascii "|                                     |\n"
                .ascii "#         $                 $         #\n"
                .ascii "|                                     |\n"
                .ascii "# # # # # #       $         # # # # # #\n"
                .ascii "|                                     |\n"
                .ascii "#         #   .   .   .     #         #\n"
                .ascii "|                                     |\n"
                .ascii "#         #   .   $   .     #         #\n"
                .ascii "|                                     |\n"
                .ascii "#         #   .   .   .     #         #\n"
                .ascii "|                                     |\n"
                .ascii "#         # # # # # # # # # #         #\n"
                .ascii "|                                     |\n"
                .ascii "#                                     #\n"
                .ascii "|                                     |\n"
                .asciz "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#\n"

long_mapa3_lfc=.-mapa3_lfc

/*MANSAJE EN PANTALLA NIVEL DEL JUEGO PRINCIPAL*/
seleccion_nivel_juego:  .ascii "+*+*+*+*+*+* ¿Que nivel desea jugar? +*+*+*+*+*+*+\n"
                        .ascii "------------$$$$$++++++ 1 ++++++$$$$$-------------\n"
                        .ascii "------------$$$$$++++++ 2 ++++++$$$$$-------------\n"
                        .asciz "------------$$$$$++++++ 3 ++++++$$$$$-------------\n"
long_seleccion_nivel_juego= .-seleccion_nivel_juego


/*MENSAJE QUE SE IMPRIME EN PANTALLA DE CONTADOR DE MOVIMIENTOS CON SU LONGITUD
---------------------------------------------------------------------------------------------------------------*/
msj_contador_movimientos: .asciz "Movimientos realizados: "
long_msj_contador_movimientos= .-msj_contador_movimientos

/*contador_movimientos:RESERVADO PARA GUARDAR LOS MOVIMIENTOS VALIDOS DEL JUGADOR
cadena: RESERVADO PARA ALMACENAR TEMPORALMENTE VALOR ASCII DE UN NUMERO EN
ORDEN INVERSO
-------------------------------------------------------------------------------------------------------------*/
contador_movimientos: .int 0    @almacena cantidad de movimientos del jug.
cadena: .space 12

/*MENSAJE QUE SE IMPRIME EN PANTALLA DE TIEMPO DE JUEGO CON SU LONGITUD
--------------------------------------------------------------------------------------------------------------*/
tiempo_de_juego: .asciz "Tiempo de juego:\n"
long_tiempo_de_juego= .-tiempo_de_juego

/*ETIQUETAS CREADAS PARA TENER UN CONTEO DE LAS CAJAS Y DESTINOS PENDIENTES
PARA GANAR EL JUEGO
--------------------------------------------------------------------------------------------------------------*/
cajas_pendientes: .word 0       @cantidad de cajas que faltan para ganar
destinos_pendientes: .word 0    @cantidad de destinos vacios

/*MENSAJE QUE SE IMPRIME EN PANTALLA SOBRE VICTORIA DE ENTRENAMIENTO Y VICTORIA DE JUEGO
---------------------------------------------------------------------------------------------------------------*/
mensaje_victoria_entrenamiento: .asciz "Felicidades, terminaste el entrenamiento \n"
long_mensaje_victoria_entrenamiento=.-mensaje_victoria_entrenamiento

mensaje_victoria_juego: .asciz "Felicidades, terminaste el juego\n"
long_mensaje_victoria_juego=.-mensaje_victoria_juego

/*MENSAJE QUE SE IMPRIME EN RANKING DE LOS MEJORES HISTORICOS
---------------------------------------------------------------------------------------------------------------*/
mensaje_ranking:.ascii "--------------------------------------\n"
                .ascii "| RANKING MEJORES PUNTAJES HISTORICOS |\n"
                .ascii "--------------------------------------\n"
                .ascii "|Nombre | Nivel | Movimientos| Tiempo|\n"
                .asciz "--------------------------------------\n"
long_mensaje_ranking=.-mensaje_ranking

/*SUBRUTINAS --------------------------------------------------------------------------------------------------*/
.text
/*-------------------------------------------------------------------------------------------------------------*/

/*r1: direccion de memoria de mensaje de bienvenida
r2 longitud del mensaje*/
bienvenida:
        .fnstart
        push {lr}

        ldr r1, =mensaje_bienvenida
        mov r2, $long_mensaje_bienvenida
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*interrupcion para imprimir por pantalla-------------------------------------------------------------------*/
imprimir_en_pantalla:
        .fnstart
        push {lr}

        mov r7,#4
        mov r0,#1
        swi 0

        pop {lr}
        bx lr
        .fnend

/*interrupcion para leer por teclado lo ingresado-----------------------------------------------------------*/
leer_por_teclado:
        .fnstart
        push {lr}

        mov r7,#3
        mov r0,#0
        swi 0

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

/*r1 direccion de memoria de mensaje de seleccion de nivel
r2 su longitud*/
mensaje_seleccion_nivel:
        .fnstart
        push {lr}

        ldr r1, =seleccion_nivel
        mov r2,$long_seleccion_nivel
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

mensaje_seleccion_nivel_juego:
        .fnstart
        push {lr}

        ldr r1,=seleccion_nivel_juego
        mov r2,$long_seleccion_nivel_juego
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/
cargar_mapa:
        .fnstart
        push {lr}
ciclo:
        ldr r1,=nivel           @direccion de memoria del nivel ingresado
        mov r2,#2               @longitud = 2
        bl leer_por_teclado     @llamo a subrutina para leer por teclado

        ldrb r1,[r1]            @guardo nivel seleccionado por el usuario

        cmp r1,#'1'             @¿es el nivel 1 el ingresado?
        beq mapa1_entrenamiento @si es el nivel 1 salto a la etiqueta mapa entrenamiento 1 y asi con los demas mapas

        cmp r1,#'2'
        beq mapa2_entrenamiento

        cmp r1,#'3'
        beq mapa3_entrenamiento

        ldr r1, =mensaje_error_de_ingreso       @si no llega a ser valido  = mensaje error de nivel
        mov r2, $long_error_de_ingreso
        bl imprimir_en_pantalla

        bal ciclo                               @se repite el ciclo si hay error de ingreso de nivel

/*r1= direccion de memoria de cada mapa
  r2=longitud de cada mapa
  r4 ancho de cada mapa. 1=14 | 2=16 | 3=20*/
mapa1_entrenamiento:
        ldr r1,=mapa_de_entrenamiento1
        mov r2, $long_mapa_entrenamiento1
        mov r4,#14
        bal guardar_mapa

mapa2_entrenamiento:
        ldr r1,=mapa_de_entrenamiento2
        mov r2, $long_mapa_entrenamiento2
        mov r4,#16
        bal guardar_mapa

mapa3_entrenamiento:
        ldr r1,=mapa_de_entrenamiento3
        mov r2, $long_mapa_entrenamiento3
        mov r4,#20
        bal guardar_mapa

/*r3 = direccion de memoria de nivel actual
  r1 = guardo en nivel_actual la direccion del mapa de entrenamiento seleccionado */
guardar_mapa:
        ldr r3,=mapa_actual
        str r1,[r3]

        ldr r3, =nivel_actual
        str r1,[r3]

        ldr r3,=longitud_actual
        str r2,[r3]

        ldr r3,=ancho_actual
        str r4,[r3]

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*ESTO ES NUEVO PARA REINICIO*/
copiar_mapa:
        .fnstart
        push {r4, r5, r6, lr}

        @ Obtener direccion del mapa original
        ldr r1, =mapa_actual
        ldr r1, [r1]

        @ Obtener longitud del mapa
        ldr r2, =longitud_actual
        ldr r2, [r2]

        @ Obtener direccion del espacio reservado para guardar copia de mapa
        ldr r3, =mapa_juego

ciclo_copia:
        cmp r2,#0       @¿queda algo mas a copiar?
        beq fin_copiar  @si ya copiamos todo llegamos al final

        ldrb r4,[r1]    @leemos un byte del mapa original
        strb r4,[r3]    @lo guardamos en la copia

        add r1,r1,#1    @avanzamos en el mapa original
        add r3,r3,#1    @avanzamos en la copia
        sub r2,r2,#1    @falta copiar un byte menos

        bal ciclo_copia

fin_copiar:
        ldr r3,=nivel_actual
        ldr r4,=mapa_juego
        str r4,[r3]             @nivel_actual apunta al mapa modificable

        pop {r4, r5, r6, lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

cargar_mapa_juego:
        .fnstart
        push {lr}
ciclo_juego:
        ldr r1,=nivel           @direccion de memoria del nivel ingresado
        mov r2,#2               @longitud = 2
        bl leer_por_teclado     @llamo a subrutina para leer por teclado

        ldrb r1,[r1]            @guardo nivel seleccionado por el usuario

        cmp r1,#'1'             @¿es el nivel 1 el ingresado?
        beq juego_mapa1_eldp    @si es el nivel 1 salto a la etiqueta mapa entrenamiento 1 y asi con los demas mapas

        cmp r1,#'2'
        beq juego_mapa2_14s

        cmp r1,#'3'
        beq juego_mapa3_lfc

        ldr r1, =mensaje_error_de_ingreso       @si no llega a ser valido  = mensaje error de nivel
        mov r2, $long_error_de_ingreso
        bl imprimir_en_pantalla

        bal ciclo_juego                         @se repite el ciclo si hay error de ingreso de nivel

/*r1= direccion de memoria de cada mapa
  r2=longitud de cada mapa
  r4 ancho de cada mapa. 1=14 | 2=16 | 3=20*/
juego_mapa1_eldp:
        ldr r1,=mapa1_eldp
        mov r2, $long_mapa1
        mov r4,#40
        bal guardar_mapa

juego_mapa2_14s:
        ldr r1,=mapa2_14s
        mov r2, $long_mapa2_14s
        mov r4,#40
        bal guardar_mapa

juego_mapa3_lfc:
        ldr r1,=mapa3_lfc
        mov r2, $long_mapa3_lfc
        mov r4,#40
        bal guardar_mapa_juego

/*r3 = direccion de memoria de nivel actual
  r1 = guardo en nivel_actual la direccion del mapa de entrenamiento seleccionado*/
guardar_mapa_juego:
        ldr r3,=mapa_actual
        str r1,[r3]

        ldr r3,=longitud_actual
        str r2,[r3]

        ldr r3,=ancho_actual
        str r4,[r3]

        bl copiar_mapa

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*salida r9 con posicion del jugador en el mapa*/
posicion_jugador:
        .fnstart
        push {lr}

        ldr r1,=nivel_actual    @nivel actual almacena la direccion de memoria del nivel seleccionado
        ldr r1,[r1]             @accede a la direccion de nivel actual

posicion:
        ldrb r2,[r1]            @primer elemento del mapa actual| ldrb para acceder al primer byte del mapa '#'

        cmp r2,#'@'             @¿elemento es = jugador ?
        beq jugador_encontrado  @si es verdad encontramos la posicion del jugador

        add r1,#1               @si no, seguimos recorriendo hasta encontrarlo
        bal posicion            @vuelvo al ciclo para encontrar la posicion

jugador_encontrado:
        mov r9,r1               @si encuento al jugador, guardo su direccion de memoria en r9

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/
/*imprime en pantalla el mensaje para presionar una tecla
r1 direccion de memoria del mensaje
r2 longitud
ingrese_una_tecla:*/
pedir_movimiento:
        .fnstart
        push {lr}

        ldr r1, =presione_una_tecla
        mov r2,$long_presione_una_tecla
        bl imprimir_en_pantalla         //llamada a la subrutina para mostrar por pantalla

        pop {lr}
        bx lr
        .fnend

/*------------------------------------------------------------------------------------------------------------*/
/*lee por teclado el nivel ingresado por jugador
r1 direccion de memoria de la etiqueta tecla
r2 longitud
SALIDA R1 TECLA PRESIONADA*/
tecla_presionada:
        .fnstart
        push {lr}

        ldr r1,=tecla
        mov r2,#2
        bl leer_por_teclado             //llamada a subrutina para leer por teclado la tecla ingresada por el jugador

        ldrb r1, [r1]                   //guardo la tecla presionada por el jugador

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*En la etiqueta ancho_actual ya tenemos guardado el ancho de cada mapa
r10 salida con ancho de mapa*/
obtener_ancho_actual:
        .fnstart
        push {lr}

        ldr r10,=ancho_actual   @r10 direccion de memoria de etiqueta ancho actual
        ldr r10,[r10]           @r10 guardamos el valor de ancho actual*/

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*obtiene de la etiqueta nivel actual el nivel que selecciono el jugador*/
obtener_nivel_actual:
        .fnstart
        push {lr}

        ldr r1,=nivel_actual    @direccion de memoria de nivel actual
        ldr r1,[r1]             @r1 = nivel actual 1 | 2 | 3

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*obtiene de la etiqueta la longitud del mapa seleccionado por el jugador*/
obtener_longitud_actual:
        .fnstart
        push {lr}

        ldr r2,=longitud_actual
        ldr r2,[r2]

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*Identifica la tecla presionada por el jugador para el movimiento
Segun el movimiento llama a la subrutina correspondiente, si la tecla no es valida
llama a subrutina tecla incorrecta*/
identificar_tecla:
        .fnstart
        push {lr}

        cmp r1,#'a'             @¿la letra ingresada es 'a'?
        beq llamar_izquierda    @si es 'a' salto a izquierda

        cmp r1,#'d'             @¿la letra ingresada es 'd'?
        beq llamar_derecha      @si es 'd' salto a derecha

        cmp r1,#'s'             @¿la letra ingresada es 's'?
        beq llamar_abajo        @si es 's' salto a abajo

        cmp r1,#'w'             @¿la letra ingresada es 'w'?
        beq llamar_arriba       @si es 'w' salto a arriba

        cmp r1,#'r'             @¿la letra ingresada es 'r'?
        beq  llamar_reiniciar   @si es 'r' salto a reiniciar

        bl tecla_incorrecta             @llama a subrutina tecla incorrecta
        bal fin_identificar             @salta a fin de identificacion de tecla

llamar_izquierda:
        bl izquierda            @salto a subrutina izquierda
        bal fin_identificar

llamar_derecha:
        bl derecha              @salto a subrutina derecha
        bal fin_identificar

llamar_abajo:                   @salto a subrutina abajo
        bl abajo
        bal fin_identificar

llamar_arriba:
        bl arriba               @salto a subrutina arriba
        bal fin_identificar

llamar_reiniciar:
        bl reiniciar            @salto a subrutina reiniciar

fin_identificar:
        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*r9 = direccion de memoria en donde esta ubicado el jugador*/
izquierda:
        .fnstart
        push {lr}

        mov r1,r9
        mov r2,#-1

        bl obtener_posicion_siguiente   @r3 se obtiene posicion siguiente
        bl verificar_y_mover

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/
/*r9 = direccion de memoria donde esta ubicado el jugador
SIGUE LA MISMA LOGICA QUE izquierda*/
derecha:
        .fnstart
        push {lr}

        mov r1,r9
        mov r2,#1

        bl obtener_posicion_siguiente   @r3 se obtiene posicion siguiente
        bl verificar_y_mover

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/
/*r9 = direccion de memoria donde esta ubicado el jugador*/
arriba:
        .fnstart
        push {lr}
        mov r1,r9
        mov r2,#0       @ponemos en 0 r2
        sub r2,r10      @r10 ancho de mapa | le restamos 0 a r10

        bl obtener_posicion_siguiente   @r3 se obtiene posicion siguiente
        bl verificar_y_mover

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

abajo:
        .fnstart
        push {lr}
        mov r1,r9
        mov r2,r10      @r10 contiene el ancho de mapa actual

        bl obtener_posicion_siguiente   @r3 se obtiene posicion siguiente
        bl verificar_y_mover

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

reiniciar:
        .fnstart
        push {r4,r5,r6,lr}

        @obtengo direccion de mapa original
        ldr r1,=mapa_actual
        ldr r1,[r1]

        @obtengo longitud del mapa
        ldr r2,=longitud_actual
        ldr r2,[r2]

        @obtengo direccion del mapa de juego
        ldr r3,=nivel_actual
        ldr r3,[r3]

ciclo_reinicio:
        ldrb r6,[r1]    @lee primer caracter del mapa original
        strb r6,[r3]    @restauro el caracter

        add r1,r1,#1    @avanzamos +1 en posicion de cada mapa
        add r3,r3,#1

        sub r2,r2,#1    @falta copiar un caracter menos
        cmp r2,#0
        bne ciclo_reinicio      @si falta copiar seguimos

        ldr r1,=contador_movimientos
        mov r0,#0
        str r0,[r1]              @ponemos el contador de movimientos en 0

        bl posicion_jugador      @buscamos la nueva posicion del jugador
        bl contar_cajas_destinos @volvemos a contar cajas y destinos

        pop {r4,r5,r6,lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*Solo es la base que habia en el campus, no esta echo
llamando nos da tiempo actual, la idea es tomar el tiempo del inicio y tiempo fin al
para obtener el tiempo de juego tiempo final - tiempo de inicio
se llama cuando comienza y cuando termina*/
obtener_tiempo_actual:
        .fnstart
        push {r0,r1,r7,lr}

        ldr r0, =TIEMPO
        mov r1,#0
        mov r7,#78 @syscall de gettimeofday
        swi 0

        pop {r0,r1,r7,lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*mensaje para contador de movimientos
pasar_numero_a_ascii guarda al reves, entonces hay que empezar de atras para adelante a guardar*/
mensaje_contador_movimientos:
        .fnstart
        push {lr}

        ldr r1,=msj_contador_movimientos
        mov r2,$long_msj_contador_movimientos
        bl imprimir_en_pantalla

        ldr r1,=contador_movimientos
        ldr r3,[r1]                     @cantidad de movimientos

        bl pasar_numero_a_ascii         @se convierte numero a ascii

        mov r8,r2                       @cantidad de cifras que tiene
        sub r8,#1                       @empezamos por la ultima posicion

imprimir_digitos:
        ldr r1,=cadena
        add r1,r8

        mov r2,#1
        bl imprimir_en_pantalla

        cmp r8,#0
        beq fin_mensaje_contador

        sub r8,#1               @retrocedemos una posicion
        bal imprimir_digitos

fin_mensaje_contador:
        ldr r1,=cadena
        mov r3,#10
        strb r3,[r1]            @guardamos un salto de linea

        mov r2,#1
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*r2 salida de contador de movimientos*/
contar_movimiento:
        .fnstart
        push {lr}

        ldr r1, =contador_movimientos           @r1 direccion de memoria de la etiqueta contador de movimientos
        ldr r2,[r1]                             @r2 contador = 0

        add r2,#1                               @+1 a contador de movimientos

        str r2,[r1]                             @vuelvo a guardarlo en contador de movimientos

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
tecla_incorrecta:
        .fnstart
        push {lr}

        ldr r1,=mensaje_error_tecla
        mov r2,$long_mensaje_error_tecla
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*r1 direccion de donde partimos
  r2 desplazamiento
  r3 direccion calculada

salida r3 con la direccion siguiente calculada*/
obtener_posicion_siguiente:
        .fnstart
        push {lr}

        add r3,r1,r2

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*r3 contiene direccion siguiente del jugador calculada*/
verificar_y_mover:
        .fnstart
        push {lr}

        ldrb r4, [r3]

        @ Comprobar si hay espacio o destino
        cmp r4, #' '
        beq movimiento_valido

        cmp r4, #'.'
        beq movimiento_valido

        @ Comprobar si hay caja o caja sobre destino
        cmp r4, #'$'
        beq mover_caja

        cmp r4, #'*'
        beq mover_caja

        b fin_verificar

mover_caja:
        add r7, r3, r2
        ldrb r8, [r7]

        cmp r8, #' '
        beq movimiento_valido

        cmp r8, #'.'
        bne fin_verificar

movimiento_valido:
        bl contar_movimiento

        @ Restaurar posicion anterior del jugador
        ldrb r5, [r9]

        cmp r5, #'+'
        bne restaurar_espacio

        mov r6,#'.'
        b restaurar_posicion

restaurar_espacio:
        mov r6,#' '

restaurar_posicion:
        strb r6,[r9]

        @ Colocar jugador en la posicion siguiente
        cmp r4, #'.'
        beq jugador_destino

        cmp r4, #'*'
        beq jugador_destino

        mov r6,#'@'
        b escribir_jugador

jugador_destino:
    mov r6, #'+'

escribir_jugador:
        strb r6, [r3]

        @ Si habia caja, actualizar su posicion
        cmp r4, #'$'
        beq actualizar_caja

        cmp r4, #'*'
        bne actualizar_posicion

actualizar_caja:
        cmp r8, #'.'
        bne caja_espacio

        mov r6,#'*'
        b escribir_caja

caja_espacio:
        mov r6,#'$'

escribir_caja:
        strb r6, [r7]
        bl actualizar_contadores

actualizar_posicion:
         mov r9, r3
fin_verificar:
        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*r4:caracter donde esta la caja ($ o *)
r8 caracter de la casilla a la que se movio la caja (' ' o .)*/
actualizar_contadores:
        .fnstart
        push {r5,r6,lr}

        cmp r4,#'$'     @comprobar si la caja estaba fuera de un destino
        beq caja_fuera_destino

        b caja_sobre_destino    @si no era '$' estaba sobre un destino('*')

caja_fuera_destino:
        cmp r8,#'.'
        bne fin_actualizar

        @restar una caja pendiente
        ldr r5,=cajas_pendientes
        ldr r6,[r5]
        sub r6,r6,#1
        str r6,[r5]

        @restar un destino pendiente
        ldr r5,=destinos_pendientes
        ldr r6,[r5]
        sub r6,r6,#1
        str r6,[r5]

        b fin_actualizar

caja_sobre_destino:
        cmp r8,#' '
        bne fin_actualizar

        @sumar una caja pendiente
        ldr r5,=cajas_pendientes
        ldr r6,[r5]
        add r6,r6,#1
        str r6,[r5]

        @sumar un destino pendiente
        ldr r5,=destinos_pendientes
        ldr r6,[r5]
        add r6,r6,#1
        str r6,[r5]

fin_actualizar:
        pop {r5,r6,lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*
   Input r3: dividendo, r4: divisor
   Output: r5: resto, r6: cociente
*/
dividir:
        .fnstart
        push {r3, r4, lr}

        mov r6, #0

ciclo1:
        cmp r3, r4
        blt finCiclo

        sub r3, r4
        add r6, #1

        bal ciclo1

finCiclo:
        mov r5, r3
        pop {r3, r4, lr}
        bx lr
        .fnend

/*r5 : resto de la division que es el ultimo digito del numero. EJ: 105 '5' '0' '1' lo guarda al reves
-------------------------------------------------------------------------------------------------------------*/
pasar_numero_a_ascii:
        .fnstart
        push {lr}

        ldr r1, =cadena         @direccion inicial de la cadena
        mov r2,#0               @posicion inicial

        mov r4, #10             @divisor

ciclo_ascii:
        bl dividir              @r5 = resto, ultimo digito del numero a convertir a ascii | r6 =cociente

        add r5,#48              @sumamos +48 para transformarlo en su valor ascii
        strb r5,[r1,r2]         @guardamos el digito en cadena. r2 (contador caracter) desplazamiento

        add r2,#1               @+1 contador de caracter

        cmp r6,#0               @final de cadena
        beq fin_ascii

        mov r3,r6               @el cociente sera el proximo dividendo
        bal ciclo_ascii

fin_ascii:
        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
/*AGREGADO PARA PROBAR EL GUARDADO DE LA CONVERSION DE ASCII ORDENADA*/
agregar_numero:
        .fnstart
        push {r4-r8,lr}

        mov r7,r1             @Guardamos la direccion donde debemos continuar escribiendo en buffer2.
        mov r8,r2             @Guardamos la cantidad de caracteres que ya tiene buffer2.

        bl pasar_numero_a_ascii  @Convertimos el numero que esta en r3 a caracteres ASCII.
                                 @La subrutina deja los digitos en cadena, pero en orden inverso.
                                 @r2 devuelve la cantidad de digitos obtenidos.
        mov r5,r2                @Guardamos la cantidad de digitos que tiene el numero.
        sub r5,#1                @Nos ubicamos en la ultima posicion de cadena.

        ldr r6,=cadena        @Obtenemos la direccion inicial de cadena.

copiar_digitos:
        cmp r5,#0
        blt fin_agregar_numero @Si la posicion es negativa, ya copiamos todos los digitos.

        ldrb r4,[r6,r5]       @Leemos un digito de cadena, comenzando por el ultimo.
        strb r4,[r7]          @Guardamos ese digito en la posicion actual de buffer2.

        add r7,#1             @Avanzamos una posicion en buffer2.
        add r8,#1             @Aumentamos la cantidad de caracteres agregados.
        sub r5,#1             @Retrocedemos una posicion en cadena para obtener el siguiente digito.

        bal copiar_digitos

fin_agregar_numero:
        mov r1,r7             @Devolvemos la direccion donde debe continuar la escritura en buffer2.
        mov r2,r8             @Devolvemos la cantidad total de caracteres que tiene buffer2.

        pop {r4-r8,lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/

contar_cajas_destinos:
        .fnstart
        push {lr}

        mov r2,#0
        mov r3,#0
        mov r4,#0

        ldr r1,=nivel_actual
        ldr r1,[r1]

        ldr r5,=longitud_actual
        ldr r5,[r5]

recorrer_mapa:
        cmp r2,r5
        beq fin_conteo
        ldrb r6,[r1,r2]

        cmp r6,#'.'
        bne comprobar_caja
        add r3,#1

comprobar_caja:
        cmp r6,#'$'
        bne siguiente_posicion
        add r4,#1

siguiente_posicion:
        add r2,#1
        bal recorrer_mapa

fin_conteo:
        ldr r1,=destinos_pendientes
        str r3,[r1]

        ldr r1,=cajas_pendientes
        str r4,[r1]

        pop {lr}
        bx lr
        .fnend

/*OBS SI HAY MOFICACIONES QUE HACER*/
/*-------------------------------------------------------------------------------------------------------------*/
verificar_victoria:
        .fnstart
        push {r5, r6, lr}

        @ Consultar cajas pendientes
        ldr r5, =cajas_pendientes
        ldr r6, [r5]

        cmp r6, #0
        bne no_hay_victoria

        @ Consultar destinos pendientes
        ldr r5, =destinos_pendientes
        ldr r6, [r5]

        cmp r6, #0
        bne no_hay_victoria

        @ Ambos contadores llegaron a cero
        mov r0, #1
        b fin_verificar_victoria

no_hay_victoria:
        mov r0, #0

fin_verificar_victoria:
        pop {r5, r6, lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
msj_cont_movimientos:
        .fnstart
        push {lr}

        ldr r1,=contador_movimientos    @obtengo de memoria el contador ya calculado
        ldr r3,[r1]                     @obtengo valor
        bl mensaje_contador_movimientos @muestro en pantalla

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
msj_victoria_entrenamiento:
        .fnstart
        push {lr}

        ldr r1,=mensaje_victoria_entrenamiento
        mov r2,$long_mensaje_victoria_entrenamiento
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
msj_victoria_juego:
        .fnstart
        push {lr}

        ldr r1,=mensaje_victoria_juego
        mov r2,$long_mensaje_victoria_juego
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*------------------------------------------------------------------------------------------------------------*/
msj_tiempo_de_juego:
        .fnstart
        push {lr}

        ldr r1, =tiempo_de_juego        @mensaje en pantalla con el tiempo de juego
        mov r2,$long_tiempo_de_juego
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
calcular_tiempo_inicio:
        .fnstart
        push {lr}

        ldr r0,=TIEMPO
        ldr r1,[r0]     @segundos
        ldr r2,[r0,#4]  @microsegundos

        ldr r0,=tiempo_comienzo
        str r1,[r0]
        str r2,[r0,#4]

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
calcular_tiempo_final:
        .fnstart
        push {lr}

        ldr r3,=TIEMPO                  @direcicon de tiempo final
        ldr r4,=tiempo_comienzo         @direccion de tiempo al comenzar

        ldr r5,[r3]                     @obtenemos lo almacenado en TIEMPO
        ldr r6,[r4]                     @obtenemos lo almacenado en el tiempo de comienzo

        sub r5,r6 @en r5 quedaria el tiempo calculado TIEMPO - tiempo_comienzo

        ldr r3,=tiempo_final            @traigo de memoria la etiqueta tiempo final
        str r5,[r3]                     @guardo el tiempo final en tiempo_final

        mov r3,r5
        bl pasar_numero_a_ascii

        mov r8,r2
        sub r8,#1

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
imprimir_tiempo_final:
        .fnstart
        push {lr}

imprimir_tiempo:
        ldr r1,=cadena
        add r1,r8

        mov r2,#1
        bl imprimir_en_pantalla

        cmp r8,#0
        beq fin_imprimir_tiempo

        sub r8,#1
        bal imprimir_tiempo

fin_imprimir_tiempo:
        ldr r1,=unidad_segundos
        mov r2,$long_unidad_segundos
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
pedir_nombre:
        .fnstart
        push {lr}

        ldr r1,=mensaje_nombre
        mov r2,$long_mensaje_nombre
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/
guardar_nombre:
        .fnstart
        push {lr}

        ldr r1,=nombre_jugador
        mov r2,#29              @reservo el 30 para caracter nulo
        bl leer_por_teclado

        mov r2,#0
        strb r2,[r1,r0]

        pop {lr}
        bx lr
        .fnend
/*--------------------------------------------------------------------------------------------------------------*/
apertura_archivo:
        .fnstart
        push {lr}

        mov r7,#5
        ldr r0,=ranking

        mov r1,#2
        mov r2,#438
        swi 0

        cmp r0,#0
        blt error
        mov r6,r0

error:
        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

agregar_texto_archivo:
        .fnstart
        push {lr}
/*POSICION CURSAR AL FINAL DEL ARCHIVO*/
        mov r7,#19
        mov r0,r6
        mov r1,#0
        mov r2,#2
        swi 0

        bl armar_ranking_final
/*MODIFICAMOS EL CONTENIDO DEL ARCHIVO*/
        mov r0,r6
        mov r7,#4
        ldr r1,=buffer2

        swi 0
/*CERRAMOS EL ARCHIVO ABIERTO*/
        mov r0,r6
        mov r7,#6
        swi 0

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/
leer_archivo:
        .fnstart
        push {lr}

        mov r0,r6               @descriptor del archivo
        mov r7,#3               @syscall read
        ldr r1,=buffer_ranking  @buffer donde guardamos lo leido
        mov r2,#5000            @maximo de caracteres a leer
        swi 0

        ldr r1,=cantidad_leida
        str r0,[r1]             @guardamos la cantidad de bytes leidos

        mov r0,r6
        mov r7,#6
        swi 0

        pop {lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
armar_ranking_final:
        .fnstart
        push {r7,r8,lr}

        ldr r1,=buffer2         @r1 apunta al lugar donde vamos a escribir
        ldr r5,=nombre_jugador  @r5 apunta al nombre ingresado por el usuario

        mov r2,#0               @cuenta la cantidad de caracteres que agregamos a buffer 2

copiar_nombre:
        ldrb r4,[r5]            @recibe caracter actual del nombre

        cmp r4,#10              @¿el caracter es un salto de linea?
        beq fin_nombre          @terminamos de recorrer

        cmp r4,#0               @¿el caracter es nulo?
        beq fin_nombre          @terminamos de recorrer

        strb r4,[r1]            @copiamos el caracter en buffer2

        add r5,#1               @avanzamos al siguiente caracter de nombre
        add r1,#1               @avanzamos al siguiente caracter de buffer2
        add r2,#1               @aumentamos la cantidad de caracteres agregados

        bal copiar_nombre       @si no termino de recorrer los caracteres de nombre, se repite

fin_nombre:
        mov r4,#' '             @Preparamos un espacio para separar el nombre del nivel.
        strb r4,[r1]            @Guardamos el espacio en buffer2.
        add r1,#1               @Avanzamos a la siguiente posicion.
        add r2,#1               @Contamos el espacio agregado.

        ldr r5,=nivel           @Obtenemos la direccion donde esta almacenado el nivel.
        ldrb r4,[r5]            @Leemos el caracter del nivel.
        strb r4,[r1]            @Lo copiamos en buffer2.
        add r1,#1               @Avanzamos a la siguiente posicion.
        add r2,#1               @Contamos el nivel agregado

        mov r4,#' '             @Agregamos un espacio para separar el nivel de los movimientos.
        strb r4,[r1]            @Guardamos el espacio en buffer2.
        add r1,#1               @Avanzamos a la siguiente posicion.
        add r2,#1               @Contamos el espacio agregado.

        ldr r3,=contador_movimientos
        ldr r3,[r3]             @Obtenemos la cantidad de movimientos realizados.

        bl agregar_numero       @Convertimos los movimientos a ASCII y los copiamos en buffer2.

        mov r4,#' '             @Agregamos un espacio para separar los movimientos del tiempo.
        strb r4,[r1]            @Guardamos el espacio en buffer2.
        add r1,#1               @Avanzamos a la siguiente posicion.
        add r2,#1               @Contamos el espacio agregado.

        ldr r3,=tiempo_final
        ldr r3,[r3]             @Obtenemos el tiempo de juego almacenado en segundos.

        bl agregar_numero       @Convertimos el tiempo a ASCII y lo copiamos en buffer2.

        mov r4,#10
        strb r4,[r1]
        add r2,#1

        pop {r7,r8,lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/

mensaje_ranking_en_pantalla:
        .fnstart
        push {lr}

        ldr r1,=mensaje_ranking
        mov r2,$long_mensaje_ranking
        bl imprimir_en_pantalla

        pop {lr}
        bx lr
        .fnend
/*-------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------------------*/
procesar_ranking:
        .fnstart
        push {r4-r11,lr}

        @ Inicializamos los arreglos y el contador.
        ldr r5,=mejores_resultados
        ldr r6,=mejores_movimientos
        mov r4,#0

        @ Calculamos hasta donde llega la informacion leida.
        ldr r7,=buffer_ranking
        ldr r0,=cantidad_leida
        ldr r10,[r0]
        add r10,r7,r10

        ldr r0,=fin_buffer
        str r10,[r0]

recorrer_archivo:
        cmp r7,r10
        bge guardar_mejores

        @ Buscamos el primer espacio: termina el nombre.
        mov r9,r7

buscar_primer_espacio:
        cmp r9,r10
        bge guardar_mejores

        ldrb r0,[r9]
        cmp r0,#' '
        beq buscar_segundo_espacio

        add r9,#1
        bal buscar_primer_espacio

buscar_segundo_espacio:
        add r9,#1        @ Buscamos el segundo espacio: termina el nivel.
buscar_fin_nivel:
        cmp r9,r10
        bge guardar_mejores

        ldrb r0,[r9]
        cmp r0,#' '
        beq comenzar_movimientos

        add r9,#1
        bal buscar_fin_nivel

comenzar_movimientos:
        add r9,#1
        mov r8,#0

        @ Convertimos los movimientos de ASCII a numero.
leer_movimientos:
        cmp r9,r10
        bge fin_movimientos

        ldrb r0,[r9]

        cmp r0,#' '
        beq fin_movimientos

        cmp r0,#10
        beq fin_movimientos

        sub r0,#48

        mov r11,#10
        mul r12,r8,r11
        mov r8,r12
        add r8,r8,r0

        add r9,#1
        bal leer_movimientos

fin_movimientos:
        @ Guardamos la direccion del siguiente registro.
        mov r3,r7

buscar_fin_linea:
        cmp r3,r10
        bge fin_linea

        ldrb r0,[r3]
        cmp r0,#10
        beq avanzar_linea

        add r3,#1
        bal buscar_fin_linea

avanzar_linea:
        add r3,#1

fin_linea:
        @ Buscamos donde insertar este resultado.
        mov r0,r5
        mov r1,r6
        mov r9,#0

buscar_posicion:
        cmp r9,r4
        beq verificar_lugar

        ldr r2,[r1]
        cmp r8,r2
        blt verificar_lugar

        add r0,#4
        add r1,#4
        add r9,#1
        bal buscar_posicion

verificar_lugar:
        @ Si ya tenemos cinco y quedaria ultimo, lo descartamos.
        cmp r9,r4
        bne desplazar_resultados

        cmp r4,#5
        beq siguiente_registro

        @ Hay lugar: guardamos directamente el resultado.
        str r7,[r0]
        str r8,[r1]
        add r4,#1
        bal siguiente_registro

desplazar_resultados:
        @ Calculamos cuantos resultados debemos desplazar.
        mov r2,r4
        sub r2,r2,r9

        @ Conservamos el nuevo resultado.
        mov r12,r7
        mov r11,r8

ciclo_desplazar:
        cmp r2,#0
        beq fin_desplazamiento

        @ Guardamos temporalmente el resultado anterior.
        ldr r7,[r0]
        str r12,[r0]
        mov r12,r7

        ldr r7,[r1]
        str r11,[r1]
        mov r11,r7

        add r0,#4
        add r1,#4
        sub r2,#1

        bal ciclo_desplazar


fin_desplazamiento:
        @ Si todavia hay lugar, guardamos el ultimo resultado.
        cmp r4,#5
        beq siguiente_registro

        str r12,[r0]
        str r11,[r1]
        add r4,#1

siguiente_registro:
        mov r7,r3
        bal recorrer_archivo

guardar_mejores:
        @ Creamos mejores.txt desde cero.
        mov r7,#5
        ldr r0,=mejores_puntajes_historicos
        mov r1,#577
        mov r2,#438
        swi 0

        cmp r0,#0
        blt fin_procesamiento

        mov r6,r0

        @ Recorremos los resultados seleccionados.
        mov r8,r5
        mov r9,#0

recorrer_mejores:
        cmp r9,r4
        beq cerrar_mejores

        ldr r7,[r8]

        @ Calculamos cuantos caracteres tiene el registro.
        mov r1,r7
        mov r10,#0

contar_caracteres:
        ldr r0,=fin_buffer
        ldr r11,[r0]

        cmp r1,r11
        bge escribir_registro

        ldrb r0,[r1]
        add r1,#1
        add r10,#1

        cmp r0,#10
        bne contar_caracteres

escribir_registro:
        @ Escribimos el registro completo en mejores.txt.
        mov r0,r6
        mov r1,r7
        mov r2,r10
        mov r7,#4
        swi 0

        add r8,#4
        add r9,#1
        bal recorrer_mejores

cerrar_mejores:
        mov r0,r6
        mov r7,#6
        swi 0

fin_procesamiento:
        pop {r4-r11,lr}
        bx lr
        .fnend

/*-------------------------------------------------------------------------------------------------------------*/
apertura_mejores_historicos:
        .fnstart
        push {lr}

        mov r7,#5
        ldr r0,=mejores_puntajes_historicos
        mov r1,#0
        mov r2,#438
        swi 0

        cmp r0,#0
        blt fin_apertura_mejores

        mov r6,r0

fin_apertura_mejores:
        pop {lr}
        bx lr
        .fnend


/*-------------------------------------------------------------------------------------------------------------*/
/* IMPRESION DEL MAPA CON COLORES ANSI
   Entrada:
   r1 = direccion del mapa
   r2 = longitud del mapa
*/

imprimir_mapa_coloreado:
        .fnstart
        push {r4-r9,lr}

        mov r4,r1              @ Direccion del mapa.
        mov r5,r2              @ Cantidad de caracteres a imprimir.

recorrer_mapa_coloreado:
        cmp r5,#0
        beq fin_imprimir_mapa

        mov r8,#0              @ Indica que el caracter no tiene color.
        ldrb r6,[r4]           @ Leemos el caracter actual.

        @ Las paredes se imprimen en rojo.
        cmp r6,#'#'
        beq pared_roja

        cmp r6,#'|'
        beq pared_roja

        cmp r6,#'-'
        beq pared_roja

        @ Las cajas se imprimen en amarillo.
        cmp r6,#'$'
        beq caja_amarilla

        @ Las cajas colocadas se imprimen en verde.
        cmp r6,#'*'
        beq caja_verde

        bal imprimir_caracter_mapa

pared_roja:
        ldr r8,=color_rojo
        mov r9,$long_color_rojo
        bal imprimir_color_mapa

caja_amarilla:
        ldr r8,=color_amarillo
        mov r9,$long_color_amarillo
        bal imprimir_color_mapa

caja_verde:
        ldr r8,=color_verde
        mov r9,$long_color_verde

imprimir_color_mapa:
        @ Imprimimos el codigo ANSI correspondiente.
        mov r1,r8
        mov r2,r9
        mov r0,#1
        mov r7,#4
        swi 0

imprimir_caracter_mapa:
        @ Imprimimos el caracter del mapa.
        mov r1,r4
        mov r2,#1
        mov r0,#1
        mov r7,#4
        swi 0

        @ Si el caracter tenia color, volvemos al color normal.
        cmp r8,#0
        beq avanzar_mapa

        ldr r1,=color_default
        mov r2,$long_color_default
        mov r0,#1
        mov r7,#4
        swi 0

avanzar_mapa:
        add r4,#1
        sub r5,#1

        bal recorrer_mapa_coloreado

fin_imprimir_mapa:
        pop {r4-r9,lr}
        bx lr
        .fnend

.global main
main:
        bl bienvenida
        bl mensaje_seleccion_nivel

        bl cargar_mapa                  @carga el mapa seleccionado por el jugador
        bl copiar_mapa                  @copia el mapa seleccionado por el jugador para el reinicio
        bl obtener_ancho_actual         @ancho del mapa seleccionado por el jugador
        bl posicion_jugador             @r9 = posicion en donde esta el jugador
        bl contar_cajas_destinos

comienzo_partida:
        bl obtener_tiempo_actual        @Obtengo TIEMPO ACTUAL al comenzar la partida
        bl calcular_tiempo_inicio

comienzo_entrenamiento:
        bl msj_cont_movimientos
        bl obtener_nivel_actual
        bl obtener_longitud_actual
        bl imprimir_mapa_coloreado

        bl pedir_movimiento
        bl tecla_presionada
        bl identificar_tecla

        bl verificar_victoria
        cmp r0,#1
        beq victoria_entrenamiento

        bal comienzo_entrenamiento              @vuelve a ciclo de entrenamiento

victoria_entrenamiento:
        bl obtener_nivel_actual
        bl obtener_longitud_actual
        bl imprimir_en_pantalla
        bl msj_cont_movimientos
        bl msj_victoria_entrenamiento

fin_entrenamiento:
        bl msj_tiempo_de_juego
        bl obtener_tiempo_actual        @obtengo TIEMPO ACTUAL al terminar la partida
        bl calcular_tiempo_final
        bl imprimir_tiempo_final

comienzo_del_juego:
        bl mensaje_seleccion_nivel_juego
        bl cargar_mapa_juego
        bl copiar_mapa
        bl obtener_ancho_actual         @ancho del mapa seleccionado por el jugador
        bl posicion_jugador             @r9 = posicion en donde esta el jugador
        bl contar_cajas_destinos

comienzo_partida_en_juego:
 /*reinicio contador de movimientos para el juego*/
         ldr r0,=contador_movimientos
         mov r1,#0
         str r1,[r0]

         bl obtener_tiempo_actual        @lo iniciamos para calcular tiempo actual
         bl calcular_tiempo_inicio
comienzo_juego:
        bl msj_cont_movimientos
        bl obtener_nivel_actual
        bl obtener_longitud_actual
        bl imprimir_mapa_coloreado

        bl pedir_movimiento
        bl tecla_presionada
        bl identificar_tecla

        bl verificar_victoria
        cmp r0,#1
        beq victoria_juego

        bal comienzo_juego      @vuelve al ciclo del juego principal

victoria_juego:
         bl obtener_nivel_actual
         bl obtener_longitud_actual
         bl imprimir_en_pantalla
         bl msj_cont_movimientos
         bl msj_victoria_juego

fin_de_juego:
        bl msj_tiempo_de_juego
        bl obtener_tiempo_actual        @obtengo tiempo final del juego
        bl calcular_tiempo_final
        bl imprimir_tiempo_final

        bl pedir_nombre                 @pide el nombre del jugador
        bl guardar_nombre               @guarda el nombre del jugador

        bl mensaje_ranking_en_pantalla

        bl apertura_archivo             @abre el archivo ranking.txt para agregar info del jugador
        bl agregar_texto_archivo

        bl apertura_archivo             @abre el archivo ranking.txt para leer
        bl leer_archivo

        bl procesar_ranking
        bl apertura_mejores_historicos
        bl leer_archivo

/*En este caso buffer_ranking tiene almacenado temporalmente a los mejores
puntajes historicos, el archivo leido es mejores.txt*/
        ldr r1,=buffer_ranking
        ldr r2,=cantidad_leida
        ldr r2,[r2]             @gurdamos cuantos caracteres se leyeron
        bl imprimir_en_pantalla
fin:
        mov r7, #1
        swi 0
