#!/bin/bash
if [ -z "$PORT" ]
then
  PORT=5005
fi

rasa run -p ${PORT} --cors "*"