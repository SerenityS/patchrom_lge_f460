.class public Landroid/net/CaptivePortalTracker;
.super Lcom/android/internal/util/StateMachine;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalTracker$LGInternetCheckState;,
        Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;,
        Landroid/net/CaptivePortalTracker$ActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$NoActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$DefaultState;,
        Landroid/net/CaptivePortalTracker$ProvisioningObserver;
    }
.end annotation


# static fields
.field public static final ACTION_CAPTIVE_NETWORK_DETECTED:Ljava/lang/String; = "android.net.conn.CAPTIVE_NETWORK_DETECTED"

.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final CMD_CONNECTIVITY_CHANGE:I = 0x1

.field private static final CMD_DELAYED_CAPTIVE_CHECK:I = 0x2

.field private static final CMD_DETECT_PORTAL:I = 0x0

.field private static final CMD_INTERNET_CHECK:I = 0x3

.field private static final CONFIG_LGE_WLAN_DCF:Z

.field private static final DBG:Z = true

.field private static final DEFAULT_INTERNET_CHECK_SERVER:Ljava/lang/String; = "maps.google.com"

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static DELAYED_CHECK_INTERVAL_MS:I = 0x0

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_RESULT_STATUS:Ljava/lang/String; = "resultStatus"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final HTTP_PROTOCOL_ERROR_RESPONSE_CODE:I = 0x190

.field private static final IMMEDIATE_CHECK_INTERVAL_MS:I = 0x5dc

.field private static final INTERNET_CHECKED_ERROR:I = -0x2

.field private static final INTERNET_CHECKED_NOT_OPERATED:I = -0x3

.field private static final INTERNET_CHECKED_OK:I = 0x0

.field private static final INTERNET_CHECKED_SUSPECT_CAPTIVE:I = -0x1

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CaptivePortalTracker"

.field public static final WIFI_CAPTIVE_ICD_CHECK_COMPLETED_ACTION:Ljava/lang/String; = "android.net.wifi.CAPTIVE_ICD_CHECK_COMPLETED"

.field private static previous_used_icd_server:Ljava/net/InetAddress;


# instance fields
.field private mActiveNetworkState:Lcom/android/internal/util/State;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

.field private mDelayedCheckToken:I

.field private mDeviceProvisioned:Z

.field private mInternetCheckServer:Ljava/lang/String;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mLGInternetCheckState:Lcom/android/internal/util/State;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoActiveNetworkState:Lcom/android/internal/util/State;

.field private mPreviousWifiStateConnected:Z

