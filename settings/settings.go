package settings

import (
	_ "embed"

	"gopkg.in/yaml.v3"
)

//go:embed settings.yaml
var settingsFile []byte

type Database struct {
	Host     string `yaml:"host"`
	Port     int    `yaml:"port"`
	User     string `yaml:"user"`
	Password string `yaml:"password"`
	Name     string `yaml:"name"`
}

type Settings struct {
	Port     int      `yaml:"port"`
	Debug    bool     `yaml:"debug"`
	Database Database `yaml:"database"`
}

func GetSettings() (*Settings, error) {
	var settings Settings
	err := yaml.Unmarshal(settingsFile, &settings)
	return &settings, err
}

func PrintSettings() {
	settings, error := GetSettings()
	if error != nil {
		println(error)
	}
	yamlBytes, _ := yaml.Marshal(&settings)
	println(string(yamlBytes))
}
