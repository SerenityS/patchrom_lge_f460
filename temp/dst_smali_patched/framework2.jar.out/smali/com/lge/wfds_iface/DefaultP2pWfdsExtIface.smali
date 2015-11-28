.class public Lcom/lge/wfds_iface/DefaultP2pWfdsExtIface;
.super Ljava/lang/Object;
.source "DefaultP2pWfdsExtIface.java"

# interfaces
.implements Lcom/lge/wfds_iface/P2pWfdsExtIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultP2pWfdsExtIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addWfdsFilters(Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    return-void
.end method

.method public connectForWfds(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Z)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p4, "currentlyGroupExist"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public constructWfdsDevice(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public initP2pWfdsExt(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p2pStateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    const-string v0, "DefaultP2pWfdsExtIface"

    const-string v1, "initP2pWfdsExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processWfdsIntents(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mSavedPeerConfig"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    return-void
.end method
