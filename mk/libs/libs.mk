#********************************************************************************
#** LIBDIRS **
#********************************************************************************
LIBDIRS_yes=

#** Basic **
LIBDIRS_$(PJ_HAS_GLIBC) += $(PJ_LIBS_DIR)/glibc
LIBDIRS_$(PJ_HAS_UCLIBC) += $(PJ_LIBS_DIR)/uClibc

LIBDIRS_$(PJ_HAS_LIBCAP) += $(PJ_LIBS_DIR)/libcap
LIBS_CHECK_$(PJ_HAS_LIBCAP) += $(SDK_LIB_DIR)/libcap.so $(SDK_LIB_DIR)/libpsx.so

LIBDIRS_$(PJ_HAS_LIBTOOL) += $(PJ_LIBS_DIR)/libtool
LIBS_CHECK_$(PJ_HAS_LIBTOOL) += $(SDK_LIB_DIR)/libltdl.so

#** SSL **
ifeq ("$(PJ_HAS_OPENSSL)", "yes")
LIBDIRS_$(PJ_HAS_OPENSSL) += $(PJ_LIBS_DIR)/openssl
LIBS_CHECK_$(PJ_HAS_OPENSSL) += $(SDK_LIB_DIR)/libssl.so $(SDK_LIB_DIR)/libcrypto.so
BINS_CHECK_$(PJ_HAS_OPENSSL) += $(SDK_BIN_DIR)/openssl
endif

LIBDIRS_$(PJ_HAS_MBEDTLS) += $(PJ_LIBS_DIR)/mbedtls
LIBS_CHECK_$(PJ_HAS_MBEDTLS) += $(SDK_LIB_DIR)/libmbedtls.so $(SDK_LIB_DIR)/libmbedx509.so $(SDK_LIB_DIR)/libmbedcrypto.so

#** zip **
LIBDIRS_$(PJ_HAS_ZLIB) += $(PJ_LIBS_DIR)/zlib
LIBS_CHECK_$(PJ_HAS_ZLIB) += $(SDK_LIB_DIR)/libz.so

LIBDIRS_$(PJ_HAS_BZIP2) += $(PJ_LIBS_DIR)/bzip2
LIBS_CHECK_$(PJ_HAS_BZIP2) += $(SDK_LIB_DIR)/libbz2.so

#** glib **
LIBDIRS_$(PJ_HAS_LIBFFI) += $(PJ_LIBS_DIR)/libffi
LIBS_CHECK_$(PJ_HAS_LIBFFI) += $(SDK_LIB_DIR)/libffi.so

LIBDIRS_$(PJ_HAS_GLIB) += $(PJ_LIBS_DIR)/glib
LIBS_CHECK_$(PJ_HAS_GLIB) += $(SDK_LIB_DIR)/libglib-2.0.so

LIBDIRS_$(PJ_HAS_ICU) += $(PJ_LIBS_DIR)/icu
LIBS_CHECK_$(PJ_HAS_ICU) += $(SDK_LIB_DIR)/libicuio.so

#** boost **
LIBDIRS_$(PJ_HAS_BOOST) += $(PJ_LIBS_DIR)/boost
LIBS_CHECK_$(PJ_HAS_BOOST) += $(SDK_LIB_DIR)/libboost_filesystem.so

LIBDIRS_$(PJ_HAS_BOOST_CMAKE) += $(PJ_LIBS_DIR)/boost-cmake
#LIBS_CHECK_$(PJ_HAS_BOOST_CMAKE) += $(SDK_LIB_DIR)/

LIBDIRS_$(PJ_HAS_PROTOBUF) += $(PJ_LIBS_DIR)/protobuf
LIBS_CHECK_$(PJ_HAS_PROTOBUF) += $(SDK_LIB_DIR)/libprotobuf.so

#** gdbm **
LIBDIRS_$(PJ_HAS_GDBM) += $(PJ_LIBS_DIR)/gdbm
LIBS_CHECK_$(PJ_HAS_GDBM) += $(SDK_LIB_DIR)/libgdbm.so

LIBDIRS_$(PJ_HAS_CURVE25519) += $(PJ_LIBS_DIR)/curve25519
LIBS_CHECK_$(PJ_HAS_CURVE25519) += $(SDK_LIB_DIR)/libcurve25519.so

LIBDIRS_$(PJ_HAS_GMP) += $(PJ_LIBS_DIR)/gmp
LIBS_CHECK_$(PJ_HAS_GMP) += $(SDK_LIB_DIR)/libgmp.so

LIBDIRS_$(PJ_HAS_SIMCLIST) += $(PJ_LIBS_DIR)/simclist
LIBS_CHECK_$(PJ_HAS_SIMCLIST) += $(SDK_LIB_DIR)/libsimclist.so

