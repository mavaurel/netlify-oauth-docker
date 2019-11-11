# Register application
Open [https://github.com/settings/developers](https://github.com/settings/developers)

Write down your homepage url. In the field "Authorization callback URL" paste your homepage url with '/callback' endpoint.

# How to start container

For example let's build container with tag `oauth:0.1`:

`docker build -t oauth:0.1 .`

To start container run:

`docker run  --rm -itd  -p3000:3000 --env-file ./.env  oauth:0.1`

Default application port is `3000`, but you can freely override it in the `.env` file.
Or you can pass environment variables explicitly, like:

`docker run --rm -itd -p3000:3000 -e OAUTH_CLIENT_ID='<your ID>' -e OAUTH_CLIENT_SECRET='<your secret>' -e PORT='3000' oauth:0.1`