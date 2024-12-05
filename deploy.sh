#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u josephaaron28 -p dckr_pat_jnscs9F-JQ9P9hJpXIjXc0geerk
    docker tag test josephaaron28/dev
    docker push josephaaron28/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u josephaaron28 -p dckr_pat_jnscs9F-JQ9P9hJpXIjXc0geerk
    docker tag test josephaaron28/prod 
    docker push josephaaron28/prod
fi
