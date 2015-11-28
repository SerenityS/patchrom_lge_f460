.class Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p2, "x1"    # Landroid/net/wifi/p2p/WifiP2pService$1;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 426
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 430
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 449
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v3, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiConnected:Z
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto :goto_0

    .line 436
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiConnected:Z
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 437
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->P2pConnWaitWifiDisconn:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v2

    const v3, 0x22007

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 440
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->P2pProvDiscWaitWifiDisconn:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v2

    const v3, 0x24024

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 443
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->P2pNotifyInvitationWaitWifiDiscon:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->P2pNotifyInvitationWaitWifiDiscon:Z
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 445
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v2

    const v3, 0x23002

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
