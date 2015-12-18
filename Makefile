git-set-mtime.linux_x64:
	docker build -t rtlong/git-set-mtime:build .
	docker run --rm rtlong/git-set-mtime:build cat /go/src/github.com/rtlong/git-set-mtime/git-set-mtime.linux_x64 > ./git-set-mtime.linux_x64
	chmod +x git-set-mtime.linux_x64

static-image: git-set-mtime.linux_x64
	docker build --tag=rtlong/git-set-mtime -f Dockerfile.static .
