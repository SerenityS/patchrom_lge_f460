.class public Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;
.super Landroid/os/Handler;
.source "KrPersoLockMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DELAYED_REJECT_CAUSE_ACTIVATION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKrSST:Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;

.field protected mNetworkStateRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mUsimPersoFinished:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "krSst"    # Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    new-instance v1, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor$1;-><init>(Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mUsimPersoFinished:Z

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 70
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mKrSST:Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.SIM_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->handleUsimPersonalUnlockIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->checkUsimPersonalLock(Landroid/content/Intent;)V

    return-void
.end method

.method private checkUsimPersonalLock(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 157
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->isUsimPersoLocked(Landroid/content/Context;)Z

    move-result v1

    .line 159
    .local v1, "locked":Z
    const/4 v3, 0x0

    .line 161
    .local v3, "radioDetached":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM_PERSO_LOCKED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 163
    if-eqz v1, :cond_0

    .line 164
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getUsimPersoImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "persoImsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "subscriberId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM_PERSO_IMSI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getSubscriberId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 171
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mUsimPersoFinished:Z

    if-nez v5, :cond_0

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE] disable GW sub!, setOperatorSelection isQCRIL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v6, 0x60020

    const/4 v7, 0x0

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 185
    :goto_0
    const/4 v3, 0x1

    .line 190
    .end local v2    # "persoImsi":Ljava/lang/String;
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hold Reject Cause processing :: persoLockChecked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 199
    :goto_1
    return-void

    .line 182
    .restart local v2    # "persoImsi":Ljava/lang/String;
    .restart local v4    # "subscriberId":Ljava/lang/String;
    :cond_1
    const-string v5, "[LGE] dummy for InFineon "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v2    # "persoImsi":Ljava/lang/String;
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->delayedRejectPopupActivation(Z)V

    goto :goto_1
.end method

.method private delayedRejectPopupActivation(Z)V
    .locals 4
    .param p1, "needDelay"    # Z

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedRejectPopupActivation needDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persoLockChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 148
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    :cond_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUsimPersonalUnlockIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->isUsimPersoLocked(Landroid/content/Context;)Z

    move-result v0

    .line 109
    .local v0, "locked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_UNLOCKED intent received! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 110
    if-eqz v0, :cond_2

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x60021

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 115
    :cond_0
    sput-boolean v5, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 123
    .local v1, "skipRestoringSelection":Z
    if-nez v1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 127
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mUsimPersoFinished:Z

    .line 131
    .end local v1    # "skipRestoringSelection":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mUsimPersoFinished:Z

    if-eqz v2, :cond_3

    .line 132
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->delayedRejectPopupActivation(Z)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allow Reject Cause processing after 1sec :: persoLockChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 140
    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PersoLock] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 83
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 85
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGE] EVENT_DELAYED_REJECT_CAUSE_ACTIVATION : persoLockChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
