.class public Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;
.super Landroid/os/Handler;
.source "GlobalServiceStateHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mBrAreaLocation:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    new-instance v0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper$1;-><init>(Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mBrAreaLocation:I

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 50
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 57
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 64
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 66
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
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

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->log(Ljava/lang/String;)V

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    .line 76
    return-void
.end method

.method needToUpdateSpn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    const-string v1, "persist.sys.cust.cbinfo_not_bar"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/BrazilianAreaInfo;->areaChanged(I)Z

    move-result v0

    .line 88
    :cond_0
    return v0
.end method

.method updateSpnIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v1, "persist.sys.cust.cbinfo_not_bar"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "network":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GlobalServiceStateHelper;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lcom/android/internal/telephony/gsm/BrazilianAreaInfo;->addAreaInfoIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    .end local v0    # "network":Ljava/lang/String;
    :cond_0
    return-void
.end method
