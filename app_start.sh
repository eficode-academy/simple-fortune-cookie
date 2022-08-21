#! /bin/bash
if [$1 = 'main']
then
    docker-compose up
fi

if [$1 = 'staging']
then
    docker-compose up
fi

if [$1 = 'production']
then
    docker-compose up
fi

if [$1 = 'development']
then
    docker-compose up
fi