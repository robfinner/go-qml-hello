package main

import (
	"fmt"
	"os"
	"gopkg.in/qml.v1"
)

func main() {
        err := qml.Run(run)
        if err != nil {
		fmt.Fprintf(os.Stderr, "error: %v\n", err)
		os.Exit(1)
	}
}

func run() error {
        engine := qml.NewEngine()
        component, err := engine.LoadFile("file.qml")
        if err != nil {
                return err
        }
        win := component.CreateWindow(nil)
        win.Show()
        win.Wait()
        return nil
}
