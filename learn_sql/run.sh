#!/bin/bash
set -e
sqlite3 database.db < main.sql && rm database.db
