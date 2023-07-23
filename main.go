package main

import (
	"github.com/oscarjaram/golang-inventory/settings"
	"go.uber.org/fx"
)

func main() {
	app := fx.New(
		fx.Provide(
			settings.GetSettings,
		),
		fx.Invoke(),
	)
	app.Run()

	// settings.PrintSettings()
}
