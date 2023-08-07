# Clone repository
git clone https://github.com/oscarjaram/golang-inventory.git
cd golang-inventory

# Inicializar proyecto
go mod init github.com/oscarjaram/golang-inventory

# Importar librerias
go get gopkg.in/yaml.v3         # Libreria para leer archivos yaml
go get go.uber.org/fx           # Libreria para la inyección de dependencias
go get github.com/jmoiron/sqlx  # Libreria para la conexión a la base de datos
go get -u github.com/go-sql-driver/mysql # Libreria para la conexión a la base de datos

# Correr proyecto
go run main.go

# Compilar proyecto
go build main.go