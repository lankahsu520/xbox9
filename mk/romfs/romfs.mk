#********************************************************************************
#** ROMFSDIRS_yes - ROMFSDIRS_LIBS_yes (cp XXX to /home) **
#********************************************************************************
ROMFSDIRS_yes=

#** Basic **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBCAP) += $(PJ_LIBS_DIR)/libcap

ROMFSDIRS_LIBS_$(PJ_HAS_LIBTOOL) += $(PJ_LIBS_DIR)/libltdl

#** SSL **
ROMFSDIRS_LIBS_$(PJ_HAS_OPENSSL) += $(PJ_LIBS_DIR)/openssl

ROMFSDIRS_LIBS_$(PJ_HAS_MBEDTLS) += $(PJ_LIBS_DIR)/mbedtls

#** zip **
ROMFSDIRS_LIBS_$(PJ_HAS_ZLIB) += $(PJ_LIBS_DIR)/zlib

ROMFSDIRS_LIBS_$(PJ_HAS_BZIP2) += $(PJ_LIBS_DIR)/bzip2

#** glib **
#ROMFSDIRS_LIBS_$(PJ_HAS_LIBFFI) += $(PJ_LIBS_DIR)/libffi

#ROMFSDIRS_LIBS_$(PJ_HAS_GLIB) += $(PJ_LIBS_DIR)/glib

#ROMFSDIRS_LIBS_$(PJ_HAS_ICU) += $(PJ_LIBS_DIR)/icu

#** boost **
#ROMFSDIRS_LIBS_$(PJ_HAS_BOOST) += $(PJ_LIBS_DIR)/boost

#ROMFSDIRS_LIBS_$(PJ_HAS_BOOST_CMAKE) += $(PJ_LIBS_DIR)/boost-cmake

#ROMFSDIRS_LIBS_$(PJ_HAS_PROTOBUF) += $(PJ_LIBS_DIR)/protobuf

#** gdbm **
#ROMFSDIRS_LIBS_$(PJ_HAS_GDBM) += $(PJ_LIBS_DIR)/gdbm

#ROMFSDIRS_LIBS_$(PJ_HAS_CURVE25519) += $(PJ_LIBS_DIR)/curve25519

#ROMFSDIRS_LIBS_$(PJ_HAS_GMP) += $(PJ_LIBS_DIR)/gmp

#ROMFSDIRS_LIBS_$(PJ_HAS_SIMCLIST) += $(PJ_LIBS_DIR)/simclist

ROMFSDIRS_LIBS_$(PJ_HAS_LOG4CPLUS) += $(PJ_LIBS_DIR)/log4cplus

#** Unit testing framework **
ROMFSDIRS_LIBS_$(PJ_HAS_BCUNIT) += $(PJ_LIBS_DIR)/bcunit

#** yasm **
ROMFSDIRS_LIBS_$(PJ_HAS_YASM) += $(PJ_LIBS_DIR)/yasm

#** libuv **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBUV) += $(PJ_LIBS_DIR)/libuv

ROMFSDIRS_LIBS_$(PJ_HAS_LIBEV) += $(PJ_LIBS_DIR)/libev

#** Netlink **
#ROMFSDIRS_LIBS_$(PJ_HAS_LIBNL_TINY) += $(PJ_LIBS_DIR)/libnl-tiny

#** c-ares **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBCARES) += $(PJ_LIBS_DIR)/libcares

#** busybox **
ROMFSDIRS_LIBS_$(PJ_HAS_BUSYBOX) += $(PJ_LIBS_DIR)/busybox

#** XML, SOAP **
ROMFSDIRS_LIBS_$(PJ_HAS_MXML) += $(PJ_LIBS_DIR)/mxml

#ROMFSDIRS_LIBS_$(PJ_HAS_LIBXML2) += $(PJ_LIBS_DIR)/libxml2

#ROMFSDIRS_LIBS_$(PJ_HAS_LIBROXML) += $(PJ_LIBS_DIR)/libroxml

ROMFSDIRS_LIBS_$(PJ_HAS_EXPAT) += $(PJ_LIBS_DIR)/expat

ROMFSDIRS_LIBS_$(PJ_HAS_EXPAT050) += $(PJ_LIBS_DIR)/expat050

#ROMFSDIRS_LIBS_$(PJ_HAS_LIBSOAP) += $(PJ_LIBS_DIR)/libsoap