LIBDIRS_$(PJ_HAS_LOG4CPLUS) += $(PJ_LIBS_DIR)/log4cplus
LIBS_CHECK_$(PJ_HAS_LOG4CPLUS) += $(SDK_LIB_DIR)/liblog4cplus.so $(SDK_LIB_DIR)/liblog4cplusU.so

#** Unit testing framework **
LIBDIRS_$(PJ_HAS_BCUNIT) += $(PJ_LIBS_DIR)/bcunit
LIBS_CHECK_$(PJ_HAS_BCUNIT) += $(SDK_LIB_DIR)/libbcunit.so

#** yasm **
LIBDIRS_$(PJ_HAS_YASM) += $(PJ_LIBS_DIR)/yasm
LIBS_CHECK_$(PJ_HAS_YASM) += $(SDK_LIB_DIR)/libyasm.a
BINS_CHECK_$(PJ_HAS_YASM) += $(SDK_BIN_DIR)/yasm

#** libuv **
LIBDIRS_$(PJ_HAS_LIBUV) += $(PJ_LIBS_DIR)/libuv
LIBS_CHECK_$(PJ_HAS_LIBUV) += $(SDK_LIB_DIR)/libuv.so

LIBDIRS_$(PJ_HAS_LIBEV) += $(PJ_LIBS_DIR)/libev
LIBS_CHECK_$(PJ_HAS_LIBEV) += $(SDK_LIB_DIR)/libev.so

#** Netlink **
LIBDIRS_$(PJ_HAS_LIBNL_TINY) += $(PJ_LIBS_DIR)/libnl-tiny
LIBS_CHECK_$(PJ_HAS_LIBNL_TINY) += $(SDK_LIB_DIR)/libnl-tiny.so

#** c-ares **
LIBDIRS_$(PJ_HAS_LIBCARES) += $(PJ_LIBS_DIR)/libcares
LIBS_CHECK_$(PJ_HAS_LIBCARES) += $(SDK_LIB_DIR)/libcares.so

#** busybox **
LIBDIRS_$(PJ_HAS_BUSYBOX) += $(PJ_LIBS_DIR)/busybox

#** XML, SOAP **
LIBDIRS_$(PJ_HAS_MXML) += $(PJ_LIBS_DIR)/mxml
LIBS_CHECK_$(PJ_HAS_MXML) += $(SDK_LIB_DIR)/libmxml.so

LIBDIRS_$(PJ_HAS_LIBXML2) += $(PJ_LIBS_DIR)/libxml2
LIBS_CHECK_$(PJ_HAS_LIBXML2) += $(SDK_LIB_DIR)/libxml2.so

LIBDIRS_$(PJ_HAS_LIBROXML) += $(PJ_LIBS_DIR)/libroxml
LIBS_CHECK_$(PJ_HAS_LIBROXML) += $(SDK_LIB_DIR)/libroxml.so

LIBDIRS_$(PJ_HAS_EXPAT) += $(PJ_LIBS_DIR)/expat
LIBS_CHECK_$(PJ_HAS_EXPAT) += $(SDK_LIB_DIR)/libexpat.so

LIBDIRS_$(PJ_HAS_EXPAT050) += $(PJ_LIBS_DIR)/expat050
LIBS_CHECK_$(PJ_HAS_EXPAT050) += $(SDK_LIB_DIR)/libexpat.so

LIBDIRS_$(PJ_HAS_LIBSOAP) += $(PJ_LIBS_DIR)/libsoap
LIBS_CHECK_$(PJ_HAS_LIBSOAP) += $(SDK_LIB_DIR)/libcsoap.so

LIBDIRS_$(PJ_HAS_AXIS2) += $(PJ_LIBS_DIR)/axis2
LIBS_CHECK_$(PJ_HAS_AXIS2) += $(SDK_LIB_DIR)/libaxis2_parser.so

LIBDIRS_$(PJ_HAS_GSOAP) += $(PJ_LIBS_DIR)/gsoap
LIBS_CHECK_$(PJ_HAS_GSOAP) += $(SDK_LIB_DIR)/libgsoap.a

#** JSON **
LIBDIRS_$(PJ_HAS_JANSSON) += $(PJ_LIBS_DIR)/jansson
LIBS_CHECK_$(PJ_HAS_JANSSON) += $(SDK_LIB_DIR)/libjansson.so

LIBDIRS_$(PJ_HAS_CJSON) += $(PJ_LIBS_DIR)/cJSON
LIBS_CHECK_$(PJ_HAS_CJSON) += $(SDK_LIB_DIR)/libcjson.so

