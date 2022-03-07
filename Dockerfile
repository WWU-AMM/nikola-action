FROM python:3.9-slim
COPY entrypoint.sh /entrypoint.sh
RUN apt update && apt install -y --no-install-recommends git
ENTRYPOINT ["/entrypoint.sh"]
