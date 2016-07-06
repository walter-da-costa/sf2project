#!/usr/bin/env bash

echo ">>> Start Launch Fictures .."

app/console doctrine:database:drop --force
app/console doctrine:database:create
app/console doctrine:schema:create
app/console doctrine:fixtures:load -n --fixtures=src/OC/PlatformBundle/DataFixtures/ORM

echo ">>> All done."
