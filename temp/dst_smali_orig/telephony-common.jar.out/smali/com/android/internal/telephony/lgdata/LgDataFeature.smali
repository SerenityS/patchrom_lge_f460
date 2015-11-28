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

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    sput v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CPA_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z

    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_ROAMING:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PPP_DIALING_NUMBER_CTC:Z

    sput-boolean v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_CTC:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "featureset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_XXXX_YYYYY:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_DCM_SETTINGS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SHARE_DC_WHEN_SAME_APN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHERING_APN_LIST:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_ONLY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_FILE_CLOSE_ON_NATCONTROLLER:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_DUN_TYPE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_TCPDUMP:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CRASHFIX_TCP_NUKE_ADDR:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_CONFIG:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

    const-string v0, "persist.lg.data.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DATACALL_INFO:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_PING6:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UMTS_RFC2507_OFF:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

    const-string v0, "persist.data.win.test.numeric"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_EMUL_RIL:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOT_SET_CURRENT_MAX_RETRY_COUNT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_BUGFIX_MPDN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ABCABC_RETRY:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_SINGLETON:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_MDM_API:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DDS_HANDLE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DATABLOCK:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CONFIG:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_FEATURE_MANAGEMENT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ENHANCEMENT_OF_RESTRICTED_BACKGROUND_TRAFFIC:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTS_IPV6_PINGTEST:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CTS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SRCROUTE_PRIO_SET:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_FIX_NETWORK_PREF:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_UPDT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ALLOW_EMPTY_IA_TYPE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAXCONN_EX_VZW:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ENV_LGSF:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_BUGFIX_FD_FOR_MPDN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TRIGGER_SCRI_ON_IPV6_FOR_V4V6_REQUESTED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_KEEP_FORWARD_IF_CLAT_ENABLED:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CLEAR_IPRULE_FOR_UNTETHERING:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SUM_PACKET_TRANSFER:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_CONNECTION_STATE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DISCONNECTED_NO_BLOCKED_STATE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_TRACEROUTE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

    const-string v0, "persist.lg.data.datascheduler"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DATASCHEDULER:Z

    const-string v0, "persist.lg.data.datascheduler.l"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DATASCHEDULER_LOGGER:Z

    const-string v0, "persist.lg.data.autoprof.msim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_ENABLE_EVENT_MSIM:Z

    const-string v0, "persist.lg.data.autoprof.msim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REG_VOICECALL_EVENT_MSIM:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    const-string v0, "1"

    const-string v3, "persist.lg.data.block_ssdp"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DUN_NAI_FOR_TETHERING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SUPPORT_NV_MODE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_HIDDENMENU:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_EMERGENCY_APN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MODIFY_NETWORK_TRANSITION_WAKE_LOCK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_KEEP_CONNECT_INFO_WHEN_NO_SERVICE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    const-string v0, "persist.service.privacy.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_BLOCK_MMS_OVER_TDLTE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IPV6_ADDR_ACQUISITION_FAIL_ON_EHRPD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RESET_DATA_CONNECTION_WHEN_DCTRACKER_DISPOSE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DO_NOT_HANDLE_HIPRI_WITH_DEFAULT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATT_IMS_DAM:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MDPN_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADAPT_AVS_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USC_DEFAULT_CONFIG_USC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SET_APN_DB_FROM_NV:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_INFO_TO_TELEPHONY_DB:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_LIST:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SEQUENCE_DETECTOR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_PARAMETER:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_KERNEL_CONFIG_BIC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATCMD_NO_READ_ESN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->FEATURE_DATA_NO_MPDP_CHECK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_QOS_CONFIG_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_BUGFIX_FD_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_ARBITRATION_CONFIG:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_LGU:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BARRING_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NV_POWER_UP_INIT:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DATACALL:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPP_LINK_CLOSE:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_LGU_FIX_DNS_PARSING:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_REMOVE_TFT_UDP_PORT0_UPLUS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_KDDI:Z

    const-string v0, "VDF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

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

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

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

    sput-object p1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSetName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setFeatureSet(Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4
.end method

.method public static getFeatureSet()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;
    .locals 3

    .prologue
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    const-string v1, "ro.afwdata.LGfeatureset"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

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

    const-string v2, "VZWBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RESET_DATA_CONNECTION_WHEN_DCTRACKER_DISPOSE:Z

    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    const-string v2, "persist.data.ePDGMode"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    :cond_0
    :goto_0
    const-string v2, "persist.lg.data.load_feature"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    if-ne v2, v5, :cond_2

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    if-ne v2, v5, :cond_3

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    :cond_3
    return-void

    :cond_4
    const-string v2, "VZWBASE_LTE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1f

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AUTOPROFILE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_CMD_UPSTREAM_CHANGED_TRIGGER_DEFAULT_WHEN_DISCONNECT_CONNECTIVITY_ACTION:Z

    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USE_DUMMY_PROFILE_IN_SINGLE_PDN_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BEARER_MANAGEMENT_FOR_EMERGENCY_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Z

    const-string v2, "persist.data.ePDGMode"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_EPDG_DUAL_CONNECTIVITY_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DATA_METER_APPLICATION_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    goto/16 :goto_0

    :cond_5
    const-string v2, "VZWBASE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DUN_NAI_FOR_TETHERING:Z

    const/16 v2, 0x16

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    :cond_6
    const-string v2, "TRFBASE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LG_DATA_CDMA_DUMMY_APN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    const/16 v2, 0x17

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    :cond_7
    const-string v2, "ATTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    const-string v2, "persist.lg.data.recovery"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BACKUP:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTIFY_ROAMING_ON_INFO:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, "310410"

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_WINSIZE_TEST_NUMERIC:Ljava/lang/String;

    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Z

    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Z

    :cond_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_ATT:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Z

    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Z

    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ATT_IMS_DAM:Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "TMUSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    const-string v2, "persist.lgiqc.ext"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Z

    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Z

    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_ROUTE_METRIC_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_USE_HIGH_PRIORITY_INTERNET_PDN:Z

    goto/16 :goto_0

    :cond_b
    const-string v2, "BELLBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Z

    goto/16 :goto_0

    :cond_c
    const-string v2, "RGSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    goto/16 :goto_0

    :cond_d
    const-string v2, "TLSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0xe

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    goto/16 :goto_0

    :cond_e
    const-string v2, "SKTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v9, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    const-string v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    :cond_f
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    :cond_10
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    goto/16 :goto_0

    :cond_11
    const-string v2, "KTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    const-string v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    :cond_12
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    :cond_13
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    goto/16 :goto_0

    :cond_14
    const-string v2, "LGTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    const/4 v0, 0x0

    .local v0, "isSVLTE":I
    const-string v2, "telephony.lteOnCdmaDevice"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_RESTART_NONE_DEFAULT_PDP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_APNSYNC_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Z

    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Z

    const-string v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    :cond_15
    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    :cond_16
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    if-ne v0, v5, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    goto/16 :goto_0

    .end local v0    # "isSVLTE":I
    :cond_17
    const-string v2, "DCMBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x3

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    goto/16 :goto_0

    :cond_18
    const-string v2, "MPCSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x7

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    :cond_19
    const-string v2, "KDDIBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "product_model":Ljava/lang/String;
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    const-string v2, "NOZ"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE_RGS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    :cond_1a
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CPA_KDDI:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Z

    const-string v2, "NOZ"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_KDDI:Z

    :cond_1b
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    goto/16 :goto_0

    .end local v1    # "product_model":Ljava/lang/String;
    :cond_1c
    const-string v2, "SPCSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v2, 0x9

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    const/16 v2, 0x9

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Z

    const-string v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Z

    :cond_1d
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV_DEBUG_MESSAGE:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    goto/16 :goto_0

    :cond_1e
    const-string v2, "USCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USC_DEFAULT_CONFIG_USC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Z

    goto/16 :goto_0

    :cond_1f
    const-string v2, "ACGBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x20

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    const/16 v2, 0x20

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SET_APN_DB_FROM_NV:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_INFO_TO_TELEPHONY_DB:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_ADD_APN_LIST:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_ACG_SEQUENCE_DETECTOR:Z

    goto/16 :goto_0

    :cond_20
    const-string v2, "SHBBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v2, 0x10

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    :cond_21
    const-string v2, "MONBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0x11

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    :cond_22
    const-string v2, "CMCCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x1b

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    goto/16 :goto_0

    :cond_23
    const-string v2, "CUCCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v2, 0x1d

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    goto/16 :goto_0

    :cond_24
    const-string v2, "HKOPENBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    goto/16 :goto_0

    :cond_25
    const-string v2, "CTCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    const/4 v0, 0x0

    .restart local v0    # "isSVLTE":I
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    const-string v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    :cond_26
    const-string v2, "telephony.lteOnCdmaDevice"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_27

    :cond_27
    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DUMMY_APN_FOR_SKT_TEST_CT:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MAKE_CLONE_APN_FOR_MSIM_CT:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_ROAMING:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CTC_BLOCK_MMS_OVER_TDLTE:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_PPP_DIALING_NUMBER_CTC:Z

    sput-boolean v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_CTC:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IPV6_ADDR_ACQUISITION_FAIL_ON_EHRPD:Z

    goto/16 :goto_0

    .end local v0    # "isSVLTE":I
    :cond_28
    const/16 v2, 0xf

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSet()V

    goto/16 :goto_0
.end method

.method private setGlobalCommonFeatureSet()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DORMANT_DISABLE_FD_IN_PRE_R8:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Z

    const-string v0, "mtk"

    const-string v1, "ro.lge.chip.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSetForMTK()V

    :cond_0
    return-void
.end method

.method private setGlobalCommonFeatureSetForMTK()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_DO_NOT_TRYSETUP_DURING_WIFI_ON_GEMINI:Z

    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_ALWAYSON_ATTACH_DDS_SIM:Z

    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_MTK_SUPPORT:Z

    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_DATAUSAGE_GEMINI:Z

    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_SIM_MSIM_PREFERRED_DATA_SUBSCRIPTION_ON_GEMINI:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Z

    const-string v2, "persist.lg.data.autoprof.msim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HANDLE_PACKET_SAMPLING_TIMER:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    return-void

    :cond_0
    move v0, v1

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

    if-eqz p2, :cond_0

    const-string v0, "LGP_DATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :goto_0
    return-void

    :cond_1
    const-string v0, "    "

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "name"

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "type"

    invoke-interface {p1, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    invoke-interface {p1, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public deleteFeatureFile()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v3, "lpp_data.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    const-string v4, "deleteFeatureFile(): Error to delte file - lpp_data.xml"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllFeatureNames()[Ljava/lang/String;
    .locals 8

    .prologue
    const-class v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .local v4, "lgFeagureFields":[Ljava/lang/reflect/Field;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

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

    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, "LGP_DATA"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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
    const/4 v3, 0x0

    .local v3, "ret":Z
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v2

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

    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

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
    const/4 v3, 0x0

    .local v3, "ret":Ljava/lang/Object;
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v2

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

    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

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
    const/4 v3, -0x1

    .local v3, "ret":I
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v2

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

    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

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
    const/4 v4, 0x0

    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

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

    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v3

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

    .end local v3    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

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
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v3

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

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    goto :goto_0

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

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

    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :cond_8
    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

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
    const/4 v3, 0x0

    .local v3, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

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

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v15, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v16, 0x0

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

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    goto :goto_0

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .local v9, "fnfe":Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v9    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

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

    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file does not start with lpp tag."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catch_1
    move-exception v17

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

    if-eqz v8, :cond_1

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .end local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

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

    :cond_3
    :goto_3
    :try_start_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    if-eqz v8, :cond_1

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v18

    goto :goto_2

    :cond_4
    :try_start_7
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .local v14, "nodeName":Ljava/lang/String;
    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file not well-formed."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catch_3
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error loading LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_1

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    :catch_4
    move-exception v18

    goto :goto_2

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

    .local v10, "lpp_name":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "lpp_type":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

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

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getType(Ljava/lang/String;)I

    move-result v5

    .local v5, "feature_type":I
    if-nez v5, :cond_7

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

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_4
    throw v18

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

    :catch_5
    move-exception v13

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

    .end local v13    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

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
    const/4 v5, 0x0

    .local v5, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v9, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x0

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

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v17

    .local v17, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v17, :cond_7

    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v18, "UTF-8"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "model"

    const-string v20, "ro.product.device"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "operator"

    const-string v20, "ro.afwdata.LGfeatureset"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "version"

    const-string v20, "ro.lge.swversion"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-class v18, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v15

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

    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_3

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

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

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

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

    .local v10, "fnfe":Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

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

    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_2

    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

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

    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v18

    if-eqz v12, :cond_4

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_4
    throw v18

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

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "obj":Ljava/lang/Object;
    :cond_6
    const/16 v18, 0x0

    :try_start_b
    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :goto_5
    if-eqz v12, :cond_2

    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v18

    goto/16 :goto_3

    :cond_7
    :try_start_d
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures() XmlSerializer is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

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
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

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

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "old":Z
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Z
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

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

    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

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

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

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

    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

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
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "old":Ljava/lang/Object;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/Object;
    :goto_0
    return-void

    :catch_0
    move-exception v4

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

    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

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

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

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

    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

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
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

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

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .local v5, "old":I
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

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

    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

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

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

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

    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

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
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

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

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "old":Ljava/lang/String;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

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

    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

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

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

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

    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

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
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getBooleanFeatureValue(Ljava/lang/String;)Z

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

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->saveFeatures()V

    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V

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

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

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

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getAllFeatureNames()[Ljava/lang/String;

    move-result-object v1

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
