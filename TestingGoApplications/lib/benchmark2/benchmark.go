package main

import (
	"encoding/json"
	"io"
	"io/ioutil"
)

/*
func main() {
   _, err := jsonDecoder(strings.NewReader(`[{"name": "Dubi Gal", "age": 900}]`))
   if err != nil {
      fmt.Println(err)
   }

   _, err = readAll(strings.NewReader(`[{"name": "Dubi Gal", "age": 900}]`))
   if err != nil {
      fmt.Println(err)
   }
}
*/

type Player struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

func jsonDecoder(r io.Reader) ([]Player, error) {
	var players []Player
	return players, json.NewDecoder(r).Decode(&players)
}

func readAll(r io.Reader) ([]Player, error) {
	var players []Player
	bytez, err := ioutil.ReadAll(r)
	if err != nil {
		return players, err
	}

	return players, json.Unmarshal(bytez, &players)
}
