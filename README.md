# Golang Deploy EKS

1. This dockerfile builds a image for deploying `Golang` program to `AWS EKS`.
2. This image includes `AWS CLI V2`, which doesn't support alpine linux so here use `golang:1.14-stretch`.
3. Because using EKS, this image includes `kubectl`.
4. Our `Golang` project use [golang-migrate](https://github.com/golang-migrate/migrate) so this image includes `golang-migrate`.
5. Includes `gettext` for `envsubst`.