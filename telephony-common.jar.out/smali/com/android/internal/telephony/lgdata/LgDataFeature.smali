.class public Lcom/android/internal/telephony/lgdata/LgDataFeature;
.super Ljava/lang/Object;
.source "LgDataFeature.java"


# static fields
.field public static final ACG:I = 0x20

.field public static final ATANDT:I = 0x4

.field public static final BELL:I = 0xc

.field public static final CLR:I = 0x13

.field public static final CMCC:I = 0x1b

.field public static final CTC:I = 0x1a

.field public static final CUCC:I = 0x1d

.field public static final DCM:I = 0x3

.field public static final DTAG:I = 0x18

.field public static final HKOPEN:I = 0x1e

.field public static final KDDI:I = 0x8

.field public static final KT:I = 0x5

.field public static LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z = false

.field public static LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z = false

.field public static LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z = false

.field public static LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z = false

.field public static LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z = false

.field public static LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I = 0x0

.field public static LGP_DATA_APN_PPP_DIALING_NUMBER_CTC:Z = false

.field public static LGP_DATA_APN_SELECT_CTC:Z = false

.field public static LGP_DATA_APN_SELECT_KDDI:Z = false

.field public static LGP_DATA_CPA_KDDI:Z = false

.field public static LGP_DATA_CTC_ROAMING:Z = false

.field public static LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z = false

.field public static LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z = false

.field public static LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z = false

.field public static LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z = false

.field public static LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z = false

.field public static LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z = false

.field public static LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z = false

.field public static LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z = false

.field public static LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z = false

.field public static LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z = false

.field public static LGP_DATA_UIAPP_ROAMING_POPUP_CTC:Z = false

.field public static final LGUPLUS:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LgDataFeature"

.field public static final LPP_FEATURE_TYPE_BOOLEAN:I = 0x0

.field public static final LPP_FEATURE_TYPE_BYTE:I = 0x6

.field public static final LPP_FEATURE_TYPE_CHAR:I = 0x7

.field public static final LPP_FEATURE_TYPE_DOUBLE:I = 0x5

.field public static final LPP_FEATURE_TYPE_FLOAT:I = 0x4

.field public static final LPP_FEATURE_TYPE_INTEGER:I = 0x1

.field public static final LPP_FEATURE_TYPE_LONG:I = 0x3

.field public static final LPP_FEATURE_TYPE_OBJECT:I = -0x1

.field public static final LPP_FEATURE_TYPE_SHORT:I = 0x2

.field public static final LPP_FEATURE_TYPE_STRING:I = 0x8

.field public static final MON:I = 0x11

.field public static final MPCS:I = 0x7

.field public static final MPDN_NOTSUPPORT:I = 0x0

.field public static final OPEN:I = 0xf

.field public static final ORG:I = 0x15

.field public static final RGS:I = 0xd

.field public static final SHB:I = 0x10

.field public static final SKT:I = 0x6

.field public static final SPCS:I = 0x9

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_NAME:Ljava/lang/String; = "name"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_VALUE:Ljava/lang/String; = "value"

.field private static final TAG_ROOT:Ljava/lang/String; = "lpp"

.field private static final TAG_ROOT_ATTRIBUTE_MODEL:Ljava/lang/String; = "model"

.field private static final TAG_ROOT_ATTRIBUTE_OPERATOR:Ljava/lang/String; = "operator"

.field private static final TAG_ROOT_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field public static final TCL:I = 0x14

.field public static final TLF:I = 0x19

.field public static final TLS:I = 0xe

.field public static final TMUS:I = 0xb

.field public static final TRF_PP:I = 0x17

.field public static final USC:I = 0x1c

.field public static final VDF:I = 0xa

.field public static final VIV:I = 0x12

.field public static final VZW:I = 0x1

.field public static final VZW_LTE_PP:I = 0x1f

.field public static final VZW_PP:I = 0x16

.field private static final XML_FILENAME:Ljava/lang/String; = "lpp_data"

.field private static sFeatureSet:I

.field public static sFeatureSetName:Ljava/lang/String;

.field private static sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;


# instance fields
.field public FEATURE_DATA_NO_MPDP_CHECK:Z

.field public LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

.field public LGE_DATA_LGU_FIX_DNS_PARSING:Z

.field public LGP_DATA_ACG_ADD_APN_INFO_TO_TELEPHONY_DB:Z

.field public LGP_DATA_ACG_ADD_APN_LIST:Z

.field public LGP_DATA_ACG_SEQUENCE_DETECTOR:Z

.field public LGP_DATA_ACG_SET_APN_DB_FROM_NV:Z

.field public LGP_DATA_APN_ADAPT_AVS_VZW:Z

.field public LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

.field public LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

.field public LGP_DATA_APN_ADD_DUN_TYPE:Z

.field public LGP_DATA_APN_ADD_RCS_TYPE:Z

.field public LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

.field public LGP_DATA_APN_ALLOW_EMPTY_IA_TYPE:Z

.field public LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

.field public LGP_DATA_APN_APNPROVISION_ATT:Z

.field public LGP_DATA_APN_APNSYNC:Z

.field public LGP_DATA_APN_APNSYNC_KR:Z

.field public LGP_DATA_APN_AUTOPROFILE:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

.field public LGP_DATA_APN_AUTOPROFILE_KR:Z

.field public LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

.field public LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

.field public LGP_DATA_APN_BACKUP:Z

.field public LGP_DATA_APN_BACKUP_VZW:Z

.field public LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

.field public LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

.field public LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

.field public LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

.field public LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

.field public LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

.field public LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

.field public LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

.field public LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

.field public LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

.field public LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

.field public LGP_DATA_APN_DO_NOT_HANDLE_HIPRI_WITH_DEFAULT:Z

.field public LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

.field public LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

.field public LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

.field public LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

.field public LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

.field public LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

.field public LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

.field public LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

.field public LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

.field public LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

.field public LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

.field public LGP_DATA_APN_KEEP_PREFERAPN:Z

.field public LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

.field public LGP_DATA_APN_LTE_PCO_VZW:Z

.field public LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

.field public LGP_DATA_APN_MAXCONN_EX_VZW:Z

.field public LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

.field public LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

.field public LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

.field public LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

.field public LGP_DATA_APN_PROFILE_SETTING_KT:Z

.field public LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

.field public LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

.field public LGP_DATA_APN_PROFILE_SETTING_SKT:Z

.field public LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

.field public LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

.field public LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

.field public LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

.field public LGP_DATA_APN_SELECT_KR:Z

.field public LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

.field public LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

.field public LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

.field public LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

.field public LGP_DATA_APN_SUPPORT_EMERGENCY_APN:Z

.field public LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

.field public LGP_DATA_APN_SYNC_MDPN_SPRINT:Z

