package webservice

import (
	"io"
	"net/http"
	"os"
)

func placeHolderWebService() {
	http.HandleFunc("/", Handler)
	http.ListenAndServe(":3000", nil)
}

func Handler(res http.ResponseWriter, r *http.Request) {
	f, _ := os.Open("./menu.txt")
	io.Copy(res, f)
}
