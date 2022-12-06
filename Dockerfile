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

# Run the generated shell script.
RUN ["chmod", "+x", "./home/entrypoint.sh"]
ENTRYPOINT [ "bash", "-c", "./home/entrypoint.sh" ]