#********************************************************************************
#** USER_VENDORDIRS **
#********************************************************************************
#** aws **
USER_VENDORDIRS_$(PJ_HAS_AWS_IOT_DEVICE_SDK_EMBEDDED_C) += $(PJ_USR_VENDOR_DIR)/aws/aws-iot-device-sdk-embedded-c
LIBS_CHECK_$(PJ_HAS_AWS_IOT_DEVICE_SDK_EMBEDDED_C) += $(SDK_LIB_DIR)/libaws_iot_shadow.so $(SDK_LIB_DIR)/libaws_iot_mqtt.so
BINS_CHECK_$(PJ_HAS_AWS_IOT_DEVICE_SDK_EMBEDDED_C) += $(SDK_BIN_DIR)/jobs_demo_mosquitto $(SDK_BIN_DIR)/shadow_demo_main

USER_VENDORDIRS_$(PJ_HAS_CORE_MQTT) += $(PJ_USR_VENDOR_DIR)/aws/coreMQTT
LIBS_CHECK_$(PJ_HAS_CORE_MQTT) += $(SDK_LIB_DIR)/libcore_mqtt_mock.so
BINS_CHECK_$(PJ_HAS_CORE_MQTT) += $(SDK_BIN_DIR)/core_mqtt_serializer_utest $(SDK_BIN_DIR)/core_mqtt_state_utest $(SDK_BIN_DIR)/core_mqtt_utest

USER_VENDORDIRS_$(PJ_HAS_AWS_SDK_CPP) += $(PJ_USR_VENDOR_DIR)/aws/aws-sdk-cpp
LIBS_CHECK_$(PJ_HAS_AWS_SDK_CPP) += $(SDK_LIB_DIR)/libaws-cpp-sdk-dynamodb.so $(SDK_LIB_DIR)/libaws-cpp-sdk-s3.so 
#LIBS_CHECK_$(PJ_HAS_AWS_SDK_CPP) += $(SDK_LIB_DIR)/libaws-cpp-sdk-appconfig.so
BINS_CHECK_$(PJ_HAS_AWS_SDK_CPP) += 

USER_VENDORDIRS_$(PJ_HAS_AWS_DOC_SDK_EXAMPLES) += $(PJ_USR_VENDOR_DIR)/aws/aws-doc-sdk-examples
LIBS_CHECK_$(PJ_HAS_AWS_DOC_SDK_EXAMPLES) +=
BINS_CHECK_$(PJ_HAS_AWS_DOC_SDK_EXAMPLES) += $(SDK_BIN_DIR)/run_list_buckets $(SDK_BIN_DIR)/run_list_tables

USER_VENDORDIRS_$(PJ_HAS_AWS_DYNAMO) += $(PJ_USR_VENDOR_DIR)/aws/aws_dynamo
LIBS_CHECK_$(PJ_HAS_AWS_DYNAMO) += $(SDK_LIB_DIR)/libaws_dynamo.so
BINS_CHECK_$(PJ_HAS_AWS_DYNAMO) += 

USER_VENDORDIRS_$(PJ_HAS_AWSX9) += $(PJ_USR_VENDOR_DIR)/aws/awsX9
LIBS_CHECK_$(PJ_HAS_AWSX9) += $(SDK_LIB_DIR)/libawsx9.so
BINS_CHECK_$(PJ_HAS_AWSX9) += 

USER_VENDORDIRS_$(PJ_HAS_AWS_KVSPIC) += $(PJ_USR_VENDOR_DIR)/aws/kvsPic
LIBS_CHECK_$(PJ_HAS_AWS_KVSPIC) += $(SDK_LIB_DIR)/libkvspic.so $(SDK_LIB_DIR)/libkvspicClient.so $(SDK_LIB_DIR)/libkvspicUtils.so $(SDK_LIB_DIR)/libkvspicState.so

USER_VENDORDIRS_$(PJ_HAS_AWS_KVSPRODUCER) += $(PJ_USR_VENDOR_DIR)/aws/kvsProducer
LIBS_CHECK_$(PJ_HAS_AWS_KVSPRODUCER) += $(SDK_LIB_DIR)/libcproducer.so
LIBS_CHECK_$(PJ_HAS_AWS_KVSPRODUCER) += $(SDK_LIB_DIR)/libkvsCommonCurl.so $(SDK_LIB_DIR)/libkvsCommonLws.so
# amazon-kinesis-video-streams-producer-c-1.2.0
#BINS_CHECK_$(PJ_HAS_AWS_KVSPRODUCER) += $(SDK_BIN_DIR)/kvsAacAudioVideoStreamingSample $(SDK_BIN_DIR)/kvsVideoOnlyStreamingSample
# amazon-kinesis-video-streams-producer-c-1.5.1
BINS_CHECK_$(PJ_HAS_AWS_KVSPRODUCER) += $(SDK_BIN_DIR)/kvsAudioOnlyStreamingSample $(SDK_BIN_DIR)/kvsAudioVideoStreamingSample $(SDK_BIN_DIR)/kvsVideoOnlyOfflineStreamingSample $(SDK_BIN_DIR)/kvsVideoOnlyRealtimeStreamingSample

USER_VENDORDIRS_$(PJ_HAS_AWS_KVSSINK) += $(PJ_USR_VENDOR_DIR)/aws/kvsSink
LIBS_CHECK_$(PJ_HAS_AWS_KVSSINK) += $(SDK_LIB_DIR)/libgstkvssink.so
LIBS_CHECK_$(PJ_HAS_AWS_KVSSINK) += $(SDK_LIB_DIR)/libKinesisVideoProducer.so
LIBS_CHECK_$(PJ_HAS_AWS_KVSSINK) += $(SDK_LIB_DIR)/libcproducer.so

USER_VENDORDIRS_$(PJ_HAS_AWS_KVSWEBRTC) += $(PJ_USR_VENDOR_DIR)/aws/kvsWebrtc
LIBS_CHECK_$(PJ_HAS_AWS_KVSWEBRTC) += $(SDK_LIB_DIR)/libkvsWebrtcClient.so
LIBS_CHECK_$(PJ_HAS_AWS_KVSWEBRTC) += $(SDK_LIB_DIR)/libkvsWebrtcSignalingClient.so
BINS_CHECK_$(PJ_HAS_AWS_KVSWEBRTC) += $(SDK_BIN_DIR)/kvsWebrtcClientMasterGstSample $(SDK_BIN_DIR)/discoverNatBehavior
BINS_CHECK_$(PJ_HAS_AWS_KVSWEBRTC) += $(SDK_BIN_DIR)/kvsWebrtcClientMaster $(SDK_BIN_DIR)/kvsWebrtcClientViewer

USER_VENDORDIRS_$(PJ_HAS_AWS_KVSWEBRTC_JS) += $(PJ_USR_VENDOR_DIR)/aws/kvsWebrtc-js

USER_VENDORDIRS_$(PJ_HAS_AVS_DEVICE_SDK) += $(PJ_USR_VENDOR_DIR)/aws/avs-device-sdk
LIBS_CHECK_$(PJ_HAS_AVS_DEVICE_SDK) += $(SDK_LIB_DIR)/libAVSCommon.so $(SDK_LIB_DIR)/libAVSSystem.so
BINS_CHECK_$(PJ_HAS_AVS_DEVICE_SDK) += $(SDK_BIN_DIR)/SampleApp

