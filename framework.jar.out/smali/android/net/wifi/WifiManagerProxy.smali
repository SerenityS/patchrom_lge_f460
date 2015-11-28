.class public Landroid/net/wifi/WifiManagerProxy;
.super Ljava/lang/Object;
.source "WifiManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerProxy"

.field private static checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

.field private static getWifiNeedOnMethod:Ljava/lang/reflect/Method;

.field private static isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;

.field private static isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

.field private static setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

.field private static setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

.field private static setWifiNeedOnMethod:Ljava/lang/reflect/Method;

.field private static setWifiVZWApConfigurationMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 32
    new-array v0, v10, [Ljava/lang/Class;

    .line 33
    .local v0, "checkAndStartWifiExtParamType":[Ljava/lang/Class;
    new-array v5, v9, [Ljava/lang/Class;

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v5, v10

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v11

    .line 37
    .local v5, "setVZWWifiApEnabledParamType":[Ljava/lang/Class;
    const/16 v8, 0x12

    new-array v7, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    const/4 v8, 0x3

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0x9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xa

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xd

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xe

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xf

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 44
    .local v7, "setWifiVZWApConfigurationParamType":[Ljava/lang/Class;
    new-array v6, v11, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v10

    .line 47
    .local v6, "setWifiNeedOnParamType":[Ljava/lang/Class;
    new-array v1, v10, [Ljava/lang/Class;

    .line 48
    .local v1, "getWifiNeedOnParamType":[Ljava/lang/Class;
    new-array v3, v10, [Ljava/lang/Class;

    .line 49
    .local v3, "isVZWMobileHotspotEnabledParamType":[Ljava/lang/Class;
    new-array v4, v11, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v10

    .line 52
    .local v4, "setVZWMobileHotspotParamType":[Ljava/lang/Class;
    new-array v2, v10, [Ljava/lang/Class;

    .line 56
    .local v2, "isPowerSaveModeEnabledParamType":[Ljava/lang/Class;
    :try_start_0
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string v9, "checkAndStartWifiExt"

    invoke-virtual {v8, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

    .line 58
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "setVZWWifiApEnabled"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    .line 60
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string v9, "getWifiNeedOn"

    invoke-virtual {v8, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->getWifiNeedOnMethod:Ljava/lang/reflect/Method;

    .line 62
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string v9, "isVZWMobileHotspotEnabled"

    invoke-virtual {v8, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

    .line 65
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "setVZWMobileHotspot"

    invoke-virtual {v8, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

    .line 67
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string v9, "isPowerSaveModeEnabled"

    invoke-virtual {v8, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 83
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created - fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkAndStartWifiExt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 102
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    .line 104
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 112
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 113
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 120
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string v4, "checkAndStartWifiExt method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiNeedOn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 205
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->getWifiNeedOnMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 206
    new-array v0, v4, [Ljava/lang/Object;

    .line 208
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->getWifiNeedOnMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 224
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 209
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 219
    goto :goto_0

    .line 211
    :catch_1
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 215
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 216
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 223
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string v5, "getWifiNeedOn method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 224
    goto :goto_0
.end method

.method public isPowerSaveModeEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 309
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 310
    new-array v0, v4, [Ljava/lang/Object;

    .line 312
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 328
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 313
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 323
    goto :goto_0

    .line 315
    :catch_1
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 319
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 320
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 327
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string v5, "isPowerSaveModeEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 328
    goto :goto_0
.end method

.method public isVZWMobileHotspotEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 241
    new-array v0, v4, [Ljava/lang/Object;

    .line 243
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 259
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 244
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 254
    goto :goto_0

    .line 246
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 250
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 251
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 258
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string v5, "isVZWMobileHotspotEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 259
    goto :goto_0
.end method

.method public setVZWMobileHotspot(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 275
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v4

    .line 279
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 295
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 280
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 290
    goto :goto_0

    .line 282
    :catch_1
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 286
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 287
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 294
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "setVZWMobileHotspot method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 295
    goto :goto_0
.end method

.method public setVZWWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 134
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    .line 138
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 154
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 139
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 149
    goto :goto_0

    .line 141
    :catch_1
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 145
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 146
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 153
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "setVZWWifiApEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 154
    goto :goto_0
.end method

.method public setWifiApEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 340
    :cond_0
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 351
    :cond_0
    return-void
.end method

.method public setWifiNeedOn(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 170
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiNeedOnMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 171
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v4

    .line 175
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiNeedOnMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 191
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return v3

    .line 176
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 186
    goto :goto_0

    .line 178
    :catch_1
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 182
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 183
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 190
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "setWifiNeedOn method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 191
    goto :goto_0
.end method

.method public startScan()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