.field public LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

.field public LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

.field public LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

.field public LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

.field public LGP_DATA_APN_SYNC_PARAMETER:Z

.field public LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

.field public LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

.field public LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

.field public LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

.field public LGP_DATA_APN_USC_DEFAULT_CONFIG_USC:Z

.field public LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

.field public LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

.field public LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

.field public LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

.field public LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

.field public LGP_DATA_ATCMD_NO_READ_ESN:Z

.field public LGP_DATA_ATT_IMS_DAM:Z

.field public LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

.field public LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

.field public LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

.field public LGP_DATA_CLEAR_CAUSE_FOR_TCL:Z

.field public LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_FIX_NETWORK_PREF:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

.field public LGP_DATA_CTC_BLOCK_MMS_OVER_TDLTE:Z

.field public LGP_DATA_CTS_IPV6_PINGTEST:Z

.field public LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

.field public LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

.field public LGP_DATA_DAEMON_NETD_FILE_CLOSE_ON_NATCONTROLLER:Z

.field public LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

.field public LGP_DATA_DATACONNECTION_ABCABC_RETRY:Z

.field public LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

.field public LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

.field public LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

.field public LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

.field public LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_CONNECTION_STATE:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

.field public LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

.field public LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

.field public LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

.field public LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

.field public LGP_DATA_DATACONNECTION_CTS:Z

.field public LGP_DATA_DATACONNECTION_DATACALL:Z

.field public LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Z

.field public LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_ONLY:Z

.field public LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

.field public LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

.field public LGP_DATA_DATACONNECTION_DISCONNECTED_NO_BLOCKED_STATE:Z

.field public LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

.field public LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

.field public LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

.field public LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

.field public LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

.field public LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

.field public LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

.field public LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

.field public LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

.field public LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

.field public LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_DATA_ENABLE_EVENT_MSIM:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

.field public LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

.field public LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

.field public LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

.field public LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

.field public LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

.field public LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

.field public LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

.field public LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

.field public LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

.field public LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

.field public LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

.field public LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

.field public LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

.field public LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

.field public LGP_DATA_DATACONNECTION_NOT_SET_CURRENT_MAX_RETRY_COUNT:Z

.field public LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

.field public LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_PDP_RETRY_CONFIGURATION_TEL_AU:Z

.field public LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

.field public LGP_DATA_DATACONNECTION_PERMANENT_FAIL_TELSTRA:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

.field public LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

.field public LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

.field public LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

.field public LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

.field public LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

.field public LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

.field public LGP_DATA_DATACONNECTION_REG_VOICECALL_EVENT_MSIM:Z

.field public LGP_DATA_DATACONNECTION_RESET_DATA_CONNECTION_WHEN_DCTRACKER_DISPOSE:Z

.field public LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

.field public LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

.field public LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

.field public LGP_DATA_DATACONNECTION_SHARE_DC_WHEN_SAME_APN:Z

.field public LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

.field public LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_KDDI:Z

.field public LGP_DATA_DATACONNECTION_SVLTE:Z

.field public LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

.field public LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_ATT:Z

.field public LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

.field public LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

.field public LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

.field public LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

.field public LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

.field public LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

.field public LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

.field public LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

.field public LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

.field public LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

.field public LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

.field public LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

.field public LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

.field public LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

.field public LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

.field public LGP_DATA_DEBUG_DATABLOCK:Z

.field public LGP_DATA_DEBUG_DATACALL_INFO:Z

.field public LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

.field public LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

.field public LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

.field public LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

.field public LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

.field public LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

.field public LGP_DATA_DEBUG_UPDT:Z

.field public LGP_DATA_DISPLAY_IP_MPDN_KR:Z

.field public LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

.field public LGP_DATA_DORMANT_FD:Z

.field public LGP_DATA_DORMANT_FD_BUGFIX_MPDN:Z

.field public LGP_DATA_DORMANT_FD_HIDDENMENU:Z

.field public LGP_DATA_DORMANT_FD_LGU:Z

.field public LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

.field public LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

.field public LGP_DATA_DUN_NAI_FOR_TETHERING:Z

.field public LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

.field public LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

.field public LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

.field public LGP_DATA_ENV_DCM_SETTINGS:Z

.field public LGP_DATA_ENV_FEATURE_MANAGEMENT:Z

.field public LGP_DATA_ENV_LGSF:Z

.field public LGP_DATA_ENV_SINGLETON:Z

.field public LGP_DATA_IMS_BARRING_UPLUS:Z

.field public LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

.field public LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

.field public LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

.field public LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

.field public LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

.field public LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

.field public LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

.field public LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

.field public LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

.field public LGP_DATA_IMS_KR:Z

.field public LGP_DATA_IMS_PCSCF_RESTORATION:Z

.field public LGP_DATA_IMS_PEND_STARTING_TIME:Z

.field public LGP_DATA_IMS_REMOVE_TFT_UDP_PORT0_UPLUS:Z

.field public LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

.field public LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

.field public LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

.field public LGP_DATA_IPV6_ADDR_ACQUISITION_FAIL_ON_EHRPD:Z

.field public LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

.field public LGP_DATA_KERNEL_CONFIG:Z

.field public LGP_DATA_KERNEL_CONFIG_BIC:Z

.field public LGP_DATA_KERNEL_CRASHFIX_TCP_NUKE_ADDR:Z

.field public LGP_DATA_LTE_ROAMING_LGU:Z

.field public LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

.field public LGP_DATA_MODIFY_NETWORK_TRANSITION_WAKE_LOCK:Z

.field public LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

.field public LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

.field public LGP_DATA_NV_POWER_UP_INIT:Z

.field public LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

.field public LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

.field public LGP_DATA_PDN_ARBITRATION_CONFIG:Z

.field public LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

.field public LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

.field public LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

.field public LGP_DATA_PDN_EMERGENCY_CALL:Z

.field public LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

.field public LGP_DATA_PDN_KEEP_CONNECT_INFO_WHEN_NO_SERVICE:Z

.field public LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

.field public LGP_DATA_PDN_MEAN_TPUT_TLS:Z

.field public LGP_DATA_PDN_MPDN_KR:Z

.field public LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

.field public LGP_DATA_PDN_MPDN_VZW:Z

.field public LGP_DATA_PDN_OTA_UPLUS:Z

.field public LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

.field public LGP_DATA_PDN_QOS_CONFIG_KT:Z

.field public LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

.field public LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

.field public LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

.field public LGP_DATA_PDN_USE_DATA_ROAMING:Z

.field public LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

.field public LGP_DATA_PPP_LINK_CLOSE:Z

.field public LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

.field public LGP_DATA_RIL_BUGFIX_FD_FOR_MPDN:Z

