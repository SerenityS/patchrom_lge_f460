.class public Lcom/android/server/net/BaseNetworkObserverEx;
.super Landroid/net/INetworkManagementEventObserverEx$Stub;
.source "BaseNetworkObserverEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserverEx$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DnsFailed(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 22
    return-void
.end method

.method public DsqnNotification(Ljava/lang/String;I)V
    .locals 0
    .param p1, "dev_name"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 27
    return-void
.end method

.method public PlayerEvNotification(Ljava/lang/String;I)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 32
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 17
    return-void
.end method

.method public interfaceThrottleStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 37
    return-void
.end method
