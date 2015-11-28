.class public Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;
.super Landroid/os/Handler;
.source "KrServiceStateTracker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "timeZoneMonitor"    # Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v0, "KR_REJECT_CAUSE"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

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
.method protected clearLteRejectCauseLGU(ZIII)V
    .locals 1
    .param p1, "hasGprsAttached"    # Z
    .param p2, "voiceRegState"    # I
    .param p3, "dataRegState"    # I
    .param p4, "dataRadioTech"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearLteRejectCauseLGU(III)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "KR_REJECT_CAUSE"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method public isManualSelectionAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isManualSelectionAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRegitrationStatus(ZZZZ)V
    .locals 1
    .param p1, "hasRegistered"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasDeregistered"    # Z
    .param p4, "hasGprsDetached"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->updateRegitrationStatus(ZZZZ)V

    :cond_0
    return-void
.end method

.method updateSpnDisplay()V
    .locals 0

    .prologue
    return-void
.end method
