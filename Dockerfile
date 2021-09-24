FROM owasp/zap2docker-stable:2.10.0
LABEL maintainer="leydervera@gmail.com"
LABEL Name=fast-owasp
LABEL Version=1.0.0
EXPOSE 8085
CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8085", "-config", "api.disablekey=true", "-config", "api.addrs.addr.name='.*'", "-config", "api.addrs.addr.regex=true"]