#ROMFSDIRS_LIBS_$(PJ_HAS_AXIS2) += $(PJ_LIBS_DIR)/axis2

#ROMFSDIRS_LIBS_$(PJ_HAS_GSOAP) += $(PJ_LIBS_DIR)/gsoap

#** JSON **
ROMFSDIRS_LIBS_$(PJ_HAS_JANSSON) += $(PJ_LIBS_DIR)/jansson

ROMFSDIRS_LIBS_$(PJ_HAS_CJSON) += $(PJ_LIBS_DIR)/cJSON

ROMFSDIRS_LIBS_$(PJ_HAS_JSONC) += $(PJ_LIBS_DIR)/json-c

ROMFSDIRS_LIBS_$(PJ_HAS_JQ) += $(PJ_LIBS_DIR)/jq

ROMFSDIRS_LIBS_$(PJ_HAS_YAJL) += $(PJ_LIBS_DIR)/yajl

ROMFSDIRS_LIBS_$(PJ_HAS_NLOHMANNJSON) += $(PJ_LIBS_DIR)/nlohmann_json

#** MININI **
ROMFSDIRS_LIBS_$(PJ_HAS_MININI) += $(PJ_LIBS_DIR)/minIni

ROMFSDIRS_LIBS_$(PJ_HAS_LIBPSL) += $(PJ_LIBS_DIR)/libpsl

#** config **
#ROMFSDIRS_LIBS_$(PJ_HAS_LIBCONFIG) += $(PJ_LIBS_DIR)/libconfig

#ROMFSDIRS_LIBS_$(PJ_HAS_LIBUUID) += $(PJ_LIBS_DIR)/libuuid

#** ldns **
ROMFSDIRS_LIBS_$(PJ_HAS_LDNS) += $(PJ_LIBS_DIR)/ldns

#** curl **
ROMFSDIRS_LIBS_$(PJ_HAS_CURL) += $(PJ_LIBS_DIR)/curl

#** Libical **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBICAL) += $(PJ_LIBS_DIR)/libical

#** mqtt **
ROMFSDIRS_LIBS_$(PJ_HAS_MOSQUITTO) += $(PJ_LIBS_DIR)/mosquitto

#** websockets **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBWEBSOCKETS) += $(PJ_LIBS_DIR)/libwebsockets

#** ncurses & lua **
ROMFSDIRS_LIBS_$(PJ_HAS_NCURSES) += $(PJ_LIBS_DIR)/ncurses

ROMFSDIRS_LIBS_$(PJ_HAS_READLINE) += $(PJ_LIBS_DIR)/readline

ROMFSDIRS_LIBS_$(PJ_HAS_LUA) += $(PJ_LIBS_DIR)/lua

#** dbus **
ROMFSDIRS_LIBS_$(PJ_HAS_DBUS) += $(PJ_LIBS_DIR)/dbus

ROMFSDIRS_LIBS_$(PJ_HAS_LIBUBOX) += $(PJ_LIBS_DIR)/libubox

ROMFSDIRS_LIBS_$(PJ_HAS_UBUS) += $(PJ_LIBS_DIR)/ubus

#**libzwscene **
#ROMFSDIRS_LIBS_$(PJ_HAS_UDUNITS) += $(PJ_LIBS_DIR)/udunits

#ROMFSDIRS_LIBS_$(PJ_HAS_LIBESMTP) += $(PJ_LIBS_DIR)/libesmtp

#** apache lib **
ROMFSDIRS_LIBS_$(PJ_HAS_APR) += $(PJ_LIBS_DIR)/apr

ROMFSDIRS_LIBS_$(PJ_HAS_APR_UTIL) += $(PJ_LIBS_DIR)/apr-util

ROMFSDIRS_LIBS_$(PJ_HAS_PCRE) += $(PJ_LIBS_DIR)/pcre

#ROMFSDIRS_LIBS_$(PJ_HAS_AVRO) += $(PJ_LIBS_DIR)/avro

#** media **
ROMFSDIRS_LIBS_$(PJ_HAS_ALSA_LIB) += $(PJ_LIBS_DIR)/alsa-lib

ROMFSDIRS_LIBS_$(PJ_HAS_OPUS) += $(PJ_LIBS_DIR)/opus

