#FROM node:18 as builder
#RUN mkdir /build
#WORKDIR /build
#
#ADD content/themes/precision /build
#
#RUN yarn install

FROM ghost:5.53.4-alpine
#COPY --from=builder /build /var/lib/ghost/content/themes/precision
COPY content/settings/routes.yaml /var/lib/ghost/content/settings/routes.yaml
COPY content/images /var/lib/ghost/content/images
