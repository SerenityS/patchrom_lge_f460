.class public Lcom/lge/internal/telephony/DataConnectionInterface;
.super Ljava/lang/Object;
.source "DataConnectionInterface.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DataConnectionInterface "

.field private static sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;


# instance fields
.field featureset:Ljava/lang/String;

.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "DataConnectionInterface "

    const-string v1, "DataConnectionInterface() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 52
    iget-object v0, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 53
    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->featureset:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/internal/telephony/DataConnectionInterface;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/lge/internal/telephony/DataConnectionInterface;->sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/lge/internal/telephony/DataConnectionInterface;

    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/DataConnectionInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/internal/telephony/DataConnectionInterface;->sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    .line 71
    :cond_0
    sget-object v0, Lcom/lge/internal/telephony/DataConnectionInterface;->sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    return-object v0
.end method


# virtual methods
.method public functionForPacketDrop(Z)V
    .locals 5
    .param p1, "ok"    # Z

    .prologue
    .line 251
    const-string v2, "DataConnectionInterface "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "functionForPacketDrop ok."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/DataConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;

    move-result-object v0

    .line 256
    .local v0, "dcm":Lcom/android/internal/telephony/DataConnectionManager;
    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DataConnectionInterface "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "functionForPacketDrop exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleConnectMobile()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    .line 85
    iget-object v6, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 88
    .local v4, "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const-string v6, "ro.support_mpdn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 89
    .local v3, "is_mpdn":Z
    const/4 v5, 0x0

    .line 90
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 91
    const-string v6, "persist.data_user_enabled"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 93
    .local v1, "dataUserEnabled":Z
    const-string v6, "DataConnectionInterface "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleConnectMobile !! mobile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is_mpdn ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isNetworkRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v6, "DataConnectionInterface "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleConnectMobile(): dataUserEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v4, :cond_1

    .line 100
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 102
    if-eqz v1, :cond_0

    .line 104
    const-string v6, "enable_mUserDataEnabled"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    const-string v6, "isRoamingOOS"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "isRoaming":I
    const-string v6, "DataConnectionInterface "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleConnectMobile !!  isroaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 120
    const-string v6, "ims"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v2    # "isRoaming":I
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 132
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 135
    const-string v6, "DataConnectionInterface "

    const-string v7, "enableApnType the TYPE_DEFAULT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v6, "default"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 138
    iget-object v6, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :cond_2
    :goto_1
    return-void

    .line 110
    :cond_3
    :try_start_2
    const-string v6, "enable_mUserDataEnabled"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v6

    .line 129
    :try_start_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 132
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 135
    const-string v6, "DataConnectionInterface "

    const-string v7, "enableApnType the TYPE_DEFAULT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v6, "default"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 138
    iget-object v6, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 152
    :catch_1
    move-exception v6

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v6

    .line 129
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 132
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 135
    const-string v7, "DataConnectionInterface "

    const-string v8, "enableApnType the TYPE_DEFAULT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v7, "default"

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 138
    iget-object v7, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 127
    :cond_4
    :goto_2
    throw v6

    .line 143
    :cond_5
    if-eqz v4, :cond_2

    .line 145
    :try_start_5
    const-string v6, "DataConnectionInterface "

    const-string v7, "enableApnType the TYPE_DEFAULT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v6, "default"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 148
    iget-object v6, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 143
    :cond_6
    if-eqz v4, :cond_4

    .line 145
    :try_start_6
    const-string v7, "DataConnectionInterface "

    const-string v8, "enableApnType the TYPE_DEFAULT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v7, "default"

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 148
    iget-object v7, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 152
    :catch_2
    move-exception v7

    goto :goto_2

    .line 143
    :cond_7
    if-eqz v4, :cond_2

    .line 145
    :try_start_7
    const-string v6, "DataConnectionInterface "

    const-string v7, "enableApnType the TYPE_DEFAULT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v6, "default"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 148
    iget-object v6, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1
.end method

.method public handleDisconnectMobile()V
    .locals 4

    .prologue
    .line 176
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 177
    .local v0, "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const-string v1, "DataConnectionInterface "

    const-string v2, "handleDisconnectMobile !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    const-string v1, "disable_mUserDataEnabled"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 197
    :try_start_1
    const-string v1, "mobileData_PdpReset"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :cond_1
    :goto_1
    return-void

    .line 201
    :catch_0
    move-exception v1

    goto :goto_1

    .line 189
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public mobileDataPdpReset()V
    .locals 5

    .prologue
    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 217
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 220
    .local v1, "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    const-string v3, "isRoamingOOS"

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, "isRoaming":I
    if-nez v0, :cond_1

    .line 228
    const-string v3, "DataConnectionInterface "

    const-string v4, "mobileDataPdpReset is not allowed when it is not in network roaming."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "isRoaming":I
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v0    # "isRoaming":I
    :cond_1
    const-string v3, "DataConnectionInterface "

    const-string v4, "mobileDataPdpReset !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v3, "mobileData_PdpReset"

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "isRoaming":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method