ROMFSDIRS_LIBS_$(PJ_HAS_PORTAUDIO) += $(PJ_LIBS_DIR)/portaudio

ROMFSDIRS_LIBS_$(PJ_HAS_FLAC) += $(PJ_LIBS_DIR)/flac

ROMFSDIRS_LIBS_$(PJ_HAS_LIBOGG) += $(PJ_LIBS_DIR)/libogg

ROMFSDIRS_LIBS_$(PJ_HAS_LIBVORBIS) += $(PJ_LIBS_DIR)/libvorbis

ROMFSDIRS_LIBS_$(PJ_HAS_LIBSNDFILE) += $(PJ_LIBS_DIR)/libsndfile

ROMFSDIRS_LIBS_$(PJ_HAS_GST_ORC) += $(PJ_LIBS_DIR)/gst-orc

ROMFSDIRS_LIBS_$(PJ_HAS_PULSEAUDIO) += $(PJ_LIBS_DIR)/pulseaudio

ROMFSDIRS_LIBS_$(PJ_HAS_X264) += $(PJ_LIBS_DIR)/x264

ROMFSDIRS_LIBS_$(PJ_HAS_X265) += $(PJ_LIBS_DIR)/x265

ROMFSDIRS_LIBS_$(PJ_HAS_LIBPNG) += $(PJ_LIBS_DIR)/libpng

#** ffmpeg **
ROMFSDIRS_LIBS_$(PJ_HAS_FFMPEG) += $(PJ_LIBS_DIR)/ffmpeg

#** stream **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBSRTP) += $(PJ_LIBS_DIR)/libsrtp

ROMFSDIRS_LIBS_$(PJ_HAS_USTREAM) += $(PJ_LIBS_DIR)/ustream

ROMFSDIRS_LIBS_$(PJ_HAS_BCTOOLBOX) += $(PJ_LIBS_DIR)/bctoolbox

ROMFSDIRS_LIBS_$(PJ_HAS_ORTP) += $(PJ_LIBS_DIR)/ortp

ROMFSDIRS_LIBS_$(PJ_HAS_LIBUSRSCTP) += $(PJ_LIBS_DIR)/libusrsctp

#** tools (live555) **
ROMFSDIRS_LIBS_$(PJ_HAS_LIVE555) += $(PJ_LIBS_DIR)/live555

#** gstreamer **
ROMFSDIRS_LIBS_$(PJ_HAS_GSTREAMER) += $(PJ_LIBS_DIR)/gstreamer

ROMFSDIRS_LIBS_$(PJ_HAS_GST_PLUGINS_BASE) += $(PJ_LIBS_DIR)/gst-plugins-base

ROMFSDIRS_LIBS_$(PJ_HAS_GST_PLUGINS_GOOD) += $(PJ_LIBS_DIR)/gst-plugins-good

ROMFSDIRS_LIBS_$(PJ_HAS_GST_PLUGINS_BAD) += $(PJ_LIBS_DIR)/gst-plugins-bad

ROMFSDIRS_LIBS_$(PJ_HAS_GST_PLUGINS_UGLY) += $(PJ_LIBS_DIR)/gst-plugins-ugly

ROMFSDIRS_LIBS_$(PJ_HAS_GST_LIBAV) += $(PJ_LIBS_DIR)/gst-libav

ROMFSDIRS_LIBS_$(PJ_HAS_GST_DEVTOOLS) += $(PJ_LIBS_DIR)/gst-devtools

ROMFSDIRS_LIBS_$(PJ_HAS_GST_RTSP_SERVER) += $(PJ_LIBS_DIR)/gst-rtsp-server

#** tools **
ROMFSDIRS_LIBS_$(PJ_HAS_UCI) += $(PJ_LIBS_DIR)/uci

ROMFSDIRS_LIBS_$(PJ_HAS_UBOX) += $(PJ_LIBS_DIR)/ubox

ROMFSDIRS_LIBS_$(PJ_HAS_SWCONFIG) += $(PJ_LIBS_DIR)/swconfig

ROMFSDIRS_LIBS_$(PJ_HAS_TINYCBOR) += $(PJ_LIBS_DIR)/tinycbor

ROMFSDIRS_LIBS_$(PJ_HAS_UNITY) += $(PJ_LIBS_DIR)/Unity

ROMFSDIRS_LIBS_$(PJ_HAS_CMOCK) += $(PJ_LIBS_DIR)/CMock

