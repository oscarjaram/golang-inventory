# Clone repository
git clone https://github.com/oscarjaram/golang-inventory.git
cd golang-inventory

# Inicializar proyecto
go mod init github.com/oscarjaram/golang-inventory

# Importar librerias
go get gopkg.in/yaml.v3

go get go.uber.org/fx    # Libreria para la inyección de dependencias

# Importante: Estructura de proyecto similar a Clean Architecture / Domain Driven Design
# Se divide app en capas que heredan desde capa más baja hasta capa más alta

# repository (model DB) -> service (business logic) -> presentation (API)
# repository -> service -> api

# Crear estructura de carpetas
touch main.go
echo "package main" >> main.go

# Puerto, credenciales BD
mkdir settings
touch settings/settings.go
touch settings/settings.yaml
echo "package settings" >> settings/settings.go

# Esto queda oculto para otros packages
mkdir internal                  

# Modelo de datos. 
# Se usa mismo nombre de package que nombre de carpeta, es lo primero al leer.
mkdir internal/repository       
touch internal/repository/repository.go
echo "package repository" >> internal/repository/repository.go

mkdir internal/service
touch internal/service/service.go
echo "package service" >> internal/service/service.go

mkdir internal/api
touch internal/api/api.go
echo "package api" >> internal/api/api.go

