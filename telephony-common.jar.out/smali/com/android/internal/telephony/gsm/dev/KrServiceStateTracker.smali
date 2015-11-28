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

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 69
    const-string v0, "KR_REJECT_CAUSE"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 73
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
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

    .line 132
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
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearLteRejectCauseLGU(III)V

    .line 116
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string v0, "KR_REJECT_CAUSE"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->dispose()V

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 86
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
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

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    .line 128
    return-void
.end method

.method public isManualSelectionAvailable()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isManualSelectionAvailable()Z

    move-result v0

    .line 97
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
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->mRejectMonitor:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->updateRegitrationStatus(ZZZZ)V

    .line 108
    :cond_0
    return-void
.end method

.method updateSpnDisplay()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
