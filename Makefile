timestamp := `date +%s`
filename := `echo ${file}.sql | tr ' ' _`
folder := './sql/'

test:
	echo ${folder}${filename}

versioned:
	touch ${folder}V${timestamp}__${filename}

repeatable:
	touch ${folder}R__${filename}

baseline:
	touch ${folder}B${timestamp}__${filename}

migrate:
	docker compose run --rm flyway migrate

validate:
	docker compose run --rm flyway validate

info:
	docker compose run --rm flyway info

db:
	docker compose up -d db && docker compose exec db bash