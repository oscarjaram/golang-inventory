package database

import (
	"context"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
	"github.com/jmoiron/sqlx"
	"github.com/oscarjaram/golang-inventory/settings"
)

func New(ctx context.Context, s *settings.Settings) (*sqlx.DB, error) {
	connectionString := fmt.Sprintf(
		"%s:%s@tcp(%s:%d)/%s?parseTime=true",
		s.Database.User, s.Database.Password,
		s.Database.Host, s.Database.Port, s.Database.Name,
	)
	db, err := sqlx.ConnectContext(ctx, "mysql", connectionString)
	return db, err
}
