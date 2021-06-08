# docker-image

A little docker image based on doker-* with packages

## using from GitLab CI

```yml
deploy_staging:
  stage: deploy
  image: kroniak/docker-image
  environment:
    name: staging
    url: https://sample-app.net
  script:
  only:
    - dev
```

## using from docker

`docker run -it --rm kroniak/docker-image bash`

## supported tags and respective Dockerfile links

- 19.03.8, latest [19.03.8/Dockerfile](https://github.com/kroniak/docker-image/blob/master/19.03.8/Dockerfile)
