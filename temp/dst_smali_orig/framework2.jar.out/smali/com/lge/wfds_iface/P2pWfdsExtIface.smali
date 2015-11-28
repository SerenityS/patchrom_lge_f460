.class public interface abstract Lcom/lge/wfds_iface/P2pWfdsExtIface;
.super Ljava/lang/Object;
.source "P2pWfdsExtIface.java"


# virtual methods
.method public abstract addWfdsFilters(Landroid/content/IntentFilter;)V
.end method

.method public abstract connectForWfds(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Z)I
.end method

.method public abstract constructWfdsDevice(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;)V
.end method

.method public abstract initP2pWfdsExt(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end method

.method public abstract processWfdsIntents(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V
.end method
