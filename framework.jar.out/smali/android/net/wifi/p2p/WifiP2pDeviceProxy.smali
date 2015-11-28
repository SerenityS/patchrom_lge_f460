.class public Landroid/net/wifi/p2p/WifiP2pDeviceProxy;
.super Ljava/lang/Object;
.source "WifiP2pDeviceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pDeviceProxy"

.field private static wfdsInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceProxy;->wfdsInfoField:Ljava/lang/reflect/Field;

    .line 18
    :try_start_0
    const-class v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string/jumbo v1, "wfdsInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceProxy;->wfdsInfoField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getWfdsInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/lge/wfds_data/WfdsInfo;
    .locals 5
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDeviceProxy;->wfdsInfoField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 33
    :try_start_0
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDeviceProxy;->wfdsInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds_data/WfdsInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    const-string v3, "WifiP2pDeviceProxy"

    const-string v4, "getWfdsInfo() wfdsInfoField field isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 45
    goto :goto_0

    .line 35
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public setWfdsInfo(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/lge/wfds_data/WfdsInfo;)V
    .locals 3
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "wfdsInfo"    # Lcom/lge/wfds_data/WfdsInfo;

    .prologue
    .line 49
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pDeviceProxy;->wfdsInfoField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    :try_start_0
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pDeviceProxy;->wfdsInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    const-string v1, "WifiP2pDeviceProxy"

    const-string/jumbo v2, "setWfdsInfo() wfdsInfoField field isn\'t implemented yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
