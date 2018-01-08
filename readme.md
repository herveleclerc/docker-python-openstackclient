# Openstack unified command-line tool

## Usage

```bash
docker run -ti --rm herveleclerc/docker-python-openstackclient:pike
```

Will give you all the commands available for the openstack client


```bash
docker run -ti --rm \
       -v $HOME/openstack/local.rc:/app/openstack.rc \
       herveleclerc/docker-python-openstackclient:pike image list
```

Will use local rc file with configuration environment variable for openstack. The file must be mounted on **/app/openstack.rc**

```bash
docker run -ti --rm \
       -e RC=/tmp \
       -e RCFILE=os.rc \
       -v $HOME/openstack/local.rc:/tmp/os.rc \
       herveleclerc/docker-python-openstackclient:pike image list
```

Will use local rc file with configuration environment variable for openstack. Environment variable RC (directory) and RCFILE (file) can be used to change mount point


You can also use environment variables to configure openstack client

```bash
docker run -ti --rm \
      -e OS_AUTH_URL="https://os.example.com/v3" \
      -e OS_PROJECT_ID="projectID" \
      -e OS_USER_DOMAIN_ID="domainID" \
      -e OS_USERNAME="hleclerc" \
      -e OS_PASSWORD="the pass" \
      -e OS_IDENTITY_API_VERSION=3 \
      -e OS_IMAGE_API_VERSION=2 \
      -e OS_NETWORK_API_VERSION=2 \
      -e OS_REGION_NAME="as-south-0" \
       herveleclerc/docker-python-openstackclient:pike image list
```

## TAGS 
- latest = pike
- ocata
- mitaka





