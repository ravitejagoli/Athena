FROM golang:1.13-alpine AS builder

WORKDIR /project
COPY *.go /project/
RUN CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' -o Hello Hello.py

FROM scratch
COPY --from=builder /project/Hello /Hello
ENTRYPOINT ["/Hello"]