ROMFSDIRS_LIBS_$(PJ_HAS_P7ZIP) += $(PJ_LIBS_DIR)/p7zip

ROMFSDIRS_LIBS_$(PJ_HAS_LIBICONV) += $(PJ_LIBS_DIR)/libiconv

ROMFSDIRS_LIBS_$(PJ_HAS_SQLITE) += $(PJ_LIBS_DIR)/sqlite

ROMFSDIRS_LIBS_$(PJ_HAS_PYTHON) += $(PJ_LIBS_DIR)/Python

#** tools (httpd) **
ROMFSDIRS_LIBS_$(PJ_HAS_HTTPD) += $(PJ_LIBS_DIR)/httpd

ROMFSDIRS_LIBS_$(PJ_HAS_FASTCGI) += $(PJ_LIBS_DIR)/fcgi2

#** tools (uHTTPd) **
ROMFSDIRS_LIBS_$(PJ_HAS_UHTTPD) += $(PJ_LIBS_DIR)/uHTTPd

#** tools (nghttp2) **
ROMFSDIRS_LIBS_$(PJ_HAS_NGHTTP2) += $(PJ_LIBS_DIR)/nghttp2

#** tools (SIP) **
ROMFSDIRS_LIBS_$(PJ_HAS_SPANDSP) += $(PJ_LIBS_DIR)/spandsp

ROMFSDIRS_LIBS_$(PJ_HAS_SOFIA_SIP) += $(PJ_LIBS_DIR)/sofia-sip

ROMFSDIRS_LIBS_$(PJ_HAS_SPEEX) += $(PJ_LIBS_DIR)/speex

ROMFSDIRS_LIBS_$(PJ_HAS_OSIP) += $(PJ_LIBS_DIR)/osip

ROMFSDIRS_LIBS_$(PJ_HAS_EXOSIP) += $(PJ_LIBS_DIR)/exosip

ROMFSDIRS_LIBS_$(PJ_HAS_SOFSIP_CLI) += $(PJ_LIBS_DIR)/sofsip-cli

#** tools (baresip) **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBRE) += $(PJ_LIBS_DIR)/libre

ROMFSDIRS_LIBS_$(PJ_HAS_LIBREM) += $(PJ_LIBS_DIR)/librem

ROMFSDIRS_LIBS_$(PJ_HAS_BARESIP) += $(PJ_LIBS_DIR)/baresip

ROMFSDIRS_LIBS_$(PJ_HAS_BARESIP_WEBRTC) += $(PJ_LIBS_DIR)/baresip-webrtc

#** tools (OpenSIPS) **
ROMFSDIRS_LIBS_$(PJ_HAS_OPENSIPS) += $(PJ_LIBS_DIR)/opensips

#** tools (FreeSWITCH) **
ROMFSDIRS_LIBS_$(PJ_HAS_FREESWITCH) += $(PJ_LIBS_DIR)/freeswitch

#** tools (uri) **
ROMFSDIRS_LIBS_$(PJ_HAS_URIPARSER) += $(PJ_LIBS_DIR)/uriparser

ROMFSDIRS_LIBS_$(PJ_HAS_LIBYUAREL) += $(PJ_LIBS_DIR)/libyuarel

#** tools (ssh & dropbear) **
ROMFSDIRS_LIBS_$(PJ_HAS_DROPBEAR) += $(PJ_LIBS_DIR)/dropbear

ROMFSDIRS_LIBS_$(PJ_HAS_LIBSSH) += $(PJ_LIBS_DIR)/libssh

#** tools (pcap) **
ROMFSDIRS_LIBS_$(PJ_HAS_LIPCAP) += $(PJ_LIBS_DIR)/libpcap

ROMFSDIRS_LIBS_$(PJ_HAS_DAQ) += $(PJ_LIBS_DIR)/daq

#** tools (mdns) **
ROMFSDIRS_LIBS_$(PJ_HAS_MDNSRESPONDER) += $(PJ_LIBS_DIR)/mDNSResponder

#** tools (usb) **
ROMFSDIRS_LIBS_$(PJ_HAS_EUDEV) += $(PJ_LIBS_DIR)/eudev

ROMFSDIRS_LIBS_$(PJ_HAS_LIBUSB) += $(PJ_LIBS_DIR)/libusb