LIBDIRS_$(PJ_HAS_JSONC) += $(PJ_LIBS_DIR)/json-c
LIBS_CHECK_$(PJ_HAS_JSONC) += $(SDK_LIB_DIR)/libjson-c.so

LIBDIRS_$(PJ_HAS_JQ) += $(PJ_LIBS_DIR)/jq
BINS_CHECK_$(PJ_HAS_JQ) += $(SDK_BIN_DIR)/jq

LIBDIRS_$(PJ_HAS_YAJL) += $(PJ_LIBS_DIR)/yajl
LIBS_CHECK_$(PJ_HAS_YAJL) += $(SDK_LIB_DIR)/libyajl.so

LIBDIRS_$(PJ_HAS_NLOHMANNJSON) += $(PJ_LIBS_DIR)/nlohmann_json
LIBS_CHECK_$(PJ_HAS_NLOHMANNJSON) += $(SDK_INC_DIR)/nlohmann/json.hpp

#** MININI **
LIBDIRS_$(PJ_HAS_MININI) += $(PJ_LIBS_DIR)/minIni
LIBS_CHECK_$(PJ_HAS_MININI) += $(SDK_LIB_DIR)/libminIni.so

#** config **
LIBDIRS_$(PJ_HAS_LIBCONFIG) += $(PJ_LIBS_DIR)/libconfig
LIBS_CHECK_$(PJ_HAS_LIBCONFIG) += $(SDK_LIB_DIR)/libconfig.so

LIBDIRS_$(PJ_HAS_LIBUUID) += $(PJ_LIBS_DIR)/libuuid
LIBS_CHECK_$(PJ_HAS_LIBUUID) += $(SDK_LIB_DIR)/libuuid.so

#** ldns **
LIBDIRS_$(PJ_HAS_LDNS) += $(PJ_LIBS_DIR)/ldns
LIBS_CHECK_$(PJ_HAS_LDNS) += $(SDK_LIB_DIR)/libldns.so

#** tools (nghttp2) **
LIBDIRS_$(PJ_HAS_NGHTTP2) += $(PJ_LIBS_DIR)/nghttp2
LIBS_CHECK_$(PJ_HAS_NGHTTP2) += $(SDK_LIB_DIR)/libnghttp2.so
BINS_CHECK_$(PJ_HAS_NGHTTP2) += $(SDK_BIN_DIR)/nghttp $(SDK_BIN_DIR)/nghttpd $(SDK_BIN_DIR)/nghttpx $(SDK_BIN_DIR)/h2load $(SDK_BIN_DIR)/deflatehd $(SDK_BIN_DIR)/inflatehd

#** curl **
LIBDIRS_$(PJ_HAS_CURL) += $(PJ_LIBS_DIR)/curl
LIBS_CHECK_$(PJ_HAS_CURL) += $(SDK_LIB_DIR)/libcurl.so
BINS_CHECK_$(PJ_HAS_CURL) += $(SDK_BIN_DIR)/curl

#** Libical **
LIBDIRS_$(PJ_HAS_LIBICAL) += $(PJ_LIBS_DIR)/libical
LIBS_CHECK_$(PJ_HAS_LIBICAL) += $(SDK_LIB_DIR)/libical.so $(SDK_LIB_DIR)/libicalss.so $(SDK_LIB_DIR)/libicalvcal.so

#** mqtt **
LIBDIRS_$(PJ_HAS_MOSQUITTO) += $(PJ_LIBS_DIR)/mosquitto
LIBS_CHECK_$(PJ_HAS_MOSQUITTO) += $(SDK_LIB_DIR)/libmosquitto.so.1
BINS_CHECK_$(PJ_HAS_MOSQUITTO) += $(SDK_BIN_DIR)/mosquitto_pub $(SDK_BIN_DIR)/mosquitto_sub

#** websockets **
LIBDIRS_$(PJ_HAS_LIBWEBSOCKETS) += $(PJ_LIBS_DIR)/libwebsockets
LIBS_CHECK_$(PJ_HAS_LIBWEBSOCKETS) += $(SDK_LIB_DIR)/libwebsockets.so

#** ncurses & lua **
LIBDIRS_$(PJ_HAS_NCURSES) += $(PJ_LIBS_DIR)/ncurses
LIBS_CHECK_$(PJ_HAS_NCURSES) += $(SDK_LIB_DIR)/libncurses.so

LIBDIRS_$(PJ_HAS_READLINE) += $(PJ_LIBS_DIR)/readline
LIBS_CHECK_$(PJ_HAS_READLINE) += $(SDK_LIB_DIR)/libhistory.so $(SDK_LIB_DIR)/libreadline.so

