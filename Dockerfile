FROM python:3.8
RUN if [ "${INPUT_APT_GET}" -ne false ]; then \
    apt-get update && apt-get install -y --no-install-recommends \
		${INPUT_APT_GET} \
	&& rm -rf /var/lib/apt/lists/*; fi
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
