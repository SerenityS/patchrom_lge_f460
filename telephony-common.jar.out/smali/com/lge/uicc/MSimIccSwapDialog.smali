.class public Lcom/lge/uicc/MSimIccSwapDialog;
.super Landroid/os/Handler;
.source "MSimIccSwapDialog.java"


# static fields
.field private static final EVENT_CARD_STATE_CHANGED:I = 0x1

.field private static final EVENT_PHONE_REBOOT_TIMER:I = 0x2

.field private static mInstance:Lcom/lge/uicc/MSimIccSwapDialog;


# instance fields
.field private mCardState:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mTimeoutTimer:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mCardState:[Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;

    .line 62
    const-string v0, "card_state"

    const/4 v1, 0x0

    invoke-static {v0, p0, v3, v1}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 63
    const-string v0, "#operator_cardswap_dialog"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/lge/uicc/MSimIccSwapDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/MSimIccSwapDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/MSimIccSwapDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/MSimIccSwapDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/uicc/MSimIccSwapDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/MSimIccSwapDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/uicc/MSimIccSwapDialog;->cancelRebootTimer()V

    return-void
.end method

.method private cancelRebootTimer()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 142
    :cond_0
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccSwapDialog] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccSwapDialog] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private onIccSwapEx(ZI)V
    .locals 18
    .param p1, "isAdded"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIccSwapEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/uicc/MSimIccSwapDialog;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 150
    :try_start_0
    new-instance v11, Lcom/lge/uicc/MSimIccSwapDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/lge/uicc/MSimIccSwapDialog$2;-><init>(Lcom/lge/uicc/MSimIccSwapDialog;)V

    .line 166
    .local v11, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/lge/uicc/MSimIccSwapDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/lge/uicc/MSimIccSwapDialog$3;-><init>(Lcom/lge/uicc/MSimIccSwapDialog;)V

    .line 178
    .local v12, "listener_force_reboot":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 179
    .local v14, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v1, 0x104047d

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x104047e

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 185
    .local v13, "message":Ljava/lang/String;
    :goto_1
    const v1, 0x104047f

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "buttonTxt":Ljava/lang/String;
    const v1, 0x104000a

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "buttonOkTxt":Ljava/lang/String;
    const/high16 v1, 0x1040000

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "buttonCancelTxt":Ljava/lang/String;
    const/4 v15, 0x0

    .line 193
    .local v15, "theme":I
    if-eqz p1, :cond_2

    .line 195
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 200
    .local v10, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 201
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 202
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 204
    new-instance v1, Lcom/lge/uicc/MSimIccSwapDialog$4;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x3e8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/uicc/MSimIccSwapDialog$4;-><init>(Lcom/lge/uicc/MSimIccSwapDialog;JJ)V

    invoke-virtual {v1}, Lcom/lge/uicc/MSimIccSwapDialog$4;->start()Landroid/os/CountDownTimer;

    .line 240
    :goto_2
    monitor-exit v17

    .line 241
    return-void

    .line 179
    .end local v7    # "buttonCancelTxt":Ljava/lang/String;
    .end local v8    # "buttonOkTxt":Ljava/lang/String;
    .end local v9    # "buttonTxt":Ljava/lang/String;
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v13    # "message":Ljava/lang/String;
    .end local v15    # "theme":I
    .end local v16    # "title":Ljava/lang/String;
    :cond_0
    const v1, 0x104047a

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 182
    .restart local v16    # "title":Ljava/lang/String;
    :cond_1
    const v1, 0x104047b

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 215
    .restart local v7    # "buttonCancelTxt":Ljava/lang/String;
    .restart local v8    # "buttonOkTxt":Ljava/lang/String;
    .restart local v9    # "buttonTxt":Ljava/lang/String;
    .restart local v13    # "message":Ljava/lang/String;
    .restart local v15    # "theme":I
    :cond_2
    const v15, 0x20a01cb

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 217
    const-string v1, "proxy.sim_state"

    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 224
    .restart local v10    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 225
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 226
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 240
    .end local v7    # "buttonCancelTxt":Ljava/lang/String;
    .end local v8    # "buttonOkTxt":Ljava/lang/String;
    .end local v9    # "buttonTxt":Ljava/lang/String;
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v12    # "listener_force_reboot":Landroid/content/DialogInterface$OnClickListener;
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v15    # "theme":I
    .end local v16    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 228
    .restart local v7    # "buttonCancelTxt":Ljava/lang/String;
    .restart local v8    # "buttonOkTxt":Ljava/lang/String;
    .restart local v9    # "buttonTxt":Ljava/lang/String;
    .restart local v11    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v12    # "listener_force_reboot":Landroid/content/DialogInterface$OnClickListener;
    .restart local v13    # "message":Ljava/lang/String;
    .restart local v14    # "r":Landroid/content/res/Resources;
    .restart local v15    # "theme":I
    .restart local v16    # "title":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 235
    .restart local v10    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 236
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 237
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private registerRebootTimer(JLandroid/app/ProgressDialog;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 130
    move-object v0, p3

    .line 131
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    .line 132
    iget-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mTimeoutTimer:Ljava/util/Timer;

    new-instance v2, Lcom/lge/uicc/MSimIccSwapDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/uicc/MSimIccSwapDialog$1;-><init>(Lcom/lge/uicc/MSimIccSwapDialog;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 137
    return-void
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lge/uicc/MSimIccSwapDialog;->mInstance:Lcom/lge/uicc/MSimIccSwapDialog;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/lge/uicc/MSimIccSwapDialog;

    invoke-direct {v0}, Lcom/lge/uicc/MSimIccSwapDialog;-><init>()V

    sput-object v0, Lcom/lge/uicc/MSimIccSwapDialog;->mInstance:Lcom/lge/uicc/MSimIccSwapDialog;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    const/4 v5, -0x1

    .line 75
    .local v5, "slotId":I
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/MSimIccSwapDialog;->loge(Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 78
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 79
    const-string v6, "EVENT_CARD_STATE_CHANGED : ar.result is null"

    invoke-static {v6}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_CARD_STATE_CHANGED : slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    .line 85
    const-string v6, "card_state"

    invoke-static {v6, v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "newState":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mCardState:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_CARD_STATE_CHANGED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    .line 91
    const-string v6, "radio_state"

    invoke-static {v6, v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    const-string v6, "radio off or unavailable"

    invoke-static {v6}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v6, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mCardState:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 97
    iget-object v6, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mCardState:[Ljava/lang/String;

    aget-object v6, v6, v5

    const-string v7, "SIM_DETECT_INSERTED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SIM_DETECT_INSERTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 98
    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Lcom/lge/uicc/MSimIccSwapDialog;->onIccSwapEx(ZI)V

    .line 104
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mCardState:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto/16 :goto_0

    .line 99
    :cond_4
    iget-object v6, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mCardState:[Ljava/lang/String;

    aget-object v6, v6, v5

    const-string v7, "REMOVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "REMOVED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const/4 v6, 0x0

    invoke-direct {p0, v6, v5}, Lcom/lge/uicc/MSimIccSwapDialog;->onIccSwapEx(ZI)V

    goto :goto_1

    .line 108
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "newState":Ljava/lang/String;
    :pswitch_1
    const-string v6, "EVENT_PHONE_REBOOT_TIMER"

    invoke-static {v6}, Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V

    .line 109
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 110
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ProgressDialog;

    .line 111
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    .line 112
    .local v4, "progress":I
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 115
    const-wide/16 v6, 0x3e8

    invoke-direct {p0, v6, v7, v1}, Lcom/lge/uicc/MSimIccSwapDialog;->registerRebootTimer(JLandroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 117
    :cond_5
    iget-object v6, p0, Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 118
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v6, "Phone reboot."

    invoke-virtual {v3, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