LIBDIRS_$(PJ_HAS_LUA) += $(PJ_LIBS_DIR)/lua
LIBS_CHECK_$(PJ_HAS_LUA) += $(SDK_LIB_DIR)/liblua.so

#** dbus **
LIBDIRS_$(PJ_HAS_DBUS) += $(PJ_LIBS_DIR)/dbus
LIBS_CHECK_$(PJ_HAS_DBUS) += $(SDK_LIB_DIR)/libdbus-1.so
BINS_CHECK_$(PJ_HAS_DBUS) += $(SDK_BIN_DIR)/dbus-daemon $(SDK_BIN_DIR)/dbus-monitor

LIBDIRS_$(PJ_HAS_LIBUBOX) += $(PJ_LIBS_DIR)/libubox
LIBS_CHECK_$(PJ_HAS_LIBUBOX) += $(SDK_LIB_DIR)/libubox.so

LIBDIRS_$(PJ_HAS_UBUS) += $(PJ_LIBS_DIR)/ubus
LIBS_CHECK_$(PJ_HAS_UBUS) += $(SDK_LIB_DIR)/libubus.so
BINS_CHECK_$(PJ_HAS_UBUS) += $(SDK_BIN_DIR)/ubus $(SDK_SBIN_DIR)/ubusd

#**libzwscene **
LIBDIRS_$(PJ_HAS_UDUNITS) += $(PJ_LIBS_DIR)/udunits
LIBS_CHECK_$(PJ_HAS_UDUNITS) += $(SDK_LIB_DIR)/libudunits2.so

LIBDIRS_$(PJ_HAS_LIBESMTP) += $(PJ_LIBS_DIR)/libesmtp
LIBS_CHECK_$(PJ_HAS_LIBESMTP) += $(SDK_LIB_DIR)/libesmtp.so

#** apache lib **
# https://apr.apache.org
# APR - Apache Portable Runtime
# APR-util - Apache Portable Runtime Utility Library
# PCRE - Perl Compatible Regular Expressions
LIBDIRS_$(PJ_HAS_APR) += $(PJ_LIBS_DIR)/apr
LIBS_CHECK_$(PJ_HAS_APR) += $(SDK_LIB_DIR)/libapr-1.so

LIBDIRS_$(PJ_HAS_APR_UTIL) += $(PJ_LIBS_DIR)/apr-util
LIBS_CHECK_$(PJ_HAS_APR_UTIL) += $(SDK_LIB_DIR)/libaprutil-1.so

LIBDIRS_$(PJ_HAS_PCRE) += $(PJ_LIBS_DIR)/pcre
LIBS_CHECK_$(PJ_HAS_PCRE) += $(SDK_LIB_DIR)/libpcre.so

LIBDIRS_$(PJ_HAS_AVRO) += $(PJ_LIBS_DIR)/avro

#** media **
LIBDIRS_$(PJ_HAS_ALSA_LIB) += $(PJ_LIBS_DIR)/alsa-lib
LIBS_CHECK_$(PJ_HAS_ALSA_LIB) += $(SDK_LIB_DIR)/libasound.so

LIBDIRS_$(PJ_HAS_OPUS) += $(PJ_LIBS_DIR)/opus
LIBS_CHECK_$(PJ_HAS_OPUS) += $(SDK_LIB_DIR)/libopus.so

LIBDIRS_$(PJ_HAS_PORTAUDIO) += $(PJ_LIBS_DIR)/portaudio
LIBS_CHECK_$(PJ_HAS_PORTAUDIO) += $(SDK_LIB_DIR)/libportaudio.so

LIBDIRS_$(PJ_HAS_FLAC) += $(PJ_LIBS_DIR)/flac
LIBS_CHECK_$(PJ_HAS_FLAC) += $(SDK_LIB_DIR)/libFLAC.so

LIBDIRS_$(PJ_HAS_LIBOGG) += $(PJ_LIBS_DIR)/libogg
LIBS_CHECK_$(PJ_HAS_LIBOGG) += $(SDK_LIB_DIR)/libogg.so

LIBDIRS_$(PJ_HAS_LIBVORBIS) += $(PJ_LIBS_DIR)/libvorbis
LIBS_CHECK_$(PJ_HAS_LIBVORBIS) += $(SDK_LIB_DIR)/libvorbis.so

LIBDIRS_$(PJ_HAS_LIBSNDFILE) += $(PJ_LIBS_DIR)/libsndfile
LIBS_CHECK_$(PJ_HAS_LIBSNDFILE) += $(SDK_LIB_DIR)/libsndfile.so

