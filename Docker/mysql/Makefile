SHELL = /bin/sh

db_migrate:
	cd .. && buffalo pop migrate -e prod

generate_accounts:
	cd .. && buffalo pop generate sql -e prod accounts

db_up:
	docker-compose up

# Flush data and reinitialize.
db_flush:
	docker-compose down -v
