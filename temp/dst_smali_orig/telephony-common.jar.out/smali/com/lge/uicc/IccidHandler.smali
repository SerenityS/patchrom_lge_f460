.class public Lcom/lge/uicc/IccidHandler;
.super Landroid/os/Handler;
.source "IccidHandler.java"


# static fields
.field private static final EVENT_ICCID_LOADED:I = 0x1

.field private static final EVENT_OMADM_LOCK_DONE:I = 0x4

.field private static final EVENT_SET_OMADM_LOCK:I = 0x3

.field private static final EVENT_SIM_LOADED:I = 0x2

.field private static mInstance:Lcom/lge/uicc/IccidHandler;


# instance fields
.field private iccid_loaded_mask:I

.field private mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v3, p0, Lcom/lge/uicc/IccidHandler;->iccid_loaded_mask:I

    iput-object v2, p0, Lcom/lge/uicc/IccidHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/IccidHandler;->logd(Ljava/lang/String;)V

    const-string v0, "iccid"

    invoke-static {v0, p0, v4, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/lge/uicc/IccidHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/uicc/SimNodeHandlerSPR;

    invoke-static {}, Lcom/lge/uicc/LGUICC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/uicc/SimNodeHandlerSPR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/uicc/IccidHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SPR"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "spr.omadm_lock"

    const/4 v1, 0x3

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleForSimLock(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "SPR"

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/lge/uicc/IccidHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    const/16 v5, 0x12d

    invoke-virtual {v4, v5}, Lcom/lge/uicc/SimNodeHandlerSPR;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "SIMLock":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/uicc/IccidHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    const/16 v5, 0x12e

    invoke-virtual {v4, v5}, Lcom/lge/uicc/SimNodeHandlerSPR;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "SIMUICCID":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "SIMLock is activated by ICCID. SIM state is changed to ABSENT."

    invoke-static {v2}, Lcom/lge/uicc/IccidHandler;->loge(Ljava/lang/String;)V

    const-string v2, "spr.omadm_lock"

    const-string v4, "yes"

    invoke-static {v2, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move v2, v3

    goto :goto_0
.end method

.method public static handleGetIccidDone(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "slot"    # I

    .prologue
    sget-object v0, Lcom/lge/uicc/IccidHandler;->mInstance:Lcom/lge/uicc/IccidHandler;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .end local p0    # "iccid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "iccid":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/lge/uicc/IccidHandler;->mInstance:Lcom/lge/uicc/IccidHandler;

    invoke-direct {v0, p0}, Lcom/lge/uicc/IccidHandler;->handleForSimLock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "iccid"

    invoke-static {v0, p1, p0}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccidHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccidHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccidHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    return-void
.end method

.method protected static setup()V
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/uicc/IccidHandler;->mInstance:Lcom/lge/uicc/IccidHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/uicc/IccidHandler;

    invoke-direct {v0}, Lcom/lge/uicc/IccidHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccidHandler;->mInstance:Lcom/lge/uicc/IccidHandler;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, -0x1

    .local v11, "slotId":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_0

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_ICCID_LOADED : slot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->logd(Ljava/lang/String;)V

    if-ltz v11, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/uicc/IccidHandler;->iccid_loaded_mask:I

    const/4 v14, 0x1

    shl-int/2addr v14, v11

    and-int/2addr v13, v14

    if-nez v13, :cond_0

    const-string v13, "iccid"

    invoke-static {v13, v11}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "iccid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/uicc/IccidHandler;->iccid_loaded_mask:I

    const/4 v14, 0x1

    shl-int/2addr v14, v11

    or-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/uicc/IccidHandler;->iccid_loaded_mask:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "LGU"

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-le v13, v14, :cond_2

    const/4 v13, 0x0

    const/4 v14, 0x6

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "head":Ljava/lang/String;
    const/4 v13, 0x6

    const/16 v14, 0xc

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "issuer":Ljava/lang/String;
    const-string v13, "898206"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "851109"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "751108"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[LGU+] !!DO NOT USE THIS USIM CARD!! This is not for official test : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->loge(Ljava/lang/String;)V

    .end local v3    # "head":Ljava/lang/String;
    .end local v8    # "issuer":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "last_iccid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "last_iccid":Ljava/lang/String;
    const-string v6, "persist.radio.iccid-changed"

    .local v6, "iccid_statusprop":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slot"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " last_iccid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->logp(Ljava/lang/String;)V

    const-string v2, "no"

    .local v2, "changed":Ljava/lang/String;
    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "2"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "0"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v13, "iccid_changed"

    invoke-static {v13, v11, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "2"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "first"

    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "last_iccid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "proxy.sim_state.intent"

    const/4 v14, 0x2

    const-string v15, "LOADED"

    move-object/from16 v0, p0

    invoke-static {v13, v0, v14, v15}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v13, "1"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "actual"

    goto :goto_2

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "changed":Ljava/lang/String;
    .end local v4    # "iccid":Ljava/lang/String;
    .end local v6    # "iccid_statusprop":Ljava/lang/String;
    .end local v9    # "last_iccid":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_0

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_SIM_LOADED : slot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->logd(Ljava/lang/String;)V

    const-string v13, "iccid_changed"

    const-string v14, "no"

    invoke-static {v13, v11, v14}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "iccid_changed":Ljava/lang/String;
    const-string v13, "no"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.lge.intent.action.SIM_CHANGED_INFO"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent_sim_changed":Landroid/content/Intent;
    const-string v13, "reason"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "SLOT_ID"

    invoke-virtual {v7, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v7}, Lcom/lge/uicc/IccTools;->broadcastIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "iccid_changed":Ljava/lang/String;
    .end local v7    # "intent_sim_changed":Landroid/content/Intent;
    :pswitch_2
    const-string v13, "EVENT_SET_OMADM_LOCK"

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->logd(Ljava/lang/String;)V

    const-string v13, "spr.omadm_lock"

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "value":Ljava/lang/String;
    const-string v13, "gsm.sim.state"

    invoke-static {v13, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v10

    .local v10, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v10, :cond_6

    const-string v13, "fails to get RIL"

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/uicc/IccidHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/telephony/RIL;->UIMPowerdownrequest(Landroid/os/Message;)V

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/lge/uicc/IccTools;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v10    # "ril":Lcom/android/internal/telephony/RIL;
    .end local v12    # "value":Ljava/lang/String;
    :pswitch_3
    const-string v13, "EVENT_OMADM_LOCK_DONE"

    invoke-static {v13}, Lcom/lge/uicc/IccidHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
