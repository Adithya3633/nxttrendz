.PHONY: build up down logs migrate superuser shell push
 
DOCKER_ID = ravi123
BACKEND = nxttrendz-backend
FRONTEND = nxttrendz-frontend
VERSION = v1
LATEST = latest
 
push:
	docker tag $(BACKEND) $(DOCKER_ID)/$(BACKEND):$(VERSION)
	docker tag $(BACKEND) $(DOCKER_ID)/$(BACKEND):$(LATEST)
	docker push $(DOCKER_ID)/$(BACKEND):$(VERSION)
	docker push $(DOCKER_ID)/$(BACKEND):$(LATEST)
	
	docker tag $(FRONTEND) $(DOCKER_ID)/$(FRONTEND):$(VERSION)
	docker tag $(FRONTEND) $(DOCKER_ID)/$(FRONTEND):$(LATEST)
	docker push $(DOCKER_ID)/$(FRONTEND):$(VERSION)
	docker push $(DOCKER_ID)/$(FRONTEND):$(LATEST)