LIBDIRS_$(PJ_HAS_GST_ORC) += $(PJ_LIBS_DIR)/gst-orc
LIBS_CHECK_$(PJ_HAS_GST_ORC) += $(SDK_LIB_DIR)/liborc-0.4.so

LIBDIRS_$(PJ_HAS_PULSEAUDIO) += $(PJ_LIBS_DIR)/pulseaudio
LIBS_CHECK_$(PJ_HAS_PULSEAUDIO) += $(SDK_LIB_DIR)/libpulse.so

LIBDIRS_$(PJ_HAS_X264) += $(PJ_LIBS_DIR)/x264
LIBS_CHECK_$(PJ_HAS_X264) += $(SDK_LIB_DIR)/libx264.so

LIBDIRS_$(PJ_HAS_X265) += $(PJ_LIBS_DIR)/x265
LIBS_CHECK_$(PJ_HAS_X265) += $(SDK_LIB_DIR)/libx265.so

LIBDIRS_$(PJ_HAS_LIBPNG) += $(PJ_LIBS_DIR)/libpng
LIBS_CHECK_$(PJ_HAS_LIBPNG) += $(SDK_LIB_DIR)/libpng.so

#** ffmpeg **
LIBDIRS_$(PJ_HAS_FFMPEG) += $(PJ_LIBS_DIR)/ffmpeg
LIBS_CHECK_$(PJ_HAS_FFMPEG) += $(SDK_LIB_DIR)/libavformat.so $(SDK_LIB_DIR)/libavfilter.so

#** stream **
LIBDIRS_$(PJ_HAS_LIBSRTP) += $(PJ_LIBS_DIR)/libsrtp
LIBS_CHECK_$(PJ_HAS_LIBSRTP) += $(SDK_LIB_DIR)/libsrtp2.so

LIBDIRS_$(PJ_HAS_USTREAM) += $(PJ_LIBS_DIR)/ustream
LIBS_CHECK_$(PJ_HAS_USTREAM) += $(SDK_LIB_DIR)/libustream-ssl.so

LIBDIRS_$(PJ_HAS_BCTOOLBOX) += $(PJ_LIBS_DIR)/bctoolbox
LIBS_CHECK_$(PJ_HAS_BCTOOLBOX) += $(SDK_LIB_DIR)/libbctoolbox.so $(SDK_LIB_DIR)/libbctoolbox-tester.so

LIBDIRS_$(PJ_HAS_ORTP) += $(PJ_LIBS_DIR)/ortp
LIBS_CHECK_$(PJ_HAS_ORTP) += $(SDK_LIB_DIR)/libortp.so

LIBDIRS_$(PJ_HAS_LIBUSRSCTP) += $(PJ_LIBS_DIR)/libusrsctp
LIBS_CHECK_$(PJ_HAS_LIBUSRSCTP) += $(SDK_LIB_DIR)/libusrsctp.so

#** tools (live555) **
LIBDIRS_$(PJ_HAS_LIVE555) += $(PJ_LIBS_DIR)/live555
BINS_CHECK_$(PJ_HAS_LIVE555) += $(SDK_USR_LOCAL_BIN_DIR)/live555MediaServer

#** gstreamer **
LIBDIRS_$(PJ_HAS_GSTREAMER) += $(PJ_LIBS_DIR)/gstreamer
LIBS_CHECK_$(PJ_HAS_GSTREAMER) += $(SDK_LIB_DIR)/libgstreamer-1.0.so $(SDK_LIB_DIR)/libgstbase-1.0.so $(SDK_LIB_DIR)/gstreamer-1.0/gst-plugin-scanner
BINS_CHECK_$(PJ_HAS_GSTREAMER) += $(SDK_BIN_DIR)/gst-launch-1.0

LIBDIRS_$(PJ_HAS_GST_PLUGINS_BASE) += $(PJ_LIBS_DIR)/gst-plugins-base
LIBS_CHECK_$(PJ_HAS_GST_PLUGINS_BASE) += $(SDK_LIB_DIR)/libgstrtp-1.0.so $(SDK_LIB_DIR)/libgstrtsp-1.0.so $(SDK_LIB_DIR)/libgstapp-1.0.so
BINS_CHECK_$(PJ_HAS_GST_PLUGINS_BASE) += $(SDK_BIN_DIR)/gst-play-1.0

LIBDIRS_$(PJ_HAS_GST_PLUGINS_GOOD) += $(PJ_LIBS_DIR)/gst-plugins-good
LIBS_CHECK_$(PJ_HAS_GST_PLUGINS_GOOD) += $(SDK_LIB_DIR)/gstreamer-1.0/libgstaudioparsers.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstrtp.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstrtsp.so

