# Descripcion
Eureka server para el registro de los microservicios en el sistema.

# Requerimientos
- Docker
- Si no tiene docker es necesario java 17

## Despliegue
Podemos correr eureka facilmente de dos maneras:

- Con gradle (sin instalacion):
1. Use el siguiente comando en la raiz del proyecto, no necesita compilar el codigo fuente ni tener gradle instalado: 
```shell
./gradlew bootRun
```

- Con docker:

1. Creamos y corremos el contenedor, importante exponer el puerto 8761:
```shell
docker run -p 8761:8761 --name <container_name> jhojanlopez/inventory_system_eureka
```


