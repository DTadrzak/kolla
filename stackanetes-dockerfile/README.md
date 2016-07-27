# Bulding kolla imges for stackanetes

Prapere kolla footer code:
```Dockerfile
RUN test -f /var/lib/kolla/venv/bin/pip && /var/lib/kolla/venv/bin/pip install -U -r /openstack-base-source/*/requirements.txt || true
ENTRYPOINT ["/kubernetes-entrypoint"]
```

save this file in /tmp/r

Second line is IMPORTANT! Without new entrypoint definition all images will fail!

Run kolla-build
```bash
kolla-build --include-footer=/tmp/r -p default nova-compute

# or all images defined in profile
kolla-build --include-footer=/tmp/r -p default 
```


