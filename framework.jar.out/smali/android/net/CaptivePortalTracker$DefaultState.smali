.class Landroid/net/CaptivePortalTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p2, "x1"    # Landroid/net/CaptivePortalTracker$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 268
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/CaptivePortalTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 269
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 339
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 342
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    return v10

    .line 271
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 276
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-virtual {v10}, Landroid/net/CaptivePortalTracker;->isOptimizedWifiEnabled()Z

    move-result v7

    .line 277
    .local v7, "isOptimizedWifiEnabled":Z
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isForcedICDCheck()Z
    invoke-static {v10}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Z

    move-result v5

    .line 278
    .local v5, "isForcedICDCheck":Z
    const/4 v4, 0x0

    .line 279
    .local v4, "isCarrier":Z
    const/4 v3, 0x0

    .line 280
    .local v3, "isCaptive":Z
    const/4 v6, 0x0

    .line 281
    .local v6, "isMobileConnected":Z
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # setter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10, v2}, Landroid/net/CaptivePortalTracker;->access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 283
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGLWD][DefaultState] get CMD_DETECT_PORTAL info: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$1200(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 284
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGLWD][DefaultState] isOptimizedWifiEnabled:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isForcedICDCheck:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$1300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    if-nez v7, :cond_0

    if-eqz v5, :cond_8

    .line 288
    :cond_0
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v11, "[LGLWD][DefaultState] WiFi Network "

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$1400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 291
    :try_start_0
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v10}, Landroid/net/CaptivePortalTracker;->access$1500(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 292
    .local v8, "mobile_info":Landroid/net/NetworkInfo;
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 293
    .local v0, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_4

    .line 294
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, "ssid":Ljava/lang/String;
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;
    invoke-static {v10}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/lge/wifi/extension/IWifiServiceExtension;->isCarrierSpecificAP(Ljava/lang/String;)Z

    move-result v4

    .line 296
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;
    invoke-static {v10}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/lge/wifi/extension/IWifiServiceExtension;->isCaptiveProfile(I)Z

    move-result v3

    .line 301
    .end local v9    # "ssid":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_1

    .line 302
    const/4 v6, 0x1

    .line 306
    :cond_1
    if-nez v5, :cond_2

    if-nez v4, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    if-nez v6, :cond_3

    # getter for: Landroid/net/CaptivePortalTracker;->previous_used_icd_server:Ljava/net/InetAddress;
    invoke-static {}, Landroid/net/CaptivePortalTracker;->access$1900()Ljava/net/InetAddress;

    move-result-object v10

    if-eqz v10, :cond_5

    :cond_3
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mPreviousWifiStateConnected:Z
    invoke-static {v10}, Landroid/net/CaptivePortalTracker;->access$800(Landroid/net/CaptivePortalTracker;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 307
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v11, "[LGLWD][DefaultState] ConditionOK. move to LGInternetCheckState "

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 308
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v11, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mLGInternetCheckState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/CaptivePortalTracker;->access$2100(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 320
    .end local v0    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v8    # "mobile_info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string v11, "[LGLWD][DefaultState] remote exception occured"

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 323
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    invoke-static {v10, v2}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V

    .line 324
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v11, -0x3

    invoke-virtual {v10, v11}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto/16 :goto_0

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v8    # "mobile_info":Landroid/net/NetworkInfo;
    :cond_4
    :try_start_1
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    const-string/jumbo v11, "network info is TYPE_WIFI but no ConnectionInfo found"

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$1800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_5
    if-eqz v8, :cond_6

    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGLWD][DefaultState] Condition Not OK:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 312
    :cond_6
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGLWD][DefaultState] isForcedICDCheck:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isCarrier:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isCaptive:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 313
    iget-object v11, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGLWD][DefaultState] isMobileConnected:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", previous_used_icd_server:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Landroid/net/CaptivePortalTracker;->previous_used_icd_server:Ljava/net/InetAddress;
    invoke-static {}, Landroid/net/CaptivePortalTracker;->access$1900()Ljava/net/InetAddress;

    move-result-object v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "ok"

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", mPreviousWifiStateConnected: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mPreviousWifiStateConnected:Z
    invoke-static {v12}, Landroid/net/CaptivePortalTracker;->access$800(Landroid/net/CaptivePortalTracker;)Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v10}, Landroid/net/CaptivePortalTracker;->access$2500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 316
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    invoke-static {v10, v2}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V

    .line 317
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v11, -0x3

    invoke-virtual {v10, v11}, Landroid/net/CaptivePortalTracker;->sendIntentInternetCheckComplete(I)V

    goto/16 :goto_0

    .line 313
    :cond_7
    const-string/jumbo v10, "null"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 328
    .end local v0    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v8    # "mobile_info":Landroid/net/NetworkInfo;
    :cond_8
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGLWD][DefaultState] Do not run ICD!! isOptimizedWifiEnabled:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isForcedICDCheck:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/CaptivePortalTracker;->access$2800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 329
    iget-object v10, p0, Landroid/net/CaptivePortalTracker$DefaultState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    invoke-static {v10, v2}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
