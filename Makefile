IMAGE = ctfcontainer
CONTAINER = ctf

all: attach

attach:
	sudo docker exec -it "${CONTAINER}" /bin/bash ; true

start:
	sudo docker run --rm -v $(folder):/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name "${CONTAINER}" -i "${IMAGE}"

stop:
	sudo docker stop "${CONTAINER}"

setup:
	sudo docker build -t "${IMAGE}" .