.field public LGP_DATA_RIL_BUGFIX_FD_KT:Z

.field public LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

.field public LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

.field public LGP_DATA_RIL_RESTART_ON_RILERROR:Z

.field public LGP_DATA_SIM_FOR_DUAL_IMSI_TLF_ES:Z

.field public LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

.field public LGP_DATA_SIM_MSIM_DATAUSAGE:Z

.field public LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

.field public LGP_DATA_SIM_MSIM_DDS_HANDLE:Z

.field public LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

.field public LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

.field public LGP_DATA_SRCROUTE_PRIO_SET:Z

.field public LGP_DATA_SUM_PACKET_TRANSFER:Z

.field public LGP_DATA_SUPPORT_NV_MODE:Z

.field public LGP_DATA_TCPIP_DATASCHEDULER:Z

.field public LGP_DATA_TCPIP_DATASCHEDULER_LOGGER:Z

.field public LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

.field public LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

.field public LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

.field public LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

.field public LGP_DATA_TCPIP_DNS_MPDN:Z

.field public LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

.field public LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

.field public LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

.field public LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

.field public LGP_DATA_TCPIP_ENHANCEMENT_OF_RESTRICTED_BACKGROUND_TRAFFIC:Z

.field public LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

.field public LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

.field public LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

.field public LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

.field public LGP_DATA_TCPIP_MTU_CONFIG:Z

.field public LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

.field public LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

.field public LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

.field public LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

.field public LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

.field public LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Z

.field public LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

.field public LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

.field public LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

.field public LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

.field public LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

.field public LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

.field public LGP_DATA_TETHERING_APN_LIST:Z

.field public LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

.field public LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

.field public LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

.field public LGP_DATA_TETHER_CLEAR_IPRULE_FOR_UNTETHERING:Z

.field public LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

.field public LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

.field public LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

.field public LGP_DATA_TETHER_IPV6_SUPPORT:Z

.field public LGP_DATA_TETHER_KEEP_FORWARD_IF_CLAT_ENABLED:Z

.field public LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

.field public LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

.field public LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

.field public LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

.field public LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

.field public LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

.field public LGP_DATA_TOOL_EMUL_RIL:Z

.field public LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

.field public LGP_DATA_TOOL_PING6:Z

.field public LGP_DATA_TOOL_TCPDUMP:Z

.field public LGP_DATA_TOOL_TRACEROUTE:Z

.field public LGP_DATA_TRIGGER_SCRI_ON_IPV6_FOR_V4V6_REQUESTED:Z

.field public LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

.field public LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

.field public LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

.field public LGP_DATA_UIAPP_GPRS_REJECTED:Z

.field public LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

.field public LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

.field public LGP_DATA_UIAPP_MDM_API:Z

.field public LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_KR:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_KT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

.field public LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

.field public LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

.field public LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

.field public LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

.field public LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

.field public LGP_DATA_UMTS_RFC2507_OFF:Z

.field public LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

.field public LGP_DATA_XXXX_YYYYY:Z

.field public LG_DATA_CDMA_DUMMY_APN:Z

