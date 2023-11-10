# Inventory Control App
Aplicación de Gestión de inventario para la División de Desarrollo de Software que permite el gestión del inventario desde una aplicación para facilitar el proceso

## Contribución

Para poder agregar tus cambios, por favor sigue los siguientes pasos:

1. Crea un fork del repositorio. Haz clic en el botón "Fork" en la parte superior derecha de esta página para crear tu propia copia del repositorio en tu cuenta de GitHub. Esto te permitirá trabajar en tus cambios sin afectar el proyecto original.
2. Clona tu fork del repositorio en tu computadora. Abre tu terminal y ejecuta el siguiente comando, reemplazando `<tu-usuario>` con tu nombre de usuario de GitHub y `<nombre-repositorio>` con el nombre del repositorio:
   ```bash
      git clone https://github.com/<tu-usuario>/<nombre-repositorio>.git
      cd <nombre-repositorio>
   ```
4. Es importante crear una rama separada para tus cambios. Esto facilita la gestión de múltiples contribuciones. Ejecuta el siguiente comando para crear una nueva rama, reemplazando <nombre-rama> con un nombre descriptivo de tu función o corrección:
   ```bash
   git checkout -b new-feature
   ```
5. Ahora puedes trabajar en tus cambios. Un buen nombre de commit debe responder a "This commit will...". Asegúrate de seguir estas buenas prácticas al hacer commits:
    - Usa un nombre de commit descriptivo que comience con un verbo en infinitivo, por ejemplo: "Add changes", "Remove code", "Modify a function".
    - Proporciona una descripción detallada de lo que hace el commit para que otros colaboradores puedan entender tus cambios.
    ```bash
      git commit -m 'Add a new method: User LogIn'
    ```
6. Sube tus cambios a tu fork:
   ```bash
   git push origin new-feature
   ```
8. Envía una solicitud de extracción (Pull Request) con una descripción detallada de tus cambios. Dirígete a la página de tu fork en GitHub y selecciona la rama que acabas de crear. Luego, haz clic en el botón "New Pull Request"

Nosotros revisaremos tu Pull Request y lo fusionaremos una vez que sea aprobado.


## Reglas & Standares

1. **No tocar código que no es tuyo**: Evita realizar cambios en código que no has creado o que no te ha sido asignado. Comunica tu interés y colabora con el propietario del código para implementar los cambios de manera colaborativa.

2. **Siempre trabajar con forks**: Antes de realizar cambios en el repositorio principal, crea una copia (fork) del mismo. Trabaja en tu fork y, cuando hayas completado tus cambios, crea una solicitud de extracción (Pull Request) al repositorio principal.

3. **Variables en camelCase**: Las variables deben nombrarse en camelCase, lo que significa que la primera palabra comienza con minúscula y las palabras siguientes comienzan con mayúscula (por ejemplo, `userName`, `componentName`).

4. **Funciones en PascalCase**: Los nombres de funciones y métodos deben seguir el formato PascalCase, en el cual cada palabra comienza con mayúscula (por ejemplo, `AddToolToInventory()`, `GenerateReport()`).

5. **Nombres Descriptivos**: Usar nombres descriptivos en el código (Funciones, variables, etc.) para mayor para ayudar a la lectura de este (por ejemplo, `var element in inventoryElement`, `ReportCheckUp()`).

6. **Don't Repeat Yourself (DRY)**: Aplicar las técnicas de DRY en el código, evitando tener código duplicado y alargándolo innecesariamente. Crea funciones y métodos para reutilizar código.

7. **Tener documentación**: El proyecto cuenta con una carpeta de documentación en el cual se podrán subir recursos como PDFs, imágenes, archivos de texto, entre otros que sirvan para poder entender mejor el código (por ejemplo, imagenes de diagramas de flujo, imagenes de dibujos del funcionamiento, PDFs explicativos del código, manual de usuario)

8. **Comentar el código**: El código debe estar comentado de manera básica para ayudar a la lectura de este (por ejemplo, `//This function returns the count of items in the Intentory`, `This enumerator contains the tools that the Inventory can have`).

9. **Evitar código anidado**: Evitar anidar muchos niveles de código, y de ser posible no tener más de 4 niveles de identación.

10. **Todo en inglés**: Tanto código como comentarios se programarán en inglés, sin combinaciones en español (por ejemplo, `//Added this feature`, `private void ReturnToolToInventory()`).

Estos estándares de codificación ahora reflejan tu prioridad en las reglas y prácticas más importantes. Como mencioné anteriormente, la prioridad de las reglas puede variar según las necesidades específicas de tu proyecto y tu equipo.

## Aplicaciones a utilizar

- Trello: Asegurate de revisar el tablero de Trello para ver qué trabajos tienes asignados

- Git: Utilizarlo para poder controlar el código que tienes en tu ordenador y poder subirlo al repositorio

- Google Docs: Recuerda que peudes ir a revisar el documento de google donde se almacenan los requerimentos
