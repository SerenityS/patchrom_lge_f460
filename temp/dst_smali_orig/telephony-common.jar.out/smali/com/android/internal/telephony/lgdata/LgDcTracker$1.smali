.class Lcom/android/internal/telephony/lgdata/LgDcTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LgDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LgDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    const-string v11, "[LGE_DATA][LGDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive: action="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    const-string v11, "lge.test.limit_data_usage"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "[LGE_DATA] lge.test.limit_data_usage"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "cause"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x2

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x5

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto :goto_0

    :cond_3
    const-string v11, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const-string v11, "on_off"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "enabled":Z
    const-string v11, "[LGE_DATA][LGDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGE_DATA] CALL_PROTECTION_STATUS_CHANGED ::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_4

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .end local v5    # "enabled":Z
    :cond_5
    const-string v11, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "[LGE_DATA] com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v11, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "[LGE_DATA] com.skt.CALL_PROTECTION_MENU_ON"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_7
    const-string v11, "com.skt.test_intent"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "[LGE_DATA] com.skt.test_intent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->functionForPacketList:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v13, ""

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_8
    const-string v11, "com.lge.GprsAttachedIsTrue"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "default"

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v4, "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v6, -0x1

    .local v6, "gprsState":I
    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v6

    :cond_9
    const-string v11, "[LGE_DATA][LGDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGE_DATA] com.lge.GprsAttachedIsTrue / default : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / gprsState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v11, v12, :cond_0

    if-nez v6, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataConnectionAttached()V

    goto/16 :goto_0

    .end local v4    # "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v6    # "gprsState":I
    :cond_a
    const-string v11, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "apnType":Ljava/lang/String;
    const-class v11, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v12, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .local v10, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    if-nez v3, :cond_b

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "[LG_DATA] onReceive() ACTION_ANY_DATA_CONNECTION_STATE_CHANGED apnType is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    :cond_b
    const-string v11, "[LGE_DATA][LGDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGE_DATA] ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_c

    const-string v11, "[LGE_DATA][LGDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGE_DATA] This apnType is invalid apn. apnType == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    sget-object v11, Lcom/android/internal/telephony/lgdata/LgDcTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$200()[Z

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v12

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$200()[Z

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    aput-boolean v13, v11, v12

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    :cond_d
    const-string v11, "wifi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "[LG_DATA]WIFI IS CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "apnType":Ljava/lang/String;
    .end local v10    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_e
    const-string v11, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "apnType":Ljava/lang/String;
    const-string v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "reason":Ljava/lang/String;
    const-string v11, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "apnName":Ljava/lang/String;
    const-string v11, "[LGE_DATA][LGDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGE_DATA] ACTION_DATA_CONNECTION_FAILED (type) : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$200()[Z

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    aput-boolean v13, v11, v12

    const-string v11, "wifi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "handleConnectionFailure: mIsWifiConnected = false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    goto/16 :goto_0

    .end local v2    # "apnName":Ljava/lang/String;
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v9    # "reason":Ljava/lang/String;
    :cond_f
    const-string v11, "ACTIVATE_SETUP_DATA_CALL"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    const v13, 0x42817

    const-string v14, "dataEnabled"

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_10
    const-string v11, "com.lge.callingsetmobile"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "[LGE_DATA][LGDCT] "

    const-string v12, "CallingSetMobileDataEnabled intent receiver"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "CallingPackagesName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "packname":Ljava/lang/String;
    if-nez v8, :cond_11

    const-string v8, ""

    :cond_11
    const-string v11, "enabled"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, "enabled":Ljava/lang/Boolean;
    const/4 v7, 0x0

    .local v7, "mobile_enable":I
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v7, 0x1

    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v11}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v12, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->callingSetMobileDataEnabled:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    invoke-virtual {v11, v12, v8, v7}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_12
    const/4 v7, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
