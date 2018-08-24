[![nodesource/node](http://dockeri.co/image/mlllab/mysqldump)](https://registry.hub.docker.com/u/mlllab/mysqldump/)

Simple and small container to backup MySQL databases.

## Usage

Set the following environment variables on the container.

- `MYSQL_HOST`
- `MYSQL_USER`
- `MYSQL_PASSWORD`
- `MYSQL_DATABASE`

And mount your backup volume into the container at `/backup`.

## How does it work?

On start the container runs `mysqldump` with the given env variables.
The result is named with the current timestamp and stored under `/backup/`.

## Example

Run this as a one-off docker command

```bash
docker run --env MYSQL_HOST=1.2.3.4 \
           --env MYSQL_USER=root \
           --env MYSQL_PASSWORD=password \
           --env MYSQL_DATABASE=foobarbaz \
           --volume ${PWD}:/backup \
           mlllab/mysqldump
```
