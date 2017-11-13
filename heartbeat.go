package main

import (
    "fmt"
    "time"
)

const INTERVAL = 3

func main() {
    for {
        fmt.Printf("epoch = %d\n", time.Now().Unix())
        time.Sleep(INTERVAL * 1000 * time.Millisecond)
    }
}
