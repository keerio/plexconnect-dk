FROM plexconnect-dk:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8081" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8081:8081/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Sickrage config files\"			\
          },								\
          {								\
              \"name\": \"/downloads\",					\
              \"descr\": \"Sickrage downloads volume\"			\
          },								\
          {								\
              \"name\": \"/tv\",					\
              \"descr\": \"Location of TV library\"			\
          }								\
      ]"  \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone information, eg Europe/London\",	\
              \"ip_pms\": \"wut\"   \
              \"optional\": true					\
          }								\
      ]"


