.class public Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;
.super Lcom/android/internal/telephony/gsm/dev/KrRejectCause;
.source "KrSktRejectCause.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# instance fields
.field private mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "rejectMonitor"    # Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    return-void
.end method

.method private isTempRejectAndNeedToWait()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v3, v3, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v4, v4, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isTempRejectAndNeedToWait(IIIII)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SKT_REJ] "

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
.method dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->log(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method handleWcdmaAcceptReceived(ZZ)V
    .locals 0
    .param p1, "mmAccepted"    # Z
    .param p2, "gmmAccepted"    # Z

    .prologue
    return-void
.end method

.method handleWcdmaRejectReceived()V
    .locals 0

    .prologue
    return-void
.end method

.method updateRegitrationStatus(ZZZZ)V
    .locals 0
    .param p1, "hasRegistered"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasDeregistered"    # Z
    .param p4, "hasGprsDetached"    # Z

    .prologue
    return-void
.end method