.field private mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    const/16 v0, 0x2710

    sput v0, Landroid/net/CaptivePortalTracker;->DELAYED_CHECK_INTERVAL_MS:I

    .line 123
    const-string/jumbo v0, "wlan.lge.dcf.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/CaptivePortalTracker;->CONFIG_LGE_WLAN_DCF:Z

    .line 125
    sget-boolean v0, Landroid/net/CaptivePortalTracker;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v0, :cond_0

    .line 126
    const/16 v0, 0x1388

    sput v0, Landroid/net/CaptivePortalTracker;->DELAYED_CHECK_INTERVAL_MS:I

    .line 149
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Landroid/net/CaptivePortalTracker;->previous_used_icd_server:Ljava/net/InetAddress;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 159
    const-string v1, "CaptivePortalTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 105
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 130
    iput v3, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    .line 132
    new-instance v1, Landroid/net/CaptivePortalTracker$DefaultState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 133
    new-instance v1, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    .line 134
    new-instance v1, Landroid/net/CaptivePortalTracker$ActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    .line 135
    new-instance v1, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    .line 138
    new-instance v1, Landroid/net/CaptivePortalTracker$LGInternetCheckState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$LGInternetCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mLGInternetCheckState:Lcom/android/internal/util/State;

    .line 148
    iput-object v4, p0, Landroid/net/CaptivePortalTracker;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    .line 151
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mPreviousWifiStateConnected:Z

    .line 155
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    .line 221
    new-instance v1, Landroid/net/CaptivePortalTracker$1;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$1;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 163
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 164
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 165
    new-instance v1, Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$ProvisioningObserver;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_server"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "clients3.google.com"

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 181
    :cond_0
    const-string v1, "clients3.google.com"

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mInternetCheckServer:Ljava/lang/String;

    .line 183
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_1

    .line 184
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    .line 185
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    if-nez v1, :cond_1

    .line 186
    const-string v1, "2lee WifiServiceExt is NULL."

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_detection_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 194
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;)V

    .line 195
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 196
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 199
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mLGInternetCheckState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 202
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 203
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 204
    return-void

    :cond_2
    move v1, v3

    .line 191
    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->isForcedICDCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 77
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/CaptivePortalTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/CaptivePortalTracker;)Lcom/lge/wifi/extension/IWifiServiceExtension;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/net/CaptivePortalTracker;->previous_used_icd_server:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$1902(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Ljava/net/InetAddress;

    .prologue
    .line 77
    sput-object p0, Landroid/net/CaptivePortalTracker;->previous_used_icd_server:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mLGInternetCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->setNotificationOff()V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$4204(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$4300()I
    .locals 1

    .prologue
    .line 77
    sget v0, Landroid/net/CaptivePortalTracker;->DELAYED_CHECK_INTERVAL_MS:I

    return v0
.end method

.method static synthetic access$4400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mInternetCheckServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Landroid/net/CaptivePortalTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$6100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isInternetOK(Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mPreviousWifiStateConnected:Z

    return v0
.end method

.method static synthetic access$802(Landroid/net/CaptivePortalTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mPreviousWifiStateConnected:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isActiveNetwork(Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 602
    :try_start_0
    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 603
    .local v0, "active":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 604
    const/4 v2, 0x1

    .line 609
    .end local v0    # "active":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 609
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 19
    .param p1, "server"    # Ljava/net/InetAddress;

    .prologue
    .line 628
    const/16 v18, 0x0

    .line 629
    .local v18, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 674
    :cond_0
    :goto_0
    return v3

    .line 631
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/CaptivePortalTrackerInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 633
    const-wide/16 v4, -0x1

    .line 635
    .local v4, "requestTimestamp":J
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 636
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v18, v0

    .line 637
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 638
    const/16 v1, 0x2710

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 639
    const/16 v1, 0x2710

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 640
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 645
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 651
    .local v6, "responseTimestamp":J
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 652
    .local v16, "rspCode":I
    const/16 v1, 0xcc

    move/from16 v0, v16

    if-eq v0, v1, :cond_2

    const/4 v3, 0x1

    .line 654
    .local v3, "isCaptivePortal":Z
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCaptivePortal: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    if-eqz v18, :cond_0

    .line 677
    .end local v3    # "isCaptivePortal":Z
    .end local v6    # "responseTimestamp":J
    .end local v16    # "rspCode":I
    .end local v17    # "url":Ljava/net/URL;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 652
    .restart local v6    # "responseTimestamp":J
    .restart local v16    # "rspCode":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 661
    .end local v6    # "responseTimestamp":J
    .end local v16    # "rspCode":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v15

    .line 662
    .local v15, "e":Ljava/net/ProtocolException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCaptivePortal Maybe Captive portal: ProtocolException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 665
    .restart local v6    # "responseTimestamp":J
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v8, p0

    move-wide v11, v4

    move-wide v13, v6

    invoke-direct/range {v8 .. v14}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 667
    const/4 v3, 0x1

    .line 676
    if-eqz v18, :cond_0

    goto :goto_2

    .line 669
    .end local v6    # "responseTimestamp":J
    .end local v15    # "e":Ljava/net/ProtocolException;
    :catch_1
    move-exception v15

    .line 670
    .local v15, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Probably not a portal: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 671
    const-wide/16 v1, -0x1

    cmp-long v1, v4, v1

    if-eqz v1, :cond_3

    .line 672
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :cond_3
    const/4 v3, 0x0

    .line 676
    if-eqz v18, :cond_0

    goto :goto_2

    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v18, :cond_4

    .line 677
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 676
    :cond_4
    throw v1
.end method

.method private isForcedICDCheck()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 738
    const-string/jumbo v3, "net.lgicd"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 739
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isInternetOK(Ljava/net/InetAddress;)I
    .locals 13
    .param p1, "server"    # Ljava/net/InetAddress;

    .prologue
    const/4 v10, -0x1

    .line 684
    const/4 v8, 0x0

    .line 685
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    iget-boolean v9, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    if-nez v9, :cond_1

    move v6, v10

    .line 723
    :cond_0
    :goto_0
    return v6

    .line 687
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/generate_204"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 688
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LGLWD][isInternetOK] Checking "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 689
    const-wide/16 v2, -0x1

    .line 691
    .local v2, "requestTimestamp":J
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 692
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 693
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 694
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 695
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 696
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 701
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 707
    .local v4, "responseTimestamp":J
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 713
    .local v6, "rspCode":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LGLWD] isCaptivePortal: rspCode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    if-eqz v8, :cond_0

    .line 726
    .end local v4    # "responseTimestamp":J
    .end local v6    # "rspCode":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 715
    :catch_0
    move-exception v1

    .line 716
    .local v1, "e":Ljava/net/ProtocolException;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LGLWD]Probably not a portal: ProtocolException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 717
    const/16 v6, 0x190

    .line 725
    if-eqz v8, :cond_0

    goto :goto_1

    .line 718
    .end local v1    # "e":Ljava/net/ProtocolException;
    :catch_1
    move-exception v1

    .line 719
    .local v1, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LGLWD]Probably not a portal: exception "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 720
    const-wide/16 v11, -0x1

    cmp-long v9, v2, v11

    if-eqz v9, :cond_2

    .line 721
    invoke-direct {p0, v2, v3}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :cond_2
    if-eqz v8, :cond_3

    .line 726
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v6, v10

    .line 723
    goto/16 :goto_0

    .line 725
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 726
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 725
    :cond_4
    throw v9
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 9
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 754
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 760
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 761
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 765
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 755
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 757
    goto :goto_1

    .line 760
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 765
    goto :goto_1
.end method

.method public static makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 255
    new-instance v0, Landroid/net/CaptivePortalTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/CaptivePortalTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 256
    .local v0, "captivePortal":Landroid/net/CaptivePortalTracker;
    invoke-virtual {v0}, Landroid/net/CaptivePortalTracker;->start()V

    .line 257
    return-object v0
.end method

.method private notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 580
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPortalCheckComplete: ni="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 593
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPortalCheckCompleted: captive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ni="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFailedCaptivePortalCheckBroadcast(J)V
    .locals 7
    .param p1, "requestTimestampMs"    # J

    .prologue
    const/4 v1, 0x0

    .line 769
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 771
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 13
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 779
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_scan_always_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    .line 781
    const-string v10, "Don\'t send network conditions - lacking user consent."

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v7, "latencyBroadcast":Landroid/content/Intent;
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 798
    :pswitch_0
    const-string v10, "extra_network_type"

    iget-object v11, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    .line 800
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_0

    .line 801
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v9, "uniqueCellId":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 803
    .local v8, "numRegisteredCellInfo":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 804
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 805
    add-int/lit8 v8, v8, 0x1

    .line 806
    const/4 v10, 0x1

    if-le v8, v10, :cond_6

    .line 807
    const-string/jumbo v10, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "numRegisteredCellInfo":I
    .end local v9    # "uniqueCellId":Ljava/lang/StringBuffer;
    :pswitch_1
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 789
    .local v4, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_5

    .line 790
    const-string v10, "extra_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v10, "extra_bssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v10, "extra_connectivity_type"

    iget-object v11, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    const-string v10, "extra_response_received"

    invoke-virtual {v7, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    const-string v10, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 837
    if-eqz p1, :cond_4

    .line 838
    const-string v10, "extra_is_captive_portal"

    invoke-virtual {v7, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    const-string v10, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v7, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 841
    :cond_4
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v10, v7, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 793
    .restart local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    const-string/jumbo v10, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "numRegisteredCellInfo":I
    .restart local v9    # "uniqueCellId":Ljava/lang/StringBuffer;
    :cond_6
    instance-of v10, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v10, :cond_7

    .line 812
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 813
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 814
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_7
    instance-of v10, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_8

    .line 815
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 816
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 817
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v10, v3, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_9

    .line 818
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 819
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 820
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v10, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_a

    .line 821
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 822
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 824
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    const-string v10, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setNotificationOff()V
    .locals 6

    .prologue
    .line 614
    :try_start_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotificationOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public detectCaptivePortal(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/net/CaptivePortalTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/CaptivePortalTracker;->sendMessage(Landroid/os/Message;)V

    .line 262
    return-void
.end method

.method public isOptimizedWifiEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 732
    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    const-string/jumbo v2, "wlan.lge.dcf.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    .local v0, "mDCFEnabled":Z
    :goto_0
    return v0

    .end local v0    # "mDCFEnabled":Z
    :cond_0
    move v0, v1

    .line 732
    goto :goto_0
.end method

.method public sendIntentInternetCheckComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CAPTIVE_ICD_CHECK_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGLWD] Send Internet Check result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 748
    return-void
.end method
