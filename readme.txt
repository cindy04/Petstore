Este proyecto está construido con:
- JDK: 1.8(java 8)
- Gradle versión: 7.6.1
- IDE: IntelliJ IDEA
- Karate Framework version: 1.0.1

Para ejecutar el proyecto se puede hacer de la siguiente forma:
Por consola colocar el comando:  ./gradlew clean test -i
Por el IDE situarse en el archivo: java/runner/TestRunner.java, botón derecho del mouse y Run 'TestRunner'

El reporte que se genera se encuentra en la siguiente ruta dentro del proyecto:
/Petstore/build/karate-reports/karate-summary.html (página principal del reporte)
/Petstore/build/karate-reports/features.petstore.html (muestra los escenarios ejecutados)