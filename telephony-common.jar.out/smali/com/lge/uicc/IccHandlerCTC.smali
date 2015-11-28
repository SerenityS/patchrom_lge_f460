.class public Lcom/lge/uicc/IccHandlerCTC;
.super Landroid/os/Handler;
.source "IccHandlerCTC.java"


# static fields
.field private static final EVENT_ICCID_LOADED:I = 0x1

.field private static final EVENT_SIM_LOADED:I = 0x2

.field private static final FACTORY_PROPERTY:Ljava/lang/String; = "ro.factorytest"

.field private static mInstance:Lcom/lge/uicc/IccHandlerCTC;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    const-string v1, "create instance"

    invoke-static {v1}, Lcom/lge/uicc/IccHandlerCTC;->logd(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/lge/uicc/IccTools;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "proxy.sim_state.intent"

    const/4 v2, 0x1

    const-string v3, "LOADED"

    invoke-static {v1, p0, v2, v3}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 50
    :cond_0
    const-string v1, "proxy.sim_state"

    const-string v2, "READY"

    invoke-static {v1, p0, v4, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 52
    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "factoryTestStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string v1, "proxy.sim_state"

    const-string v2, "READY"

    invoke-static {v1, p0, v4, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 56
    :cond_1
    return-void
.end method

.method private handle_CTC_sim()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    const-string v5, "proxy.sim_state"

    invoke-static {v5, v7}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "sim1_state":Ljava/lang/String;
    const-string v5, "proxy.sim_state"

    invoke-static {v5, v8}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "sim2_state":Ljava/lang/String;
    const-string v5, "iccid"

    const-string v6, "no"

    invoke-static {v5, v7, v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "sim1_iccid":Ljava/lang/String;
    const-string v5, "iccid"

    const-string v6, "no"

    invoke-static {v5, v8, v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "sim2_iccid":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.CTC_SIM_CHANGED_INFO"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent_ctc_sim_changed":Landroid/content/Intent;
    const-string v5, "sim1_string"

    const-string v6, "UIM/SIM card 1"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v5, "READY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    const-string v5, "sim1_state"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v5, "SLOT1_ID"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "8986"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    const-string v5, "check_mainland1"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    :goto_0
    const-string v5, "SLOT2_ID"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v5, "sim2_string"

    const-string v6, "UIM/SIM card 2"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v5, "READY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    const-string v5, "sim2_state"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "8986"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    const-string v5, "check_mainland2"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    :goto_1
    invoke-static {v0}, Lcom/lge/uicc/IccTools;->broadcastIntent(Landroid/content/Intent;)V

    .line 161
    return-void

    .line 131
    :cond_0
    const-string v5, "check_mainland1"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 136
    :cond_1
    const-string v5, "sim1_state"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v5, "check_mainland1"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 152
    :cond_2
    const-string v5, "check_mainland2"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 157
    :cond_3
    const-string v5, "sim2_state"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v5, "check_mainland2"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccHandlerCTC] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccHandlerCTC] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CTC"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lcom/lge/uicc/IccHandlerCTC;->mInstance:Lcom/lge/uicc/IccHandlerCTC;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/lge/uicc/IccHandlerCTC;

    invoke-direct {v0}, Lcom/lge/uicc/IccHandlerCTC;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccHandlerCTC;->mInstance:Lcom/lge/uicc/IccHandlerCTC;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    .line 60
    const/4 v7, -0x1

    .line 62
    .local v7, "slotId":I
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccHandlerCTC;->loge(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 65
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 68
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SIM_LOADED : slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/IccHandlerCTC;->logd(Ljava/lang/String;)V

    .line 70
    const-string v9, "iccid_changed"

    const-string v10, "no"

    invoke-static {v9, v7, v10}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "iccid_changed":Ljava/lang/String;
    const-string v9, "no"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/lge/uicc/IccHandlerCTC;->handle_CTC_sim()V

    goto :goto_0

    .line 77
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "iccid_changed":Ljava/lang/String;
    :pswitch_1
    const-string v9, "EVENT_SIM_LOADED"

    invoke-static {v9}, Lcom/lge/uicc/IccHandlerCTC;->logd(Ljava/lang/String;)V

    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, "theme":I
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/uicc/IccHandlerCTC;->mContext:Landroid/content/Context;

    .line 80
    const-string v9, "card_app_count"

    invoke-static {v9, v12}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "card_app_count":Ljava/lang/String;
    const-string v9, "proxy.sim_state"

    invoke-static {v9, v12}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "sim_state":Ljava/lang/String;
    const-string v9, "csim.state"

    invoke-static {v9, v12}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "csim_state":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "READY"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    const-string v5, "Your sim card does not match the terminal, please change the CT 4G card"

    .line 86
    .local v5, "message":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/lge/uicc/IccHandlerCTC;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v10, "China Telecom"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "OK"

    new-instance v11, Lcom/lge/uicc/IccHandlerCTC$1;

    invoke-direct {v11, p0}, Lcom/lge/uicc/IccHandlerCTC$1;-><init>(Lcom/lge/uicc/IccHandlerCTC;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 97
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v12}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 98
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7da

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 99
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x200000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 100
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 102
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "message":Ljava/lang/String;
    :cond_1
    const-string v9, "proxy.sim_state"

    invoke-static {v9, p0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