LIBDIRS_$(PJ_HAS_GST_PLUGINS_BAD) += $(PJ_LIBS_DIR)/gst-plugins-bad
LIBS_CHECK_$(PJ_HAS_GST_PLUGINS_BAD) += $(SDK_LIB_DIR)/gstreamer-1.0/libgstsdpelem.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstcurl.so

LIBDIRS_$(PJ_HAS_GST_PLUGINS_UGLY) += $(PJ_LIBS_DIR)/gst-plugins-ugly
LIBS_CHECK_$(PJ_HAS_GST_PLUGINS_UGLY) += $(SDK_LIB_DIR)/gstreamer-1.0/libgstdvdsub.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstdvdlpcmdec.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstasf.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstxingmux.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstrealmedia.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstx264.so

LIBDIRS_$(PJ_HAS_GST_LIBAV) += $(PJ_LIBS_DIR)/gst-libav
LIBS_CHECK_$(PJ_HAS_GST_LIBAV) += $(SDK_LIB_DIR)/gstreamer-1.0/libgstlibav.so

LIBDIRS_$(PJ_HAS_GST_DEVTOOLS) += $(PJ_LIBS_DIR)/gst-devtools
LIBS_CHECK_$(PJ_HAS_GST_DEVTOOLS) += 

LIBDIRS_$(PJ_HAS_GST_RTSP_SERVER) += $(PJ_LIBS_DIR)/gst-rtsp-server
LIBS_CHECK_$(PJ_HAS_GST_RTSP_SERVER) += $(SDK_LIB_DIR)/libgstrtspserver-1.0.so $(SDK_LIB_DIR)/gstreamer-1.0/libgstrtspclientsink.so
BINS_CHECK_$(PJ_HAS_GST_RTSP_SERVER) += $(SDK_BIN_DIR)/test-launch $(SDK_BIN_DIR)/test-video

#** tools **
LIBDIRS_$(PJ_HAS_UCI) += $(PJ_LIBS_DIR)/uci
LIBS_CHECK_$(PJ_HAS_UCI) += $(SDK_LIB_DIR)/libuci.so

LIBDIRS_$(PJ_HAS_UBOX) += $(PJ_LIBS_DIR)/ubox
#LIBS_CHECK_$(PJ_HAS_UBOX) += $(SDK_LIB_DIR)/libvalidate.so
BINS_CHECK_$(PJ_HAS_UBOX) += $(SDK_SBIN_DIR)/logd $(SDK_SBIN_DIR)/logread
#BINS_CHECK_$(PJ_HAS_UBOX) += $(SDK_SBIN_DIR)/validate_data

LIBDIRS_$(PJ_HAS_SWCONFIG) += $(PJ_LIBS_DIR)/swconfig
LIBS_CHECK_$(PJ_HAS_SWCONFIG) += $(SDK_LIB_DIR)/libswconfig.so
BINS_CHECK_$(PJ_HAS_SWCONFIG) += $(SDK_BIN_DIR)/swconfig_123

LIBDIRS_$(PJ_HAS_TINYCBOR) += $(PJ_LIBS_DIR)/tinycbor
LIBS_CHECK_$(PJ_HAS_TINYCBOR) += $(SDK_LIB_DIR)/libtinycbor.so

LIBDIRS_$(PJ_HAS_UNITY) += $(PJ_LIBS_DIR)/Unity
LIBS_CHECK_$(PJ_HAS_UNITY) += $(SDK_LIB_DIR)/libunity.a

LIBDIRS_$(PJ_HAS_CMOCK) += $(PJ_LIBS_DIR)/CMock
LIBS_CHECK_$(PJ_HAS_CMOCK) += $(SDK_LIB_DIR)/libcmock.a

LIBDIRS_$(PJ_HAS_P7ZIP) += $(PJ_LIBS_DIR)/p7zip
BINS_CHECK_$(PJ_HAS_P7ZIP) += $(SDK_ROOT_DIR)/usr/local/bin/7za

LIBDIRS_$(PJ_HAS_LIBICONV) += $(PJ_LIBS_DIR)/libiconv
LIBS_CHECK_$(PJ_HAS_LIBICONV) += $(SDK_LIB_DIR)/libiconv.so

LIBDIRS_$(PJ_HAS_SQLITE) += $(PJ_LIBS_DIR)/sqlite
LIBS_CHECK_$(PJ_HAS_SQLITE) += $(SDK_LIB_DIR)/libsqlite3.so

LIBDIRS_$(PJ_HAS_PYTHON) += $(PJ_LIBS_DIR)/Python
LIBS_CHECK_$(PJ_HAS_PYTHON) += $(SDK_LIB_DIR)/python2.7

