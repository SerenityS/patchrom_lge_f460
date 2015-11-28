.class public Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;
.super Landroid/os/Handler;
.source "KrStateMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mPersonalLockMonitor:Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPersonalLockMonitor:Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v0, "USIM_PERSONAL_LOCK"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPersonalLockMonitor:Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;

    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KrSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "USIM_PERSONAL_LOCK"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPersonalLockMonitor:Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPersonalLockMonitor:Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrPersoLockMonitor;->dispose()V

    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
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

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrStateMonitor;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method
