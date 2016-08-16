# Bulding kolla imges for stackanetes

Run kolla docker
```bash

docker run -d --name kolla -v /run:/run --net=host kolla-image sleep inf

# enter to docker
docker exec -ti kolla bash

```

Run kolla-build
```bash
kolla-build --include-footer=/tmp/footer -p default nova-compute

# or all images defined in profile
kolla-build --include-footer=/tmp/r -p default 
```


