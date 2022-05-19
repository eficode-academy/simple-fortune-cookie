package main

import (
	"fmt"
	"github.com/gomodule/redigo/redis"
	"log"
	"sync"
)

var dbLink redis.Conn
var usingRedis = false

func init() {
	conn, err := redis.Dial("tcp", fmt.Sprintf("%s:6379", getEnv("REDIS_DNS", "localhost")))
	if err != nil {
		log.Println("redis", err)
	} else {
		dbLink = conn
		usingRedis = true

		resKeys, err := redis.Values(dbLink.Do("hkeys", "fortunes"))
		if err != nil {
			fmt.Println("redis hkeys failed", err.Error())
		} else {
			datastoreDefault = datastore{m: map[string]fortune{}, RWMutex: &sync.RWMutex{}}
			fmt.Printf("*** loading redis fortunes:\n")
			for _, key := range resKeys {
				val, err := dbLink.Do("hget", "fortunes", key)
				if err != nil {
					fmt.Println("redis hget failed", err.Error())
				} else {
					idx := fmt.Sprintf("%s", key.([]byte))
					msg := fmt.Sprintf("%s", val.([]byte))
					datastoreDefault.m[idx] = fortune{ID: idx, Message: msg}
					fmt.Printf("%s => %s\n", key, val)
				}
			}
		}
	}
}
