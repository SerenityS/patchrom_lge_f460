.class public Lcom/lge/wifi/config/LgeWifiConfig;
.super Ljava/lang/Object;
.source "LgeWifiConfig.java"


# static fields
.field public static final CONFIG_LGE_WLAN_BRCM_PATCH:Z

.field public static final CONFIG_LGE_WLAN_DCF:Z

.field public static final CONFIG_LGE_WLAN_MTK_PATCH:Z

.field public static final CONFIG_LGE_WLAN_PATCH:Z

.field public static final CONFIG_LGE_WLAN_QCOM_PATCH:Z

.field public static final CONFIG_LGE_WLAN_TEST:Z

.field public static final CONFIG_LGE_WLAN_TEST_PROFILE:Z

.field public static final HOTSPOT_2_4G_MODE_LOW:I = 0x0

.field public static final HOTSPOT_5G_MODE_LOW:I = 0x1

.field private static final HOTSPOT_TX_POWER_2_4G_VALUE_LOW_BRCM:I = 0x4b0

.field private static final HOTSPOT_TX_POWER_2_4G_VALUE_LOW_QCT:I = 0x8

.field private static final HOTSPOT_TX_POWER_5G_VALUE_LOW_BRCM:I = 0x4b0

.field private static final HOTSPOT_TX_POWER_5G_VALUE_LOW_QCT:I = 0x8

.field public static final HOTSPOT_TX_POWER_MODE_HIGH:I = 0x1

.field public static final HOTSPOT_TX_POWER_MODE_LOW:I = 0x0

.field private static final HOTSPOT_TX_POWER_VALUE_HIGH_BRCM:I = 0xbb8

.field private static final HOTSPOT_TX_POWER_VALUE_HIGH_QCT:I = 0x14

.field private static final KSC5601SSID:Z

.field private static final TAG:Ljava/lang/String; = "LgeWifiConfig"

.field private static final mCommonHotspot:Ljava/lang/String;

.field private static mIsAvailableKtUsim:Z = false

.field private static final mLgeEap:Z = true

.field private static final mMobileHotspot:Z

.field private static final mTargetCountry:Ljava/lang/String;

.field private static final mTargetOperator:Ljava/lang/String;

.field private static final mWifiOffdelayAfter15alarm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "wifi.lge.patch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    .line 36
    const-string v0, "wlan.chip.vendor"

    const-string v1, "brcm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    .line 43
    const-string v0, "wlan.chip.vendor"

    const-string v1, "qcom"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "brcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    .line 50
    const-string v0, "wlan.chip.vendor"

    const-string v1, "qcom"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_MTK_PATCH:Z

    .line 57
    const-string v0, "wifi.lge.test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST:Z

    .line 59
    const-string v0, "wifi.lge.test_profile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    .line 65
    const-string v0, "wlan.lge.dcf.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    .line 79
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    .line 81
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    .line 84
    const-string v0, "wifi.lge.common_hotspot"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mCommonHotspot:Ljava/lang/String;

    .line 91
    const-string v0, "wifi.lge.hanglessid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->KSC5601SSID:Z

    .line 99
    const-string v0, "wifi.lge.offdelay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWifiOffdelayAfter15alarm:Z

    .line 113
    const-string v0, "wifi.lge.mhp"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    .line 125
    sput-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLgeKtCmProfileAccess()Z
    .locals 1

    .prologue
    .line 474
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-static {p0}, Lcom/lge/wifi/config/LgeWifiConfig;->getMccMncInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "myMccMnc":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 192
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static doesSupportHotspotList()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 371
    const-string v1, "TMO"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MPCS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    :cond_1
    :goto_0
    return v0

    .line 374
    :cond_2
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    const-string v1, "VZW"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    return-object v0
.end method

.method private static getMccMncInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 293
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 295
    .local v1, "simMccMnc":[Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v3

    .line 320
    .end local v1    # "simMccMnc":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 301
    .restart local v1    # "simMccMnc":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 305
    const/4 v4, 0x1

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 308
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo: MCC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] MNC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 311
    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 314
    goto/16 :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 317
    goto/16 :goto_0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getTxPowerValue(II)I
    .locals 4
    .param p0, "txPowerMode"    # I
    .param p1, "defaultChannel"    # I

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "txPowerValue":I
    const-string v1, "LgeWifiConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTxPowerValue : txPowerMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 505
    if-nez p0, :cond_1

    .line 506
    if-nez p1, :cond_0

    .line 507
    const/16 v0, 0x4b0

    .line 527
    :goto_0
    return v0

    .line 509
    :cond_0
    const/16 v0, 0x4b0

    goto :goto_0

    .line 513
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0

    .line 516
    :cond_2
    if-nez p0, :cond_4

    .line 517
    if-nez p1, :cond_3

    .line 518
    const/16 v0, 0x8

    goto :goto_0

    .line 520
    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    .line 524
    :cond_4
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public static isWifiACGFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 414
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiChameleonFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 404
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultMobileHotspotUS()Z
    .locals 2

    .prologue
    .line 487
    const-string v0, "MPCS"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    :cond_2
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLgeKtUsimRemoved()Z
    .locals 2

    .prologue
    .line 468
    const-string v0, "LgeWifiConfig"

    const-string v1, "setLgeKtUsimRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public static setWiFiAutoChannel(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "wifi.lge.autochannel"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public static useChangeSsid()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public static useCommonHotspotAPI()Z
    .locals 3

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "ret":Z
    const-string v1, "true"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mCommonHotspot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    const-string v1, "VZW"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMO"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MPCS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 390
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useDefaultWifiOn()Z
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useDefaultWifiSleepPolicy()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 216
    const-string v2, "wifi.lge.sleeppolicy"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "wifiSleepPolicy":I
    packed-switch v0, :pswitch_data_0

    .line 224
    const-string v2, "LgeWifiConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown wifiSleepPolicy : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 227
    .end local v0    # "wifiSleepPolicy":I
    :pswitch_0
    return v0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static useHotspotHidden()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 424
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    const-string v1, "TLS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BELL"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RGS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useKoreanSsid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 262
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->KSC5601SSID:Z

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "CN"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    const-string v1, "HK"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useKoreanSsid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "SSID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 276
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->KSC5601SSID:Z

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "\u200b\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    const-string v1, "CN"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    const-string v1, "HK"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useLgeEap()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public static useLgeKtCm()Z
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static useMobileHotspot()Z
    .locals 1

    .prologue
    .line 350
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    return v0
.end method

.method public static useOpProfile()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public static useStatefullDHCPV6()Z
    .locals 2

    .prologue
    .line 533
    const-string v0, "CTC"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWiFiAggregation()Z
    .locals 2

    .prologue
    .line 442
    const-string v0, "wifi.lge.aggregation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWiFiAutoChannel()I
    .locals 3

    .prologue
    .line 449
    const-string v1, "wifi.lge.autochannel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 450
    .local v0, "value":I
    return v0
.end method

.method public static useWiFiOffloading()Z
    .locals 2

    .prologue
    .line 340
    const-string v0, "wifi.lge.offloading"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiActivationWhileCharging()Z
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWifiDLNA()Z
    .locals 2

    .prologue
    .line 358
    const-string v0, "dhcp.dlna.using"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiOffDelayAfter15alarm()Z
    .locals 1

    .prologue
    .line 328
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWifiOffdelayAfter15alarm:Z

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