.field public MPDNset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    .line 104
    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 1660
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z

    .line 1732
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z

    .line 3171
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    .line 3172
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    .line 3180
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CPA_KDDI:Z

    .line 3191
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    .line 3196
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    .line 3205
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    .line 3213
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z

    .line 3223
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    .line 3232
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    .line 3244
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    .line 3288
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z

    .line 3289
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I

    .line 3466
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    .line 3468
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z

    .line 3476
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z

    .line 3484
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z

    .line 3492
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z

    .line 3500
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z

    .line 3508
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z

    .line 3516
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_ROAMING:Z

    .line 3524
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PPP_DIALING_NUMBER_CTC:Z

    .line 3532
    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_CTC:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "featureset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 108
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_XXXX_YYYYY:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_DCM_SETTINGS:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SHARE_DC_WHEN_SAME_APN:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHERING_APN_LIST:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_ONLY:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

    .line 229
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_FILE_CLOSE_ON_NATCONTROLLER:Z

    .line 243
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

    .line 287
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 308
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 318
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

    .line 329
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

    .line 338
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_DUN_TYPE:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_TCPDUMP:Z

    .line 364
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    .line 371
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

    .line 379
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

    .line 387
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

    .line 411
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

    .line 419
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    .line 428
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

    .line 448
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

    .line 456
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CRASHFIX_TCP_NUKE_ADDR:Z

    .line 464
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 475
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_CONFIG:Z

    .line 483
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

    .line 494
    const-string v0, "persist.lg.data.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DATACALL_INFO:Z

    .line 502
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_PING6:Z

    .line 510
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UMTS_RFC2507_OFF:Z

    .line 518
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

    .line 526
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

    .line 527
    const-string v0, "persist.data.win.test.numeric"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    .line 536
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 537
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 547
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    .line 556
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

    .line 569
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_EMUL_RIL:Z

    .line 577
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 586
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOT_SET_CURRENT_MAX_RETRY_COUNT:Z

    .line 595
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

    .line 606
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_BUGFIX_MPDN:Z

    .line 615
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ABCABC_RETRY:Z

    .line 625
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_SINGLETON:Z

    .line 633
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_MDM_API:Z

    .line 641
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 654
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 661
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

    .line 669
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

    .line 677
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DDS_HANDLE:Z

    .line 685
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE:Z

    .line 694
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DATABLOCK:Z

    .line 703
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

    .line 719
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

    .line 728
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CONFIG:Z

    .line 741
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_FEATURE_MANAGEMENT:Z

    .line 749
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ENHANCEMENT_OF_RESTRICTED_BACKGROUND_TRAFFIC:Z

    .line 756
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Z

    .line 764
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTS_IPV6_PINGTEST:Z

    .line 772
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CTS:Z

    .line 781
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

    .line 791
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 799
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 807
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SRCROUTE_PRIO_SET:Z

    .line 817
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_FIX_NETWORK_PREF:Z

    .line 826
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_UPDT:Z

    .line 835
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ALLOW_EMPTY_IA_TYPE:Z

    .line 844
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAXCONN_EX_VZW:Z

    .line 853
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_LGSF:Z

    .line 867
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_BUGFIX_FD_FOR_MPDN:Z

    .line 876
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TRIGGER_SCRI_ON_IPV6_FOR_V4V6_REQUESTED:Z

    .line 885
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_KEEP_FORWARD_IF_CLAT_ENABLED:Z

    .line 893
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CLEAR_IPRULE_FOR_UNTETHERING:Z

    .line 902
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SUM_PACKET_TRANSFER:Z

    .line 912
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_CONNECTION_STATE:Z

    .line 921
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DISCONNECTED_NO_BLOCKED_STATE:Z

    .line 929
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_TRACEROUTE:Z

    .line 945
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

    .line 947
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

    .line 955
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

    .line 963
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

    .line 971
    const-string v0, "persist.lg.data.datascheduler"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DATASCHEDULER:Z

    .line 981
    const-string v0, "persist.lg.data.datascheduler.l"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DATASCHEDULER_LOGGER:Z

    .line 989
    const-string v0, "persist.lg.data.autoprof.msim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_ENABLE_EVENT_MSIM:Z

    .line 998
    const-string v0, "persist.lg.data.autoprof.msim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REG_VOICECALL_EVENT_MSIM:Z

    .line 1010
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 1018
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 1026
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 1035
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 1043
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 1055
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 1067
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 1076
    const-string v0, "1"

    const-string v3, "persist.lg.data.block_ssdp"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

    .line 1092
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 1104
    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 1112
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 1124
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 1132
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    .line 1140
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 1148
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 1156
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 1164
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    .line 1173
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    .line 1181
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

    .line 1189
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    .line 1197
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DUN_NAI_FOR_TETHERING:Z

    .line 1205
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SUPPORT_NV_MODE:Z

    .line 1213
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    .line 1223
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 1231
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    .line 1239
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_HIDDENMENU:Z

    .line 1247
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    .line 1256
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 1264
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 1272
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 1281
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 1289
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    .line 1297
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 1305
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_EMERGENCY_APN:Z

    .line 1312
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 1319
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    .line 1326
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MODIFY_NETWORK_TRANSITION_WAKE_LOCK:Z

    .line 1334
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 1336
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_KEEP_CONNECT_INFO_WHEN_NO_SERVICE:Z

    .line 1343
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    .line 1350
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 1358
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    .line 1366
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    .line 1374
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    .line 1408
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 1416
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 1425
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Z

    .line 1434
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 1452
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

    .line 1460
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 1469
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 1478
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    .line 1487
    const-string v0, "persist.service.privacy.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 1496
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    .line 1504
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 1512
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 1521
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_BLOCK_MMS_OVER_TDLTE:Z

    .line 1529
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

    .line 1537
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

    .line 1547
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IPV6_ADDR_ACQUISITION_FAIL_ON_EHRPD:Z

    .line 1555
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RESET_DATA_CONNECTION_WHEN_DCTRACKER_DISPOSE:Z

    .line 1569
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

    .line 1579
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

    .line 1589
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

    .line 1597
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

    .line 1605
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

    .line 1613
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

    .line 1628
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    .line 1642
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    .line 1650
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP:Z

    .line 1668
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    .line 1676
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    .line 1684
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DO_NOT_HANDLE_HIPRI_WITH_DEFAULT:Z

    .line 1696
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    .line 1710
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_ATT:Z

    .line 1720
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATT_IMS_DAM:Z

    .line 1740
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

    .line 1748
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

    .line 1756
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

    .line 1767
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    .line 1778
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    .line 1786
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    .line 1794
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Z

    .line 1802
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    .line 1810
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

    .line 1818
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

    .line 1828
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 1836
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    .line 1858
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    .line 1865
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    .line 1877
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

    .line 1885
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    .line 1893
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    .line 1901
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

    .line 1909
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    .line 1928
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    .line 1936
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    .line 1944
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    .line 1952
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    .line 1960
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 1970
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    .line 1978
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    .line 1986
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

    .line 1994
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    .line 2001
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

    .line 2008
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MDPN_SPRINT:Z

    .line 2009
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

    .line 2016
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    .line 2023
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

    .line 2030
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

    .line 2037
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

    .line 2038
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

    .line 2042
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 2051
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 2059
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    .line 2067
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 2075
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 2083
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 2091
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 2099
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 2106
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 2114
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    .line 2123
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 2131
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    .line 2140
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 2148
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 2151
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 2160
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    .line 2168
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 2175
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 2184
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    .line 2193
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    .line 2200
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    .line 2207
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    .line 2215
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    .line 2223
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    .line 2231
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    .line 2239
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    .line 2247
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    .line 2255
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADAPT_AVS_VZW:Z

    .line 2264
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    .line 2273
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    .line 2281
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    .line 2290
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

    .line 2292
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USC_DEFAULT_CONFIG_USC:Z

    .line 2301
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SET_APN_DB_FROM_NV:Z

    .line 2308
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_INFO_TO_TELEPHONY_DB:Z

    .line 2309
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_LIST:Z

    .line 2310
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SEQUENCE_DETECTOR:Z

    .line 2316
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 2322
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 2330
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 2338
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 2346
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 2355
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

    .line 2358
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 2366
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 2375
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

    .line 2383
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 2391
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 2399
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 2407
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 2415
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    .line 2423
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 2431
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 2439
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_KR:Z

    .line 2447
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

    .line 2455
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    .line 2463
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 2471
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 2479
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 2492
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 2505
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

    .line 2519
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 2527
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 2537
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 2545
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_PARAMETER:Z

    .line 2548
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 2560
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    .line 2566
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 2574
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 2582
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CONFIG_BIC:Z

    .line 2590
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 2598
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 2605
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 2613
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    .line 2621
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 2628
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 2636
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 2644
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    .line 2661
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    .line 2669
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    .line 2677
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    .line 2685
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

    .line 2694
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    .line 2702
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

    .line 2710
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

    .line 2718
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    .line 2726
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 2734
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    .line 2742
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 2751
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 2759
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

    .line 2769
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

    .line 2770
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_SKT:Z

    .line 2771
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

    .line 2772
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATCMD_NO_READ_ESN:Z

    .line 2773
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

    .line 2774
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

    .line 2775
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

    .line 2776
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

    .line 2777
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

    .line 2778
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

    .line 2779
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

    .line 2781
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->FEATURE_DATA_NO_MPDP_CHECK:Z

    .line 2783
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

    .line 2784
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

    .line 2796
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    .line 2807
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    .line 2814
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    .line 2821
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    .line 2828
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

    .line 2835
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

    .line 2842
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_QOS_CONFIG_KT:Z

    .line 2850
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_BUGFIX_FD_KT:Z

    .line 2858
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

    .line 2866
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    .line 2874
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    .line 2882
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

    .line 2889
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

    .line 2896
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_KT:Z

    .line 2903
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

    .line 2910
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

    .line 2918
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

    .line 2926
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    .line 2943
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    .line 2951
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_ARBITRATION_CONFIG:Z

    .line 2959
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    .line 2967
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

    .line 2975
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 2983
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 2991
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    .line 2999
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

    .line 3007
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    .line 3015
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    .line 3023
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

    .line 3031
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

    .line 3039
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    .line 3047
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    .line 3058
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    .line 3067
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    .line 3079
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 3087
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 3095
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 3104
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    .line 3112
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_LGU:Z

    .line 3115
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

    .line 3116
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BARRING_UPLUS:Z

    .line 3117
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

    .line 3118
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

    .line 3119
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

    .line 3120
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

    .line 3121
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

    .line 3122
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

    .line 3123
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

    .line 3124
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

    .line 3125
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

    .line 3126
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

    .line 3127
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NV_POWER_UP_INIT:Z

    .line 3128
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATACALL:Z

    .line 3129
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPP_LINK_CLOSE:Z

    .line 3130
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

    .line 3131
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

    .line 3132
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

    .line 3133
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_LGU_FIX_DNS_PARSING:Z

    .line 3134
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

    .line 3135
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_REMOVE_TFT_UDP_PORT0_UPLUS:Z

    .line 3143
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 3153
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

    .line 3163
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    .line 3253
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    .line 3260
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

    .line 3267
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

    .line 3274
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

    .line 3281
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_KDDI:Z

    .line 3294
    const-string v0, "VDF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Z

    .line 3304
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    .line 3321
    const-string v0, "TLF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ES"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TLF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "COM"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Z

    .line 3334
    const-string v0, "TLF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ES"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_FOR_DUAL_IMSI_TLF_ES:Z

    .line 3355
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 3372
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 3384
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 3395
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

    .line 3403
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

    .line 3417
    const-string v0, "TCL"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MX"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CLEAR_CAUSE_FOR_TCL:Z

    .line 3436
    const-string v0, "TEL"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AU"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_TELSTRA:Z

    .line 3446
    const-string v0, "TEL"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AU"

    const-string v3, "ro.build.target_country"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PDP_RETRY_CONFIGURATION_TEL_AU:Z

    .line 3547
    sput-object p1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    .line 3548
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setFeatureSet(Ljava/lang/String;)V

    .line 3549
    return-void

    :cond_2
    move v0, v1

    .line 3321
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 3334
    goto :goto_1

    :cond_4
    move v0, v1

    .line 3417
    goto :goto_2

    :cond_5
    move v0, v1

    .line 3436
    goto :goto_3

    :cond_6
    move v2, v1

    .line 3446
    goto :goto_4
