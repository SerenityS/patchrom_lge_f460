.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;
.super Landroid/net/INetworkManagementEventObserverEx$Stub;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdObserverEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserverEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p2, "x1"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    return-void
.end method


# virtual methods
.method public DnsFailed(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$000(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;I)V

    .local v0, "failResult":Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;
    const-string v1, "true"

    const-string v2, "net.is_dropping_packet"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v2, "skip onDnsFailObserved for LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->PRIVACY_ENABLE:Z
    invoke-static {v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$300(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS result Hostname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v3, 0x4281c

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS result Hostname: xxxxxxxxxx code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public DsqnNotification(Ljava/lang/String;I)V
    .locals 0
    .param p1, "devname"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    return-void
.end method

.method public PlayerEvNotification(Ljava/lang/String;I)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "rmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RMNET interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state changed: UP??"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateConnectionInfosList(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public interfaceThrottleStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method
