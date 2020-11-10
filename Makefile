PROJECT_DIRECTORY = "./app"

ifdef ENV
  FILE := ./docker/docker-compose.$(ENV).yml
  COMMAND := docker-compose -f $(FILE) --project-directory $(PROJECT_DIRECTORY)
else
  COMMAND := docker-compose --project-directory $(PROJECT_DIRECTORY)
endif

up:
	$(COMMAND) up

buildup:
	$(COMMAND) up --build

down:
	$(COMMAND) down

downv:
	$(COMMAND) down -v