.end method

.method public static getFeatureSet()I
    .locals 1

    .prologue
    .line 3568
    sget v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;
    .locals 3

    .prologue
    .line 3560
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    if-nez v0, :cond_0

    .line 3562
    new-instance v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    const-string v1, "ro.afwdata.LGfeatureset"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 3564
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    return-object v0
.end method

.method private setFeatureSet(Ljava/lang/String;)V
    .locals 10
    .param p1, "featureset"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3572
    const-string v2, "VZWBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3573
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3575
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3576
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    .line 3577
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 3578
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3579
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3580
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 3581
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3582
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3583
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    .line 3584
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    .line 3585
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    .line 3586
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3587
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    .line 3588
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    .line 3589
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3590
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 3591
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3592
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3593
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 3594
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

    .line 3595
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RESET_DATA_CONNECTION_WHEN_DCTRACKER_DISPOSE:Z

    .line 3598
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3599
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 3600
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3601
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 3602
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3603
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 3604
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3605
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3606
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3607
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    .line 3608
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 3609
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    .line 3610
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 3611
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    .line 3612
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    .line 3613
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    .line 3614
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    .line 3615
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    .line 3616
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    .line 3617
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3618
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    .line 3619
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    .line 3620
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    .line 3621
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    .line 3622
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    .line 3623
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    .line 3627
    const-string v2, "persist.data.ePDGMode"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    .line 3629
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 3630
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3631
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    .line 3632
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 3633
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 3634
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3635
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3636
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    .line 3637
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    .line 3649
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    .line 4290
    :cond_0
    :goto_0
    const-string v2, "persist.lg.data.load_feature"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    .line 4294
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    if-ne v2, v5, :cond_2

    .line 4295
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 4297
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    if-ne v2, v5, :cond_3

    .line 4298
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 4301
    :cond_3
    return-void

    .line 3651
    :cond_4
    const-string v2, "VZWBASE_LTE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3652
    const/16 v2, 0x1f

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3654
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3655
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    .line 3656
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 3657
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3658
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3659
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 3660
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3661
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3662
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    .line 3663
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    .line 3664
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    .line 3665
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3666
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    .line 3667
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    .line 3668
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3669
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 3670
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3671
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3672
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 3673
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

    .line 3676
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3677
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 3678
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3679
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 3680
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3681
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 3682
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3683
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3684
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3685
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    .line 3686
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 3687
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    .line 3688
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 3689
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    .line 3690
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    .line 3691
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    .line 3692
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    .line 3693
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    .line 3694
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    .line 3695
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3696
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    .line 3697
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    .line 3698
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    .line 3699
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    .line 3700
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    .line 3701
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    .line 3705
    const-string v2, "persist.data.ePDGMode"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    .line 3707
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 3708
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3709
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    .line 3710
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 3711
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 3712
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3713
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3714
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    .line 3715
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    .line 3727
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    goto/16 :goto_0

    .line 3729
    :cond_5
    const-string v2, "VZWBASE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3730
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    .line 3731
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    .line 3732
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    .line 3733
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3735
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 3736
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3737
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3738
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3739
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3740
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3741
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3742
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3743
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3744
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3745
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DUN_NAI_FOR_TETHERING:Z

    .line 3747
    const/16 v2, 0x16

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 3748
    :cond_6
    const-string v2, "TRFBASE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3749
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    .line 3750
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    .line 3751
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    .line 3752
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 3754
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 3755
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3756
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3757
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3758
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3759
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3760
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3761
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3762
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3763
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3765
    const/16 v2, 0x17

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 3766
    :cond_7
    const-string v2, "ATTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3767
    const/4 v2, 0x4

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3768
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3769
    const-string v2, "persist.lg.data.recovery"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3770
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3771
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3772
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 3773
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    .line 3774
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 3775
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 3776
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    .line 3777
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP:Z

    .line 3778
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z

    .line 3779
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    .line 3780
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    .line 3781
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    .line 3782
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    .line 3783
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 3784
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3785
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3786
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 3787
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    .line 3788
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, "310410"

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    .line 3789
    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3790
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

    .line 3791
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3792
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z

    .line 3794
    :cond_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_ATT:Z

    .line 3795
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    .line 3796
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 3797
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3798
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

    .line 3799
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

    .line 3800
    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 3801
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATT_IMS_DAM:Z

    goto/16 :goto_0

    .line 3802
    :cond_a
    const-string v2, "TMUSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3803
    const/16 v2, 0xb

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3804
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3805
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3806
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3807
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 3808
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 3809
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 3810
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3811
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    .line 3812
    const-string v2, "persist.lgiqc.ext"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    .line 3813
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3814
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    .line 3815
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 3816
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Z

    .line 3817
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3818
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    .line 3819
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

    .line 3820
    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

    .line 3821
    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 3822
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3823
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    .line 3824
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    .line 3825
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    goto/16 :goto_0

    .line 3826
    :cond_b
    const-string v2, "BELLBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3827
    const/16 v2, 0xc

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3828
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3829
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3830
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3831
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3832
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3833
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    goto/16 :goto_0

    .line 3834
    :cond_c
    const-string v2, "RGSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3835
    const/16 v2, 0xd

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3836
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3837
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3838
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3839
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 3840
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    .line 3841
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3842
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3843
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    goto/16 :goto_0

    .line 3844
    :cond_d
    const-string v2, "TLSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3845
    const/16 v2, 0xe

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3846
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3847
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3848
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3849
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    .line 3850
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    .line 3851
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 3852
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    goto/16 :goto_0

    .line 3853
    :cond_e
    const-string v2, "SKTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3854
    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v9, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3856
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3857
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3858
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3859
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3860
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3861
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3862
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3863
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3864
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3865
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3866
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 3867
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3868
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 3872
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 3873
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3874
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3875
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 3876
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3877
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3878
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3879
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3880
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 3881
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3882
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3883
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3884
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    .line 3885
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3886
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 3887
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 3888
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 3889
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 3890
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 3891
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 3892
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 3894
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3895
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 3896
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 3897
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 3898
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 3899
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    .line 3900
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    .line 3901
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 3902
    const-string v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3903
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 3904
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3906
    :cond_f
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3907
    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3908
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3913
    :cond_10
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    .line 3914
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    .line 3915
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 3916
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    .line 3917
    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3918
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 3919
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    .line 3920
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    .line 3921
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    .line 3922
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 3923
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

    .line 3924
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    .line 3925
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    goto/16 :goto_0

    .line 3927
    :cond_11
    const-string v2, "KTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3928
    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3931
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3932
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3933
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3934
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3935
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3936
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 3937
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3938
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3939
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3940
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3941
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 3942
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 3943
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 3947
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 3948
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3949
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 3950
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3951
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3952
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3953
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3954
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3955
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3956
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3957
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3958
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 3959
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 3960
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 3961
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 3962
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 3963
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 3965
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3966
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 3967
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 3968
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 3969
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 3970
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 3971
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    .line 3972
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    .line 3973
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 3974
    const-string v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3975
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 3976
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 3978
    :cond_12
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3979
    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 3980
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3981
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3986
    :cond_13
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 3987
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    .line 3988
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    .line 3989
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    .line 3990
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    .line 3991
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    .line 3992
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    .line 3993
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    .line 3994
    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    goto/16 :goto_0

    .line 3996
    :cond_14
    const-string v2, "LGTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3997
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 3998
    const/4 v0, 0x0

    .line 3999
    .local v0, "isSVLTE":I
    const-string v2, "telephony.lteOnCdmaDevice"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4001
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    .line 4002
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 4003
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 4004
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4005
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 4006
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    .line 4007
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 4008
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 4009
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 4010
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 4011
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 4012
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 4013
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 4014
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    .line 4015
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 4016
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    .line 4017
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 4021
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    .line 4022
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 4023
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 4024
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 4025
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 4026
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 4027
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 4028
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 4029
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 4030
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 4031
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 4032
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 4033
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 4034
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    .line 4035
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    .line 4036
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 4037
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    .line 4038
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    .line 4039
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    .line 4041
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4042
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    .line 4043
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    .line 4044
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    .line 4045
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    .line 4046
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    .line 4047
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    .line 4048
    const-string v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4049
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    .line 4051
    :cond_15
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4052
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4053
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 4054
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    .line 4059
    :cond_16
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    .line 4061
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 4063
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    .line 4064
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 4065
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    .line 4066
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 4067
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    .line 4068
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 4069
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 4070
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    .line 4071
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    .line 4072
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    .line 4073
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    .line 4074
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 4075
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 4076
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    .line 4077
    if-ne v0, v5, :cond_0

    .line 4078
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 4079
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 4080
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 4081
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 4082
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 4083
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    .line 4084
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 4085
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    goto/16 :goto_0

    .line 4087
    .end local v0    # "isSVLTE":I
    :cond_17
    const-string v2, "DCMBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4088
    const/4 v2, 0x3

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4089
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 4090
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    .line 4091
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    goto/16 :goto_0

    .line 4092
    :cond_18
    const-string v2, "MPCSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4093
    const/4 v2, 0x7

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 4094
    :cond_19
    const-string v2, "KDDIBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4095
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4096
    .local v1, "product_model":Ljava/lang/String;
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4097
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 4099
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 4100
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 4101
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    .line 4102
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 4103
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 4104
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 4105
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 4106
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    .line 4107
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4108
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 4109
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 4110
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    .line 4111
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 4112
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4113
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4114
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 4115
    const-string v2, "NOZ"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4116
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 4117
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    .line 4118
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    .line 4119
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 4123
    :cond_1a
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    .line 4124
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    .line 4125
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    .line 4126
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    .line 4127
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    .line 4128
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    .line 4129
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CPA_KDDI:Z

    .line 4130
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    .line 4131
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

    .line 4132
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

    .line 4133
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

    .line 4134
    const-string v2, "NOZ"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4135
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_KDDI:Z

    .line 4139
    :cond_1b
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    .line 4140
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    goto/16 :goto_0

    .line 4141
    .end local v1    # "product_model":Ljava/lang/String;
    :cond_1c
    const-string v2, "SPCSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4142
    const/16 v2, 0x9

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4145
    const/16 v2, 0x9

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 4146
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4147
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 4148
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 4149
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 4150
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4151
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 4152
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 4153
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 4154
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

    .line 4155
    const-string v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4156
    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    .line 4159
    :cond_1d
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

    .line 4160
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

    .line 4161
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    .line 4162
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    .line 4163
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 4164
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

    .line 4165
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    .line 4166
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

    .line 4167
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

    .line 4168
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

    .line 4169
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

    .line 4170
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

    .line 4171
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    .line 4172
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

    .line 4173
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    .line 4174
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    .line 4175
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    .line 4176
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    .line 4177
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    .line 4178
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    .line 4179
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    goto/16 :goto_0

    .line 4181
    :cond_1e
    const-string v2, "USCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4182
    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4184
    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 4185
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 4186
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 4187
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4188
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USC_DEFAULT_CONFIG_USC:Z

    .line 4190
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 4191
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 4194
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

    goto/16 :goto_0

    .line 4196
    :cond_1f
    const-string v2, "ACGBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4197
    const/16 v2, 0x20

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4199
    const/16 v2, 0x20

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 4200
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 4201
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 4202
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4204
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    .line 4205
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 4206
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 4207
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    .line 4209
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SET_APN_DB_FROM_NV:Z

    .line 4210
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_INFO_TO_TELEPHONY_DB:Z

    .line 4211
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_LIST:Z

    .line 4212
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SEQUENCE_DETECTOR:Z

    goto/16 :goto_0

    .line 4214
    :cond_20
    const-string v2, "SHBBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4215
    const/16 v2, 0x10

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 4216
    :cond_21
    const-string v2, "MONBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4217
    const/16 v2, 0x11

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 4218
    :cond_22
    const-string v2, "CMCCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4219
    const/16 v2, 0x1b

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4220
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4221
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4222
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 4223
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 4224
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

    .line 4225
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 4226
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 4227
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4228
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    goto/16 :goto_0

    .line 4229
    :cond_23
    const-string v2, "CUCCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4230
    const/16 v2, 0x1d

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4231
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4232
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4233
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 4234
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 4235
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 4236
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 4237
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4238
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    goto/16 :goto_0

    .line 4239
    :cond_24
    const-string v2, "HKOPENBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4240
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4241
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4242
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4243
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 4244
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 4245
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 4246
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 4247
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4248
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    goto/16 :goto_0

    .line 4249
    :cond_25
    const-string v2, "CTCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4250
    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4251
    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 4252
    const/4 v0, 0x0

    .line 4253
    .restart local v0    # "isSVLTE":I
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4254
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4255
    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4257
    :cond_26
    const-string v2, "telephony.lteOnCdmaDevice"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4258
    if-ne v0, v5, :cond_27

    .line 4260
    :cond_27
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    .line 4261
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    .line 4262
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4263
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z

    .line 4264
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    .line 4265
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z

    .line 4266
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z

    .line 4267
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z

    .line 4268
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z

    .line 4269
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z

    .line 4270
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_ROAMING:Z

    .line 4271
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    .line 4272
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 4273
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4274
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 4275
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 4276
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4277
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    .line 4278
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    .line 4279
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_BLOCK_MMS_OVER_TDLTE:Z

    .line 4280
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PPP_DIALING_NUMBER_CTC:Z

    .line 4281
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_CTC:Z

    .line 4282
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    .line 4283
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IPV6_ADDR_ACQUISITION_FAIL_ON_EHRPD:Z

    goto/16 :goto_0

    .line 4285
    .end local v0    # "isSVLTE":I
    :cond_28
    const/16 v2, 0xf

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4286
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSet()V

    goto/16 :goto_0
