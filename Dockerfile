FROM openjdk:17-jdk-slim

# Crear directorio de trabajo
WORKDIR /imagenDocker

# Instalar git
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Clonar el repositorio
RUN git clone https://github.com/zairajazmin/mensajeTerminalDocker.git

# Entrar al proyecto clonado
WORKDIR /imagenDocker/mensajeTerminalDocker

# Compilar el archivo Java
RUN ls -R && echo "-----Fin del listado-----"
RUN javac src/mensajeterminaldocker/MensajeTerminalDocker.java

# Ejecutar el programa
CMD ["java", "-cp", "src", "mensajeterminaldocker.MensajeTerminalDocker"]
