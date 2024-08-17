#!/bin/bash

if [[$1=='c']]; then
    docker compose exec php php artisan migrate
elif [[$1=='d']];then
    docker compose exec php php artisan migrate:reset
elif [[$1=='r']];then
    docker compose exec php php artisan migrate:fresh
else
    echo error
fi
