# Transfersh example

Simple example for a transfersh service running behind a Caddy proxy.

## Details

The provided docker-compose.yml file will run transfersh and caddy.  You will need to edit the name in the caddy/conf/Caddyfile to match the dns name of your server.

You also need to edit the `command` entry in the docker-compose file to change the default username and password.  Sadly, the environment variable method doesn't seem to work in their docker container builds.

Then it should be a simple `docker compose up` to test it.  Pass `-d` to run it detached.  By default the transfersh stores it's files in /storage/ inside the container which is mapped to `./storage/` in the repo.

There is also an example backup script in `backup.sh` which shows how to backup files/dirs to a tarball and send it to the transfersh server.

## License

MIT.
