# Historia de los Mundiales de Fútbol ⚽️

**Desarrollado por:** Kevin Díaz Fuentes

## Descripción General de la Aplicación

`Historia de los Mundiales de Fútbol` es una aplicación móvil desarrollada con **Flutter** que ofrece una experiencia inmersiva y visualmente atractiva para explorar la historia de la Copa del Mundo. La aplicación utiliza una jerarquía de navegación de tres niveles, con transiciones temáticas y elementos de diseño creativos para transportar al usuario a través del tiempo, desde los inicios del torneo hasta la actualidad.

---

## Estructura y Jerarquía de Navegación

La aplicación está diseñada con una jerarquía clara de tres niveles, cada uno representado por una pantalla distinta:

* **Nivel 1: Línea de Tiempo de los Mundiales**: Muestra una lista cronológica de los mundiales. Cada elemento de la lista presenta el año y el país anfitrión, acompañado de la bandera para una identificación rápida.
    <br>
    <img width="250" alt="Captura del Nivel 1, tema Claro" src="https://github.com/user-attachments/assets/7572945c-cb50-4fc6-aeed-f8cc79cbedbf" />
    <img width="250" alt="Captura del Nivel 1, tema Oscuro" src="https://github.com/user-attachments/assets/bb299470-67c8-41e0-b5ac-d1e33309418e" />

* **Nivel 2: Ficha del Mundial**: Al seleccionar un mundial de la línea de tiempo, se accede a una pantalla detallada con información clave. Incluye el nombre del campeón, la bandera, el escudo del equipo, la foto de la alineación, el nombre y la imagen de la mascota oficial y el balón del torneo.
    <br>
    <img width="250" alt="Captura del Nivel 2, tema Claro" src="https://github.com/user-attachments/assets/29b2cbf5-cf00-4b74-94fa-87c34c90436c" />
    <img width="250" alt="Captura del Nivel 2, tema Oscuro" src="https://github.com/user-attachments/assets/f5b0ff05-07aa-45ef-b86f-e03de2d5a51f" />


* **Nivel 3: Momentos Icónicos**: Al pulsar el botón "Ver Dato Destacado", el usuario navega a esta pantalla, que presenta una anécdota o un momento histórico del mundial seleccionado. La pantalla muestra el título, una imagen icónica y una descripción detallada del suceso.
    <br>
    <img width="250" alt="Captura del Nivel 3, tema Claro" src="https://github.com/user-attachments/assets/9dce9afd-239a-41e9-9ff6-41778da2ffe7" />
    <img width="250" alt="Captura del Nivel 3, tema Oscuro" src="https://github.com/user-attachments/assets/2e1f1f32-aeec-4dcf-a8c7-ca44888fc366" />

---

## Opciones de Temas y Personalización 🎨

La aplicación incluye un selector de temas accesible desde el `AppBar` que permite al usuario personalizar la experiencia visual, cambiando los colores de la barra, botones y tarjetas en los tres niveles de navegación.

### Selector de Temas
<img width="250" alt="Diálogo para elegir entre Claro, Oscuro, Césped y Mundial" src="https://github.com/user-attachments/assets/609b13c7-23b8-4a01-afa5-cafede1c8948" />


### Tema "Mundial" (Azul y Dorado)

Este tema utiliza los colores clásicos de un trofeo o selección importante (Azul Fuerte y Dorado) para una experiencia inmersiva.

