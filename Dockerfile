FROM python:3.8
RUN apt-get update && apt-get install -y --no-install-recommends \
		"${INPUT_APT_GET}" \
	&& rm -rf /var/lib/apt/lists/*W
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
