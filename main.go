package main

import (
    "fmt"
    "log"
    "net/http"
    "os"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hello, Kubernetes！I'm from Jenkins CI！BRANCH_NAME:%s"%os.Getenv("branch"))
    })

    log.Fatal(http.ListenAndServe(":8080", nil))
}