| Nivel | Descripción | Captura de Pantalla |
| :--- | :--- | :---: |
| **Nivel 1** | Línea de Tiempo | <img width="200" alt="Nivel 1, Tema Mundial" src="https://github.com/user-attachments/assets/1c5514fe-3fd9-4785-a90b-e25749195d67" /> |
| **Nivel 2** | Detalle (México '86) | <img width="200" alt="Nivel 2, Tema Mundial (México 86)" src="https://github.com/user-attachments/assets/979f84d8-93a8-4e2a-a7d8-640b29760541" /> |
| **Nivel 3** | Dato Destacado | <img width="200" alt="Nivel 3, Tema Mundial (La Mano de Dios)" src="https://github.com/user-attachments/assets/07bb7e7e-6b7b-4475-84b8-96a27cbab2b1" /> |

### Tema "Oscuro" (Gris y Negro)

Diseñado para ambientes con poca luz, este tema utiliza grises sólidos y negros puros para ofrecer un alto contraste.

| Nivel | Descripción | Captura de Pantalla |
| :--- | :--- | :---: |
| **Nivel 1** | Línea de Tiempo | <img width="200" alt="Nivel 1, Tema Oscuro" src="https://github.com/user-attachments/assets/3896dd14-4fad-4a03-820a-b50c405bfc04" /> |
| **Nivel 2** | Detalle (Sudáfrica '10) | <img width="200" alt="Nivel 2, Tema Oscuro (Sudáfrica 10)" src="https://github.com/user-attachments/assets/32afcb22-73f9-4d72-923f-3e2f5917ee05" /> |
| **Nivel 3** | Dato Destacado | <img width="200" alt="Nivel 3, Tema Oscuro (Milagro de Casillas)" src="https://github.com/user-attachments/assets/b7eef4b2-0b76-417e-b2d2-887dedb3af0e" /> |

---

## Instrucciones para la Ejecución del Proyecto

Sigue estos pasos para clonar y ejecutar el proyecto en tu entorno local.

### Prerrequisitos
Asegúrate de tener instalado el [SDK de Flutter](https://docs.flutter.dev/get-started/install) y un emulador o dispositivo físico Android para ejecutar la aplicación.

### Paso a paso

1.  **Clonar el repositorio:**
    ```bash
    git clone -ruta del repo-
    ```

2.  **Obtener las dependencias de Flutter:**
    ```bash
    flutter pub get
    ```

3.  **Verificar las rutas de los assets:**
    Asegúrate de que todas las imágenes utilizadas estén en la carpeta `assets` y de que las rutas estén correctamente declaradas en el archivo `pubspec.yaml`.

4.  **Ejecutar la aplicación:**
    Con un emulador o dispositivo conectado, ejecuta el siguiente comando para iniciar la aplicación.
    ```bash
    flutter run
    ```

---

## Decisiones de Diseño y Mecanismos de Transición

* **Diseño Inmersivo**: Cada pantalla cuenta con un fondo temático (un campo de fútbol para la línea de tiempo, el póster oficial para los detalles del mundial y una imagen genérica para los momentos icónicos), al que se le aplicó un **efecto de desenfoque** para mantener el foco en el contenido.
* **Jerarquía Visual**: Elementos como los contenedores semitransparentes y los marcos blancos en las imágenes se utilizan de manera consistente en todas las pantallas de detalles para mejorar la legibilidad y crear un diseño unificado.
* **Transiciones Creativas**: La navegación entre los niveles no se limita a un simple `pop/push`.
    * De la Línea de Tiempo a la Ficha del Mundial se utiliza una transición de **deslizamiento lateral** que simula un "viaje" o avance en el tiempo.
    * De la Ficha del Mundial al Momento Icónico, la transición es un **efecto de zoom**, que enfatiza el enfoque en un detalle específico.
    * El botón "Volver a la línea del tiempo" navega al nivel raíz, ofreciendo un control intuitivo para el usuario.

---

## Retos y Soluciones

### Reto 1: Fallos en el Carga de Datos y Recursos
Al agregar nuevos mundiales y sus respectivos assets, la aplicación a menudo fallaba con un error de tipo `Null`. Esto se debía a que los cambios en el modelo de datos y las nuevas rutas de archivos no se cargaban correctamente con un "Hot Reload".
* **Solución**: Se identificó que la solución era realizar un **reinicio completo de la aplicación** (Full Restart) para forzar la recarga de todos los datos y la estructura del proyecto, garantizando que todos los campos y rutas de archivos existieran.

### Reto 2: Mantenimiento de la Coherencia Visual
Lograr un diseño visualmente atractivo y consistente en tres pantallas distintas, con fondos y contenidos diferentes, presentó un desafío. Elementos como el texto en el `AppBar` se perdían contra fondos oscuros.
* **Solución**: Se implementó una capa semitransparente sobre los fondos en todas las pantallas. Además, se estandarizó el uso de contenedores de fondo blanco y marcos para las imágenes, asegurando que el contenido sea siempre legible y que el diseño se mantenga unificado en toda la aplicación.
