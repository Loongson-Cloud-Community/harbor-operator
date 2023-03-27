# Use distroless as minimal base image to package the manager binary
# Refer to https://github.com/GoogleContainerTools/distroless for more details
FROM cr.loongnix.cn/library/debian:buster-slim
WORKDIR /
COPY bin/manager .
USER nonroot:nonroot

ENTRYPOINT ["/manager"]
