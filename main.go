package main

import (
	"context"

	"github.com/jmoiron/sqlx"
	"github.com/oscarjaram/golang-inventory/database"
	"github.com/oscarjaram/golang-inventory/settings"
	"go.uber.org/fx"
)

func main() {
	app := fx.New(
		fx.Provide(
			context.Background,
			settings.GetSettings,
			database.New,
		),
		fx.Invoke(
			func(db *sqlx.DB) {
				_, err := db.Query("SELECT * FROM Users")
				if err != nil {
					panic(err)
				}
			},
		),
	)
	app.Run()

	// settings.PrintSettings()
}