#** tools (httpd) **
LIBDIRS_$(PJ_HAS_HTTPD) += $(PJ_LIBS_DIR)/httpd
BINS_CHECK_$(PJ_HAS_HTTPD) += $(SDK_BIN_DIR)/httpd $(SDK_BIN_DIR)/htpasswd

LIBDIRS_$(PJ_HAS_FASTCGI) += $(PJ_LIBS_DIR)/fcgi2
LIBS_CHECK_$(PJ_HAS_FASTCGI) += $(SDK_LIB_DIR)/libfcgi.so $(SDK_LIB_DIR)/libfcgi++.so
BINS_CHECK_$(PJ_HAS_FASTCGI) += $(SDK_BIN_DIR)/cgi-fcgi

#** tools (uHTTPd) **
LIBDIRS_$(PJ_HAS_UHTTPD) += $(PJ_LIBS_DIR)/uHTTPd
BINS_CHECK_$(PJ_HAS_UHTTPD) += $(SDK_BIN_DIR)/uhttpd

#** tools (SIP) **
LIBDIRS_$(PJ_HAS_SPANDSP) += $(PJ_LIBS_DIR)/spandsp
LIBS_CHECK_$(PJ_HAS_SPANDSP) += $(SDK_LIB_DIR)/libspandsp.so

LIBDIRS_$(PJ_HAS_SOFIA_SIP) += $(PJ_LIBS_DIR)/sofia-sip
LIBS_CHECK_$(PJ_HAS_SOFIA_SIP) += $(SDK_LIB_DIR)/libsofia-sip-ua.so $(SDK_LIB_DIR)/libsofia-sip-ua-glib.so

LIBDIRS_$(PJ_HAS_SPEEX) += $(PJ_LIBS_DIR)/speex
LIBS_CHECK_$(PJ_HAS_SPEEX) += $(SDK_LIB_DIR)/libspeex.so $(SDK_LIB_DIR)/libspeexdsp.so

LIBDIRS_$(PJ_HAS_OSIP) += $(PJ_LIBS_DIR)/osip
LIBS_CHECK_$(PJ_HAS_OSIP) += $(SDK_LIB_DIR)/libosip2.so

LIBDIRS_$(PJ_HAS_EXOSIP) += $(PJ_LIBS_DIR)/exosip
LIBS_CHECK_$(PJ_HAS_EXOSIP) += $(SDK_LIB_DIR)/libeXosip2.so

LIBDIRS_$(PJ_HAS_SOFSIP_CLI) += $(PJ_LIBS_DIR)/sofsip-cli
BINS_CHECK_$(PJ_HAS_SOFSIP_CLI) += $(SDK_BIN_DIR)/sofsip_cli

#** tools (baresip) **
LIBDIRS_$(PJ_HAS_LIBRE) += $(PJ_LIBS_DIR)/libre
LIBS_CHECK_$(PJ_HAS_LIBRE) += $(SDK_LIB_DIR)/libre.so

LIBDIRS_$(PJ_HAS_LIBREM) += $(PJ_LIBS_DIR)/librem
LIBS_CHECK_$(PJ_HAS_LIBREM) += $(SDK_LIB_DIR)/librem.so

LIBDIRS_$(PJ_HAS_BARESIP) += $(PJ_LIBS_DIR)/baresip
LIBS_CHECK_$(PJ_HAS_BARESIP) += $(SDK_LIB_DIR)/libbaresip.so
BINS_CHECK_$(PJ_HAS_BARESIP) += $(SDK_BIN_DIR)/baresip

LIBDIRS_$(PJ_HAS_BARESIP_WEBRTC) += $(PJ_LIBS_DIR)/baresip-webrtc
BINS_CHECK_$(PJ_HAS_BARESIP_WEBRTC) += $(SDK_BIN_DIR)/baresip-webrtc

#** tools (OpenSIPS) **
LIBDIRS_$(PJ_HAS_OPENSIPS) += $(PJ_LIBS_DIR)/opensips

#** tools (FreeSWITCH) **
LIBDIRS_$(PJ_HAS_FREESWITCH) += $(PJ_LIBS_DIR)/freeswitch

#** tools (uri) **
LIBDIRS_$(PJ_HAS_URIPARSER) += $(PJ_LIBS_DIR)/uriparser
LIBS_CHECK_$(PJ_HAS_URIPARSER) += $(SDK_LIB_DIR)/liburiparser.so

LIBDIRS_$(PJ_HAS_LIBYUAREL) += $(PJ_LIBS_DIR)/libyuarel
LIBS_CHECK_$(PJ_HAS_LIBYUAREL) += $(SDK_LIB_DIR)/libyuarel.so

