.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;
.super Landroid/content/BroadcastReceiver;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive: action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    :cond_2
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isScreenOn:Z

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v12, 0x42818

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isScreenOn:Z

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v12, 0x42819

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-class v10, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v11, "state"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .local v9, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v9, v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v12, 0x4281b

    invoke-virtual {v11, v12, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v9, v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v12, 0x4281a

    invoke-virtual {v11, v12, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v9    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_6
    const-string v10, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v11, 0x4281d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .local v7, "msg":Landroid/os/Message;
    const-string v10, "data.stall.alram.tag"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v7    # "msg":Landroid/os/Message;
    :cond_7
    const-string v10, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const v11, 0x4281e

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .restart local v7    # "msg":Landroid/os/Message;
    const-string v10, "conn.check.alram.tag"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "iface":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "data":Landroid/os/Bundle;
    const-string v10, "iface"

    invoke-virtual {v2, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "iface":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_8
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .local v8, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_1
    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v11, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$002(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .end local v8    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    const/4 v4, 0x1

    .local v4, "enabled":Z
    :goto_2
    if-nez v4, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v11, 0x0

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$002(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .end local v4    # "enabled":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    :cond_c
    const-string v10, "com.lge.ims.action.CALL_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, "imscallstate":I
    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_CALL_STATE intent received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " [1:active / 0:inactive]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    const/4 v10, 0x1

    if-ne v6, v10, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v11, 0x1

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$102(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const/4 v11, 0x0

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$102(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .end local v6    # "imscallstate":I
    :cond_e
    const-string v10, "lg-data-pulllog"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    const-string v11, "LG Data pull log"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v10

    if-nez v10, :cond_f

    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "b":Landroid/os/IBinder;
    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    # setter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$202(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;

    .end local v1    # "b":Landroid/os/IBinder;
    :cond_f
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    # getter for: Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v10

    const-string v11, "lgdata_pulllog"

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in pulling LGData log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
