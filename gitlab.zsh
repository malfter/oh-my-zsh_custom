function gitlab() {
  # Making sure files exist to avoid having them created by Docker and thus owned by root:
  touch "${HOME}"/.python-gitlab.ini
  docker run \
    --interactive \
    --rm \
    --tty \
    --env PYTHON_GITLAB_CFG=${HOME}/.python-gitlab.ini \
    --volume="${HOME}/.python-gitlab.ini:${HOME}/.python-gitlab.ini:ro" \
    --volume="/run/user/$(id -u):/run/user/$(id -u):ro" \
    --volume="/etc/ssl/certs:/etc/ssl/certs:ro" \
    --workdir="${PWD}" \
    registry.gitlab.com/python-gitlab/python-gitlab:latest $@
}