#ROMFSDIRS_LIBS_$(PJ_HAS_LIBUSB_COMPAT) += $(PJ_LIBS_DIR)/libusb-compat

ROMFSDIRS_LIBS_$(PJ_HAS_HIDAPI) += $(PJ_LIBS_DIR)/hidapi

#** tools (BlueZ) **
ROMFSDIRS_LIBS_$(PJ_HAS_BLUEZ) += $(PJ_LIBS_DIR)/BlueZ

#** tools (ZigBee) **
ROMFSDIRS_LIBS_$(PJ_HAS_LIBEZSP) += $(PJ_LIBS_DIR)/libezsp

#** others **
#ROMFSDIRS_LIBS_$(PJ_HAS_VALGRIND) += $(PJ_LIBS_DIR)/valgrind

#ROMFSDIRS_LIBS_$(PJ_HAS_GDB) += $(PJ_LIBS_DIR)/gdb

#ROMFSDIRS_LIBS_$(PJ_HAS_CATCH2) += $(PJ_LIBS_DIR)/Catch2

ROMFSDIRS_LIBS_$(PJ_HAS_LIBBACKTRACE) += $(PJ_LIBS_DIR)/libbacktrace

#********************************************************************************
#** ROMFSDIRS_yes (Lanka) - ROMFSDIRS_LIBS_yes (cp XXX to /home) **
#********************************************************************************
#** tools (utilx9) **
ROMFSDIRS_LIBS_$(PJ_HAS_UTILX9) += $(PJ_LIBS_DIR)/utilx9

#** tools (beeX/mctt) **
ROMFSDIRS_LIBS_$(PJ_HAS_BEEX) += $(PJ_LIBS_DIR)/beeX

#** tools (hornetx/mctt) **
ROMFSDIRS_LIBS_$(PJ_HAS_HORNETX) += $(PJ_LIBS_DIR)/hornetx
ROMFSDIRS_LIBS_$(PJ_HAS_HONEYX) += $(PJ_LIBS_DIR)/honeyx


#********************************************************************************
#** ROMFSDIRS_yes - ROMFSDIRS_USER_yes (cp XXX to /home) **
#********************************************************************************

#** customer (common) **
ROMFSDIRS_USER_$(PJ_HAS_DBUS_HANDLER) += $(PJ_USR_COMMON_DIR)/dbus_handler
ROMFSDIRS_USER_$(PJ_HAS_DBUS_DEMO) += $(PJ_USR_COMMON_DIR)/dbus_demo
ROMFSDIRS_USER_$(PJ_HAS_FCM_DEMO) += $(PJ_USR_COMMON_DIR)/fcm_demo

ROMFSDIRS_USER_$(PJ_HAS_AWS_KVSMARIO) += $(PJ_USR_COMMON_DIR)/kvsMario

#** customer (common) - MQTT & MCTT **
ROMFSDIRS_USER_$(PJ_HAS_QUEEN_BEE) += $(PJ_USR_COMMON_DIR)/queen_bee

ROMFSDIRS_USER_$(PJ_HAS_HONEY_MARKET) += $(PJ_USR_COMMON_DIR)/honey_market

#** customer (common) - UART **
ROMFSDIRS_USER_$(PJ_HAS_URCOMMANDER) += $(PJ_USR_COMMON_DIR)/uRCommander

#** customer (common) - OTA **
ROMFSDIRS_USER_$(PJ_HAS_OTA) += $(PJ_USR_COMMON_DIR)/ota_daemon

#** customer (common) - USB **
ROMFSDIRS_USER_$(PJ_HAS_USBHUNTER) += $(PJ_USR_COMMON_DIR)/usbHunter

#** customer (common) - WEB **
ROMFSDIRS_USER_$(PJ_HAS_FASTCGI) += $(PJ_USR_COMMON_DIR)/fastcgi

ROMFSDIRS_USER_$(PJ_HAS_MOD_IOT) += $(PJ_USR_COMMON_DIR)/mod_iot_api

ROMFSDIRS_USER_$(PJ_HAS_WWW_COMMON) += $(PJ_USR_COMMON_DIR)/www

#** customer (common) - Cloud **
ROMFSDIRS_USER_$(PJ_HAS_ICLOUD) += $(PJ_USR_COMMON_DIR)/icloud