.end method

.method private setGlobalCommonFeatureSet()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4304
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

    .line 4305
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 4306
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 4307
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 4308
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    .line 4309
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 4310
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 4311
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    .line 4312
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

    .line 4313
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    .line 4314
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    .line 4315
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    .line 4316
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    .line 4317
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

    .line 4323
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

    .line 4324
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 4325
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    .line 4326
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 4327
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 4328
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    .line 4329
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

    .line 4330
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

    .line 4331
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    .line 4333
    const-string v0, "mtk"

    const-string v1, "ro.lge.chip.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4334
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSetForMTK()V

    .line 4336
    :cond_0
    return-void
.end method

.method private setGlobalCommonFeatureSetForMTK()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4340
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

    .line 4341
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

    .line 4342
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

    .line 4343
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

    .line 4344
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

    .line 4345
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

    .line 4348
    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    .line 4349
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

    .line 4353
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 4354
    return-void

    :cond_0
    move v0, v1

    .line 4348
    goto :goto_0
.end method

.method private writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4381
    if-eqz p2, :cond_0

    const-string v0, "LGP_DATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4383
    :cond_0
    const-string v0, "LgDataFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFeatureAttribute(): Not LPP Data Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    :goto_0
    return-void

    .line 4387
    :cond_1
    const-string v0, "    "

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4388
    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4389
    const-string v0, "name"

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4390
    const-string v0, "type"

    invoke-interface {p1, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4391
    const-string v0, "value"

    invoke-interface {p1, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4392
    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4393
    const-string v0, "\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public deleteFeatureFile()V
    .locals 5

    .prologue
    .line 4585
    const/4 v0, 0x0

    .line 4590
    .local v0, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 4592
    new-instance v1, Ljava/io/File;

    const-string v3, "lpp_data.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4595
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4599
    :goto_0
    return-void

    .line 4596
    :catch_0
    move-exception v2

    .line 4597
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    const-string v4, "deleteFeatureFile(): Error to delte file - lpp_data.xml"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllFeatureNames()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 4605
    const-class v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4606
    .local v4, "lgFeagureFields":[Ljava/lang/reflect/Field;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4607
    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 4609
    .local v5, "name":Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 4611
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4612
    if-eqz v5, :cond_0

    const-string v7, "LGP_DATA"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4609
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4614
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public getBooleanFeatureValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 4664
    const/4 v3, 0x0

    .line 4668
    .local v3, "ret":Z
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4670
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4681
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 4672
    :catch_0
    move-exception v2

    .line 4674
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4676
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 4678
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFeatureValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 4820
    const/4 v3, 0x0

    .line 4824
    .local v3, "ret":Ljava/lang/Object;
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4825
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 4836
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 4827
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 4829
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4831
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 4833
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIntegerFeatureValue(Ljava/lang/String;)I
    .locals 7
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 4716
    const/4 v3, -0x1

    .line 4720
    .local v3, "ret":I
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4722
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4733
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 4724
    :catch_0
    move-exception v2

    .line 4726
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4728
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 4730
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStringFeatureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 4768
    const/4 v4, 0x0

    .line 4772
    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4774
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4785
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v4

    .line 4776
    :catch_0
    move-exception v3

    .line 4778
    .local v3, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringFeatureValue(): There is no such field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4780
    .end local v3    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 4782
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringFeatureValue(): Exception found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 6
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 4632
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4634
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4636
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 4659
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 4637
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 4638
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 4639
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    .line 4640
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_0

    .line 4641
    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_0

    .line 4642
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_0

    .line 4643
    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    goto :goto_0

    .line 4647
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    goto :goto_0

    .line 4650
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 4652
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v3, "LgDataFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType(): There is no such field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4659
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :cond_8
    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 4654
    :catch_1
    move-exception v0

    .line 4656
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType(): Exception found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public loadFeatures()V
    .locals 21

    .prologue
    .line 4486
    const/4 v3, 0x0

    .line 4491
    .local v3, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 4493
    new-instance v6, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4495
    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 4498
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4504
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): Load all features from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 4508
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v15, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4510
    const/16 v16, 0x0

    .line 4511
    .local v16, "type":I
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 4512
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    goto :goto_0

    .line 4499
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .line 4500
    .local v9, "fnfe":Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4580
    .end local v9    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 4515
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_0
    :try_start_2
    const-string v18, "lpp"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 4516
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file does not start with lpp tag."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4564
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catch_1
    move-exception v17

    .line 4565
    .local v17, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error parsing LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4572
    if-eqz v8, :cond_1

    .line 4574
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .end local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    move-object v7, v8

    .line 4580
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 4524
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_2
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 4520
    :cond_3
    :goto_3
    :try_start_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v16

    .line 4521
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 4572
    if-eqz v8, :cond_1

    .line 4574
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 4575
    :catch_2
    move-exception v18

    goto :goto_2

    .line 4527
    :cond_4
    :try_start_7
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 4528
    .local v14, "nodeName":Ljava/lang/String;
    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 4529
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file not well-formed."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4567
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catch_3
    move-exception v4

    .line 4568
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error loading LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4572
    if-eqz v8, :cond_1

    .line 4574
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 4575
    :catch_4
    move-exception v18

    goto :goto_2

    .line 4532
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_5
    const/16 v18, 0x0

    :try_start_a
    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4533
    .local v10, "lpp_name":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4534
    .local v11, "lpp_type":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4535
    .local v12, "lpp_value":Ljava/lang/String;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures():  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getType(Ljava/lang/String;)I

    move-result v5

    .line 4539
    .local v5, "feature_type":I
    if-nez v5, :cond_7

    .line 4541
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 4572
    .end local v5    # "feature_type":I
    .end local v10    # "lpp_name":Ljava/lang/String;
    .end local v11    # "lpp_type":Ljava/lang/String;
    .end local v12    # "lpp_value":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catchall_0
    move-exception v18

    if-eqz v8, :cond_6

    .line 4574
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 4577
    :cond_6
    :goto_4
    throw v18

    .line 4543
    .restart local v5    # "feature_type":I
    .restart local v10    # "lpp_name":Ljava/lang/String;
    .restart local v11    # "lpp_type":Ljava/lang/String;
    .restart local v12    # "lpp_value":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 4547
    :try_start_c
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setIntegerFeatureValue(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 4549
    :catch_5
    move-exception v13

    .line 4551
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    :try_start_d
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): fail to parseInt, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") as "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4554
    .end local v13    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 4556
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4560
    :cond_9
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): fail to set "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") as "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 4575
    .end local v5    # "feature_type":I
    .end local v10    # "lpp_name":Ljava/lang/String;
    .end local v11    # "lpp_type":Ljava/lang/String;
    .end local v12    # "lpp_value":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    .restart local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v18

    goto/16 :goto_2

    .end local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v19

    goto/16 :goto_4
