# FROM rasa/rasa:latest

# COPY app /app
# COPY server.sh /app/server.sh

# USER root
# RUN chmod -R 777 /app
# USER 1001

# RUN rasa train nlu

# ENTRYPOINT ["/app/server.sh"]

FROM rasa/rasa:latest

COPY . .

USER root
RUN chmod -R 777 ./entrypoint.sh
USER 1001

EXPOSE 8080

# Run the generated shell script.
# RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]