#ROMFSDIRS_USER_yes += $(ROMFSDIRS_USER_yes)


#********************************************************************************
#** ROMFSDIRS_yes - ROMFSDIRS_USER_yes (cp XXX to /home) **
#********************************************************************************
#** vendor/aws **
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_IOT_DEVICE_SDK_EMBEDDED_C) += ${PJ_USR_VENDOR_DIR}/aws/aws-iot-device-sdk-embedded-c
ROMFSDIRS_LIBS_$(PJ_HAS_CORE_MQTT) += ${PJ_USR_VENDOR_DIR}/aws/coreMQTT

ROMFSDIRS_LIBS_$(PJ_HAS_AWS_SDK_CPP) += ${PJ_USR_VENDOR_DIR}/aws/aws-sdk-cpp
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_DOC_SDK_EXAMPLES) += ${PJ_USR_VENDOR_DIR}/aws/aws-doc-sdk-examples
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_DYNAMO) += ${PJ_USR_VENDOR_DIR}/aws/aws_dynamo
ROMFSDIRS_LIBS_$(PJ_HAS_AWSX9) += ${PJ_USR_VENDOR_DIR}/aws/awsX9

ROMFSDIRS_LIBS_$(PJ_HAS_AWS_KVSPIC) += ${PJ_USR_VENDOR_DIR}/aws/kvsPic
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_KVSPRODUCER) += ${PJ_USR_VENDOR_DIR}/aws/kvsProducer
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_KVSSINK) += ${PJ_USR_VENDOR_DIR}/aws/kvsSink
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_KVSWEBRTC) += ${PJ_USR_VENDOR_DIR}/aws/kvsWebrtc
ROMFSDIRS_LIBS_$(PJ_HAS_AWS_KVSWEBRTC_JS) += ${PJ_USR_VENDOR_DIR}/aws/kvsWebrtc-js

ROMFSDIRS_LIBS_$(PJ_HAS_AVS_DEVICE_SDK) += ${PJ_USR_VENDOR_DIR}/aws/avs-device-sdk

#** vendor/ZigBee **
ROMFSDIRS_USER_ZIGBEE_$(PJ_HAS_ZIGBEE_HOST) += ${PJ_USR_VENDOR_DIR}/ZigBee/gecko_sdk_suite
ROMFSDIRS_USER_ZIGBEE_$(PJ_HAS_ZBDAEMON) += ${PJ_USR_VENDOR_DIR}/ZigBee/mosquitto_client_sample

ROMFSDIRS_USER_yes += $(ROMFSDIRS_USER_ZIGBEE_yes)

#** vendor/Z-Wave **
#** vendor/$(PJ_ZWAVE_FOLDER) **
ROMFSDIRS_USER_ZWAVE_$(PJ_HAS_ZIPGATEWAY) += ${PJ_USR_VENDOR_DIR}/$(PJ_ZWAVE_FOLDER)/zipgateway
ROMFSDIRS_USER_ZWAVE_$(PJ_HAS_ZWARE) += ${PJ_USR_VENDOR_DIR}/$(PJ_ZWAVE_FOLDER)/hcapi

ROMFSDIRS_USER_ZWAVE_$(PJ_HAS_ZWECHO) += ${PJ_USR_VENDOR_DIR}/$(PJ_ZWAVE_FOLDER)/zwecho
ROMFSDIRS_USER_ZWAVE_$(PJ_HAS_ZWDAEMON) += ${PJ_USR_VENDOR_DIR}/$(PJ_ZWAVE_FOLDER)/zwdaemon

ROMFSDIRS_USER_yes += $(ROMFSDIRS_USER_ZWAVE_yes)

#** vendor/tiqiaa **
ROMFSDIRS_USER_INFRARED_$(PJ_HAS_IR_DAEMON) += ${PJ_USR_VENDOR_DIR}/tiqiaa/ir_daemon
ROMFSDIRS_USER_yes += $(ROMFSDIRS_USER_INFRARED_yes)

#** user/IoT **
ROMFSDIRS_USER_$(PJ_HAS_USER_IOT) += $(PJ_IOT_FOLDER)


#********************************************************************************
#** ROMFSDIRS_yes - (cp XXX to /home) **
#********************************************************************************
#** all **
ROMFSDIRS_yes += $(ROMFSDIRS_LIBS_yes) $(ROMFSDIRS_USER_yes)
