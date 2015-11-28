.class public Lcom/lge/uicc/StartOtaHandler;
.super Landroid/os/Handler;
.source "StartOtaHandler.java"


# static fields
.field private static final EVENT_CHECK_STARTOTA:I = 0x1

.field private static mInstance:Lcom/lge/uicc/StartOtaHandler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/StartOtaHandler;->logd(Ljava/lang/String;)V

    .line 50
    const-string v0, "card_provisioned"

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 51
    const-string v0, "card_operator"

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StartOtaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StartOtaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected static setup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    const-string v0, "usim_perso_control_key"

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "First Boot! set UICC UI Setting Property"

    invoke-static {v0}, Lcom/lge/uicc/StartOtaHandler;->logd(Ljava/lang/String;)V

    .line 32
    const-string v0, "usim_perso_locked"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "usim_perso_imsi"

    const-string v1, "000000000000000"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "enable_menu_without_usim"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "sim_err_popup_msg"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SKT"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-string v0, "usim_perso_control_key"

    const-string v1, "0000"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    :goto_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LGU"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    :cond_1
    :goto_1
    return-void

    .line 39
    :cond_2
    const-string v0, "usim_perso_control_key"

    const-string v1, "00000000"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    sget-object v0, Lcom/lge/uicc/StartOtaHandler;->mInstance:Lcom/lge/uicc/StartOtaHandler;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/lge/uicc/StartOtaHandler;

    invoke-direct {v0}, Lcom/lge/uicc/StartOtaHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/StartOtaHandler;->mInstance:Lcom/lge/uicc/StartOtaHandler;

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/StartOtaHandler;->loge(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const-string v6, "card_provisioned"

    invoke-static {v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "provisioned":Ljava/lang/String;
    const-string v6, "card_operator"

    invoke-static {v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "card_operator":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    const-string v6, "EVENT_CHECK_STARTOTA"

    invoke-static {v6}, Lcom/lge/uicc/StartOtaHandler;->logd(Ljava/lang/String;)V

    .line 63
    const-string v6, "LGU"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    const-string v4, "com.lge.ota"

    .line 65
    .local v4, "packageName":Ljava/lang/String;
    const-string v3, "com.lge.ota.LGTNoUSIMActivityForLockScreen"

    .line 67
    .local v3, "className":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "LGTota":Landroid/content/Intent;
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    .local v1, "c":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 72
    const-string v6, "fails to getContext"

    invoke-static {v6}, Lcom/lge/uicc/StartOtaHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartOTA - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/StartOtaHandler;->logd(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    .end local v0    # "LGTota":Landroid/content/Intent;
    .end local v1    # "c":Landroid/content/Context;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v6, "card_provisioned"

    invoke-static {v6, p0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    .line 80
    const-string v6, "card_operator"

    invoke-static {v6, p0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
