#!/bin/bash

if [ -z "$PORT"]
then
  PORT=4200
fi

rasa run -p ${PORT} --cors "*"