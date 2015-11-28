.class public Lcom/kddi/net/KDDIPreferredNetwork;
.super Landroid/os/Handler;
.source "KDDIPreferredNetwork.java"


# static fields
.field private static final ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String; = "GetNetworkMode_KDDI_LTE"

.field private static final ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String; = "SetNetworkMode_KDDI_LTE"

.field private static final EXTRA_NATWORK_RESPONSE:Ljava/lang/String; = "response"

.field private static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field protected static final LOG_TAG:Ljava/lang/String; = "RIL_KDDIPreferredNetwork"

.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field public static final NT_MODE_DEFAULT:I = 0x0

.field public static final NT_MODE_LTEOFF:I = 0x1


# instance fields
.field isIntentDuplicate:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSetNetworkType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->isIntentDuplicate:Z

    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    iput v1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mSetNetworkType:I

    new-instance v1, Lcom/kddi/net/KDDIPreferredNetwork$1;

    invoke-direct {v1, p0}, Lcom/kddi/net/KDDIPreferredNetwork$1;-><init>(Lcom/kddi/net/KDDIPreferredNetwork;)V

    iput-object v1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "SetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "GetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/kddi/net/KDDIPreferredNetwork;)I
    .locals 1
    .param p0, "x0"    # Lcom/kddi/net/KDDIPreferredNetwork;

    .prologue
    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getLteOnNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/kddi/net/KDDIPreferredNetwork;)I
    .locals 1
    .param p0, "x0"    # Lcom/kddi/net/KDDIPreferredNetwork;

    .prologue
    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getLteOffNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/kddi/net/KDDIPreferredNetwork;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kddi/net/KDDIPreferredNetwork;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/kddi/net/KDDIPreferredNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kddi/net/KDDIPreferredNetwork;)I
    .locals 1
    .param p0, "x0"    # Lcom/kddi/net/KDDIPreferredNetwork;

    .prologue
    iget v0, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mSetNetworkType:I

    return v0
.end method

.method static synthetic access$302(Lcom/kddi/net/KDDIPreferredNetwork;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kddi/net/KDDIPreferredNetwork;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mSetNetworkType:I

    return p1
.end method

.method static synthetic access$400(Lcom/kddi/net/KDDIPreferredNetwork;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/kddi/net/KDDIPreferredNetwork;

    .prologue
    iget-object v0, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getLteOffNetworkMode()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .local v0, "setNetworkType":I
    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getPreferredNetworkMode()I

    move-result v1

    .local v1, "settingsNetworkMode":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x7

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getLteOnNetworkMode()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .local v0, "setNetworkType":I
    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getPreferredNetworkMode()I

    move-result v1

    .local v1, "settingsNetworkMode":I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_4
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "nwMode":I
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "RIL_KDDIPreferredNetwork"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    iget v8, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mSetNetworkType:I

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LteOnOffHandler: getPreferredNetworkMode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getPreferredNetworkMode()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kddi/net/KDDIPreferredNetwork;->log(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.intent.action.SetNetWorkMode"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "exception"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v5, p0, Lcom/kddi/net/KDDIPreferredNetwork;->isIntentDuplicate:Z

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v5}, Lcom/kddi/net/KDDIPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    move v4, v6

    goto :goto_2

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v2, v4, v5

    .local v2, "modemNetworkMode":I
    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getPreferredNetworkMode()I

    move-result v3

    .local v3, "settingsNetworkMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LteOnOffHandler: modemNetworkMode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " settingsNetworkMode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kddi/net/KDDIPreferredNetwork;->log(Ljava/lang/String;)V

    if-ltz v2, :cond_3

    const/16 v4, 0xc

    if-gt v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    move v3, v2

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v2    # "modemNetworkMode":I
    .end local v3    # "settingsNetworkMode":I
    :cond_2
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.intent.action.GetNetWorkMode"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "networkmode"

    invoke-direct {p0}, Lcom/kddi/net/KDDIPreferredNetwork;->getPreferredNetworkMode()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "exception"

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    :goto_4
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "modemNetworkMode":I
    .restart local v3    # "settingsNetworkMode":I
    :cond_3
    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    sget v8, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v7, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/kddi/net/KDDIPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .end local v2    # "modemNetworkMode":I
    .end local v3    # "settingsNetworkMode":I
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    move v5, v6

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
