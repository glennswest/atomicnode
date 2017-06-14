FROM ranode

# This image provides a Node.JS environment you can use to run your Node.JS
# applications.

MAINTAINER Glenn West <gwest@redhat.com>

EXPOSE 8080

# This image will be initialized with "npm run $NPM_RUN"
# See https://docs.npmjs.com/misc/scripts, and your repo's package.json
# file for possible values of NPM_RUN
ENV NPM_RUN=start \
    NODE_VERSION=6.11.0 \
    NPM_CONFIG_LOGLEVEL=info \
    NPM_CONFIG_PREFIX=$HOME/.npm-global \
    PATH=$HOME/node_modules/.bin/:$HOME/.npm-global/bin/:$PATH \
    NPM_VERSION=5 \
    DEBUG_PORT=5858 \
    NODE_ENV=production \
    DEV_MODE=false \
    STI_SCRIPTS_PATH=/usr/local/bin

LABEL io.k8s.description="Atomic Platform for building and running Node.js applications" \
      io.k8s.display-name="Node.js v$NODE_VERSION" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,nodejs,nodejs$NODE_VERSION" \
      com.redhat.deployments-dir="/opt/app-root/src"

# Copy the S2I scripts from the specific language image to $STI_SCRIPTS_PATH
COPY nodejs.org/s2i/bin/ $STI_SCRIPTS_PATH

# Each language image can have 'contrib' a directory with extra files needed to
# run and build the applications.
COPY nodejs.org/contrib/ /opt/app-root

# Drop the root user and make the content of /opt/app-root owned by user 1001
RUN chown -R 1001:0 /opt/app-root
USER 1001

# Set the default CMD to print the usage of the language image
CMD $STI_SCRIPTS_PATH/usage