.end method

.method public saveFeatures()V
    .locals 22

    .prologue
    .line 4399
    const/4 v5, 0x0

    .line 4404
    .local v5, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 4406
    new-instance v9, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4408
    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 4411
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4417
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "saveFeatures(): Save all features to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v17

    .line 4422
    .local v17, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v17, :cond_7

    .line 4423
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4424
    const-string v18, "UTF-8"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4425
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4426
    const/16 v18, 0x0

    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4427
    const/16 v18, 0x0

    const-string v19, "model"

    const-string v20, "ro.product.device"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4428
    const/16 v18, 0x0

    const-string v19, "operator"

    const-string v20, "ro.afwdata.LGfeatureset"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4429
    const/16 v18, 0x0

    const-string v19, "version"

    const-string v20, "ro.lge.swversion"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4430
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4432
    const-class v18, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 4434
    .local v15, "lgFeagureFields":[Ljava/lang/reflect/Field;
    move-object v6, v15

    .local v6, "arr$":[Ljava/lang/reflect/Field;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v8, v6, v13

    .line 4435
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_3

    .line 4438
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4439
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "boolean"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4434
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4412
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    .end local v17    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 4413
    .local v10, "fnfe":Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4481
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 4442
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    .restart local v17    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 4443
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "int"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4445
    :catch_1
    move-exception v7

    .line 4446
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4468
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :catch_2
    move-exception v7

    .line 4469
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4473
    if-eqz v12, :cond_2

    .line 4475
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    move-object v11, v12

    .line 4481
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 4450
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :cond_3
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    const-class v19, Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 4451
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "string"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 4456
    :catch_3
    move-exception v7

    .line 4457
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 4473
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v18

    if-eqz v12, :cond_4

    .line 4475
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 4478
    :cond_4
    :goto_4
    throw v18

    .line 4453
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 4454
    .local v16, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "object"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 4462
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "obj":Ljava/lang/Object;
    :cond_6
    const/16 v18, 0x0

    :try_start_b
    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4463
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4464
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4473
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :goto_5
    if-eqz v12, :cond_2

    .line 4475
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 4476
    :catch_4
    move-exception v18

    goto/16 :goto_3

    .line 4466
    :cond_7
    :try_start_d
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures() XmlSerializer is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 4476
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v18

    goto/16 :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v19

    goto :goto_4
.end method

.method public setBooleanFeatureValue(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 4688
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4690
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4692
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 4693
    .local v5, "old":Z
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 4694
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4712
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Z
    :cond_0
    :goto_0
    return-void

    .line 4696
    :catch_0
    move-exception v4

    .line 4698
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4700
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4702
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4704
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4706
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4708
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4710
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBooleanFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFeatureValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 4843
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4845
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4846
    .local v5, "old":Ljava/lang/Object;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4847
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4865
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/Object;
    :goto_0
    return-void

    .line 4849
    :catch_0
    move-exception v4

    .line 4851
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4853
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4855
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4857
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4859
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4861
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4863
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIntegerFeatureValue(Ljava/lang/String;I)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 4740
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4742
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4744
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 4745
    .local v5, "old":I
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 4746
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4764
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":I
    :cond_0
    :goto_0
    return-void

    .line 4748
    :catch_0
    move-exception v4

    .line 4750
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4752
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4754
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4756
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4758
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4760
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4762
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIntegerFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4792
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4794
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4796
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4797
    .local v5, "old":Ljava/lang/String;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4798
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4816
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4800
    :catch_0
    move-exception v4

    .line 4802
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4804
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 4806
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4808
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 4810
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4812
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 4814
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStringFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public test()V
    .locals 8

    .prologue
    .line 4869
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getBooleanFeatureValue(Ljava/lang/String;)Z

    .line 4870
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 1. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4871
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->saveFeatures()V

    .line 4872
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V

    .line 4873
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 2. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    .line 4875
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 3. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getAllFeatureNames()[Ljava/lang/String;

    move-result-object v1

    .line 4878
    .local v1, "features":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4880
    .local v4, "s":Ljava/lang/String;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4882
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4358
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeatureSet Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FeatureSet Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
