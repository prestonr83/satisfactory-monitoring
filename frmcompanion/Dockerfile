FROM --platform=$BUILDPLATFORM golang AS builder
ARG TARGETOS
ARG TARGETARCH
WORKDIR /usr/src/
RUN /usr/bin/git clone https://github.com/prestonr83/FicsitRemoteMonitoringCompanion.git . &&\
  /usr/bin/git checkout 2039381 &&\
  cd Companion &&\
  GOOS=${TARGETOS} GOARCH=${TARGETARCH} CGO_ENABLED=0 /usr/local/go/bin/go build -o bin/companion main.go

FROM scratch
COPY --from=builder /usr/src/Companion/bin/companion /usr/local/bin/companion
EXPOSE 9000
ENV FRM_LOG_STDOUT=1
ENTRYPOINT ["/usr/local/bin/companion"]
