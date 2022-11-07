FROM nginx:alpine

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \
    && chmod 700 get_helm.sh && ./get_helm.sh

COPY default.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html

COPY health /usr/share/nginx/html

COPY scm-source.json /
