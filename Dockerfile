FROM golang:1.13-alpine AS builder
RUN apk add --no-cache git
RUN go get github.com/pdevine/go-asciisprite && go get github.com/pdevine/goMoonPhase
WORKDIR /project
COPY *.go /project/
RUN CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' -o Hello Hello.py

FROM scratch
COPY --from=builder /project/Hello /Hello
ENTRYPOINT ["/Hello"]