#** tools (ssh & dropbear) **
LIBDIRS_$(PJ_HAS_DROPBEAR) += $(PJ_LIBS_DIR)/dropbear
BINS_CHECK_$(PJ_HAS_DROPBEAR) += $(SDK_BIN_DIR)/dropbear

LIBDIRS_$(PJ_HAS_LIBSSH) += $(PJ_LIBS_DIR)/libssh
LIBS_CHECK_$(PJ_HAS_LIBSSH) += $(SDK_LIB_DIR)/libssh.so
BINS_CHECK_$(PJ_HAS_LIBSSH) += $(SDK_BIN_DIR)/scp_download

#** tools (pcap) **
LIBDIRS_$(PJ_HAS_LIPCAP) += $(PJ_LIBS_DIR)/libpcap
LIBS_CHECK_$(PJ_HAS_LIPCAP) += $(SDK_LIB_DIR)/libpcap.so.1.5.3

LIBDIRS_$(PJ_HAS_DAQ) += $(PJ_LIBS_DIR)/daq
LIBS_CHECK_$(PJ_HAS_DAQ) += $(SDK_LIB_DIR)/libdaq.so.2.0.4

#** tools (mdns) **
LIBDIRS_$(PJ_HAS_MDNSRESPONDER) += $(PJ_LIBS_DIR)/mDNSResponder
BINS_CHECK_$(PJ_HAS_MDNSRESPONDER) += $(SDK_BIN_DIR)/mDNSResponder

#** tools (usb) **
LIBDIRS_$(PJ_HAS_EUDEV) += $(PJ_LIBS_DIR)/eudev
LIBS_CHECK_$(PJ_HAS_EUDEV) += $(SDK_LIB_DIR)/libudev.so

LIBDIRS_$(PJ_HAS_LIBUSB) += $(PJ_LIBS_DIR)/libusb
LIBS_CHECK_$(PJ_HAS_LIBUSB) += $(SDK_LIB_DIR)/libusb-1.0.so

LIBDIRS_$(PJ_HAS_LIBUSB_COMPAT) += $(PJ_LIBS_DIR)/libusb-compat
LIBS_CHECK_$(PJ_HAS_LIBUSB_COMPAT) += $(SDK_LIB_DIR)/libusb.so

LIBDIRS_$(PJ_HAS_HIDAPI) += $(PJ_LIBS_DIR)/hidapi
LIBS_CHECK_$(PJ_HAS_HIDAPI) += $(SDK_LIB_DIR)/libhidapi-hidraw.so $(SDK_LIB_DIR)/libhidapi-libusb.so

#** tools (BlueZ) **
LIBDIRS_$(PJ_HAS_BLUEZ) += $(PJ_LIBS_DIR)/BlueZ
LIBS_CHECK_$(PJ_HAS_BLUEZ) += $(SDK_LIB_DIR)/libbluetooth.so
BINS_CHECK_$(PJ_HAS_BLUEZ) += $(SDK_BIN_DIR)/bluetoothctl $(SDK_BIN_DIR)/btmon

#** tools (ZigBee) **
LIBDIRS_$(PJ_HAS_LIBEZSP) += $(PJ_LIBS_DIR)/libezsp
LIBS_CHECK_$(PJ_HAS_LIBEZSP) += $(SDK_LIB_DIR)/libezsp.so $(SDK_LIB_DIR)/libezspspi.so

#** others **
LIBDIRS_$(PJ_HAS_VALGRIND) += $(PJ_LIBS_DIR)/valgrind
ifeq ("$(PJ_TARGET)", "mipsel")
LIBS_CHECK_$(PJ_HAS_VALGRIND) += $(SDK_LIB_DIR)/valgrind/vgpreload_core-mips32-linux.so
else
LIBS_CHECK_$(PJ_HAS_VALGRIND) += $(SDK_LIB_DIR)/valgrind/vgpreload_core-x86-linux.so
endif
BINS_CHECK_$(PJ_HAS_VALGRIND) += $(SDK_BIN_DIR)/valgrind

LIBDIRS_$(PJ_HAS_GDB) += $(PJ_LIBS_DIR)/gdb
BINS_CHECK_$(PJ_HAS_GDB) += $(SDK_BIN_DIR)/gdb $(SDK_BIN_DIR)/gdbserver

LIBDIRS_$(PJ_HAS_CATCH2) += $(PJ_LIBS_DIR)/Catch2

LIBDIRS_$(PJ_HAS_LIBBACKTRACE) += $(PJ_LIBS_DIR)/libbacktrace
LIBS_CHECK_$(PJ_HAS_LIBBACKTRACE) += $(SDK_LIB_DIR)/libbacktrace.so
