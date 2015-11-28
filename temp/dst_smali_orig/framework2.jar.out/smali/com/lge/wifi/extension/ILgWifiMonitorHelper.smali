.class public interface abstract Lcom/lge/wifi/extension/ILgWifiMonitorHelper;
.super Ljava/lang/Object;
.source "ILgWifiMonitorHelper.java"


# static fields
.field public static final BASE:I = 0x24000

.field public static final HS20_ANQP_3GPP_CONNECT_EVENT:I = 0x24034

.field public static final HS20_ANQP_FETCH_START_EVENT:I = 0x24030

.field public static final HS20_ANQP_FETCH_SUCCESS_EVENT:I = 0x24031

.field public static final HS20_ANQP_RC_CONNECT_EVENT:I = 0x24035

.field public static final HS20_ANQP_RX_DATA_EVENT:I = 0x24032

.field public static final HS20_ANQP_TLS_CONNECT_EVENT:I = 0x24036

.field public static final HS20_AP_EVENT:I = 0x2402d

.field public static final HS20_GAS_RESP_INFO_EVENT:I = 0x2402f

.field public static final HS20_NO_MATCH_EVENT:I = 0x2402e

.field public static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_RX_DATA_EVENT:I = 0x24033

.field public static final INTERWORKING_PREFIX_STR:Ljava/lang/String; = "INTERWORKING-"

.field public static final WAPI_AUTHENTICATION_FAILURE_EVENT:I = 0x2400e

.field public static final WAPI_CERTIFICATION_FAILURE_EVENT:I = 0x2400f

.field public static final WIFI_AUTO_CONNECT_EVENT:I = 0x2400d


# virtual methods
.method public abstract convertEapEventToLge(Ljava/lang/String;)I
.end method

.method public abstract handleConnectPolicyEvent(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end method

.method public abstract handleInterworkingEvent(Ljava/lang/String;Lcom/android/internal/util/StateMachine;)V
.end method

.method public abstract handleLgeEvent(ILjava/lang/String;)V
.end method

.method public abstract handleWAPIEvent(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end method
