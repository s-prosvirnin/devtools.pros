package main

import "github.com/gin-gonic/gin"
import "log"
import "time"

func main() {
    log.Println("------15------")
    time.Sleep(5 * time.Second)
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "halo",
		})
	})
	r.Run(":3000")
}