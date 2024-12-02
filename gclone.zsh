function gclone() {
    local root_path=${1}
    local git_url=${2}

    if [ -z "${root_path}" ] || [ -z "${git_url}" ]; then
        echo "Usage: gclone ROOT_PATH GIT_URL"
        return 1
    fi

    local full_root_path="${HOME}/git/${root_path}"
    if [ ! -d "${full_root_path}" ]; then
        echo "ERROR - Root path does not exist: ${full_root_path}"
        return 1
    fi

    local git_group_path
    if [[ "${git_url}" =~ ^http ]]; then
        git_group_path=$(echo "${git_url}" | cut -d '/' -f4- | rev | cut -d '/' -f2- | rev)
    elif [[ "${git_url}" =~ ^git@ ]]; then
        git_group_path=$(echo "${git_url}" | cut -d ':' -f2- | rev | cut -d '/' -f2- | rev)
    else
        echo "Unsupported Git URL: ${git_url}"
        return 1
    fi

    local clone_path="${full_root_path}/${git_group_path}"
    mkdir -p "${clone_path}"
    cd "${clone_path}" && git clone "${git_url}"
}
