get_node_root_docker() {
    echo /c/$(cygpath -ma ~/node_modules | cut -c 4-)
}

get_template_src_root_docker() {
    echo /c/$(cygpath -ma ~/template_src | cut -c 4-)
}

get_dev_root_docker() {
    echo /c/$(cygpath -ma . | cut -c 4-)
}

get_tool_root_docker() {
    echo /c/$(cygpath -ma $tool_root | cut -c 3-)
}

get_template_src() {
    # git clone https://gitlab.uk.cambridgeconsultants.com/p3608/web/template_src
    cp -r /a/template_src .
}

get_token() {
    echo ydkkYy64zgQ3ZsFXa9vv
}

get_gitlab_url() {
    echo gitlab.uk.cambridgeconsultants.com
}

get_username() {
    echo lga
}

get_password() {
    echo Alpha314
}

get_npm_url() {
     echo "https://artifacts.uk.cambridgeconsultants.com/\
        artifactory/api/npm/p3608-npm-local/"
}

get_email() {
    echo luke.avery@cambridgeconsultants.com
}

git config --global user.name "Luke Avery"
git config --global user.email "$(get_email)"
npm config set registry https://artifacts.uk.cambridgeconsultants.com/\
    artifactory/api/npm/p2074-npm-local/

echo "_auth = $(get_username):$(get_password)" > ~/.npmrc
echo "email = $(get_email)" >> ~/.npmrc
echo "always-auth = true" >> ~/.npmrc
