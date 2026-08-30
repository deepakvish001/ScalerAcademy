setup:
	bin/setup

server:
	bin/rails server

test:
	bin/rails test

test-system:
	bin/rails test:system

routes:
	bin/rails routes

reset-db:
	bin/rails db:reset

check: test
