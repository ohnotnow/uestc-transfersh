# Transfersh example

Simple example for a transfersh service running behind a Caddy proxy.

## Details

The provided docker-compose.yml file will run transfersh and caddy.  You will need to edit the name in the caddy/conf/Caddyfile to match the dns name of your server.

You also need to set two environment variables (or edit the defaults in the docker-compose file):
```sh
HTTP_AUTH_USER=someuser
HTTP_AUTH_PASS=someamazingpassword
```

Then it should be a simple `docker compose up` to test it.  Pass `-d` to run it detached.

There is also an example backup script in `backup.sh` which shows how to backup files/dirs to a tarball and send it to the transfersh server.

## License

MIT.
