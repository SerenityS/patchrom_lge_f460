.class public Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
.super Landroid/os/Handler;
.source "KrRejectMonitor.java"


# static fields
.field private static final EVENT_CHECK_MANAGED_ROAMING_AT_BOOT:I = 0x4

.field private static final EVENT_WCDMA_ACCEPT_RECEIVED:I = 0x2

.field private static final EVENT_WCDMA_REJECT_RECEIVED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RejectMonitor"

.field private static final MANAGED_ROAMING_CHECK_DELAY_TIMEOUT:I = 0x1388


# instance fields
.field private mCampedOn:Z

.field mCsRegistered:Z

.field mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

.field mGmmAccepted:Z

.field mGmmCause:I

.field mGmmStatus:I

.field mGprsAttachAttempt:I

.field private mKrSST:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

.field private mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

.field private mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

.field mLuAttempt:I

.field mMmAccepted:Z

.field mMmCause:I

.field mMmStatus:I

.field mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

.field private mPendingAcceptReceived:Z

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPrevGmmCause:I

.field mPrevGmmStatus:I

.field mPrevMmCause:I

.field mPrevMmStatus:I

.field mPrevRegistered:Z

.field mPrevStatusId:I

.field mPsRegistered:Z

.field mRadioTech:I

.field mRauAttempt:I

.field private mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

.field mStatusId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "krSST"    # Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevRegistered:Z

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevMmCause:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevGmmCause:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevStatusId:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevMmStatus:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevGmmStatus:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRadioTech:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCampedOn:Z

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKrSST:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaRejectReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaAcceptReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x4

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private clearEsmEmmRejectCauseLGU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "esmRejectCause"    # Ljava/lang/String;
    .param p2, "lteEmmRejectCause"    # Ljava/lang/String;

    .prologue
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gsm.lge.lte_esm_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GSM/WCDMA CS/PS in-service : clear existing ESM reject"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gsm.lge.lte_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rejectCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v1, "gsm.radio.last_ltereject"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GSM/WCDMA CS/PS in-service : clear existing LTE EMM reject"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private clearRejectCauseLGU()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    :cond_0
    return-void
.end method

.method private clearRejectCauseNotificationLGU(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "esmRejectCause"    # Ljava/lang/String;
    .param p2, "lteEmmRejectCause"    # Ljava/lang/String;
    .param p3, "dataRegState"    # I
    .param p4, "dataRadioTech"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "KR_REJECT_CAUSE"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GSM/WCDMA CS/PS in-service : clear all reject notification"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearRejectCauseLGU()V

    :cond_0
    if-nez p3, :cond_3

    const/16 v1, 0xe

    if-ne p4, v1, :cond_3

    const-string v1, "ril.gsm.mm_cause"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "ril.gsm.gmm_cause"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .local v0, "nonLteRejectReceived":Z
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "LTE in-service : clear GSM/WCDMA reject"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearRejectCauseLGU()V

    .end local v0    # "nonLteRejectReceived":Z
    :cond_3
    return-void
.end method

.method private handleWcdmaAcceptReceived(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .local v0, "ints":[I
    aget v1, v0, v4

    if-ne v1, v3, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    :cond_0
    aget v1, v0, v3

    if-ne v1, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    :cond_1
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-eqz v1, :cond_4

    iput v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-eqz v1, :cond_5

    iput v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    goto :goto_0

    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaAcceptReceivedInternal()V

    goto :goto_0
.end method

.method private handleWcdmaAcceptReceivedInternal()V
    .locals 3

    .prologue
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    goto :goto_0
.end method

.method private handleWcdmaRejectReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v8, 0x0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v6, v0

    check-cast v6, [I

    .local v6, "ints":[I
    array-length v0, v6

    if-eq v0, v1, :cond_0

    array-length v0, v6

    if-ne v0, v2, :cond_5

    :cond_0
    aget v0, v6, v8

    if-lez v0, :cond_1

    aget v0, v6, v8

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    :cond_1
    const/4 v0, 0x1

    aget v0, v6, v0

    if-lez v0, :cond_2

    aget v0, v6, v8

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    :cond_2
    const/4 v0, 0x2

    aget v0, v6, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    const/4 v0, 0x3

    aget v0, v6, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    const/4 v0, 0x4

    aget v0, v6, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    array-length v0, v6

    if-ne v0, v2, :cond_3

    aget v0, v6, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRadioTech:I

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget v5, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isTempRejectAndNeedToWait(IIIII)Z

    move-result v7

    .local v7, "isTempReject":Z
    if-nez v7, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    if-eqz v0, :cond_4

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaRejectReceivedInternal()V

    .end local v7    # "isTempReject":Z
    :cond_5
    return-void
.end method

.method private handleWcdmaRejectReceivedInternal()V
    .locals 2

    .prologue
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->handleWcdmaRejectReceived()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->handleWcdmaRejectReceived()V

    goto :goto_0

    :cond_2
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaRejectReceived()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "RejectMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[REJ_MON] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMmRejectTempProperty(Z)V
    .locals 3
    .param p1, "tempReject"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.temp_reject"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "reject_changed_temp_to_normal"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ril.gsm.mm_temp"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "temp reject received"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "reject_changed_temp_to_normal"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ril.gsm.mm_temp"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "temp reject changed to normal"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRegitrationStatusInternal(ZZZZ)V
    .locals 2
    .param p1, "hasRegistered"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasDeregistered"    # Z
    .param p4, "hasGprsDetached"    # Z

    .prologue
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->updateRegitrationStatus(ZZZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->updateRegitrationStatus(ZZZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->updateRegitrationStatus(ZZZZ)V

    goto :goto_0
.end method


# virtual methods
.method protected clearLteRejectCauseLGU(III)V
    .locals 4
    .param p1, "voiceRegState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "dataRadioTech"    # I

    .prologue
    const-string v2, "KR"

    const-string v3, "LGU"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v2, "gsm.lge.lte_esm_reject_cause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "esmRejectCause":Ljava/lang/String;
    const-string v2, "gsm.lge.lte_reject_cause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "lteEmmRejectCause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSM/WCDMA CS/PS in-service : esmRejectCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lteEmmRejectCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearEsmEmmRejectCauseLGU(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearRejectCauseNotificationLGU(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKrSST:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->updateSpnDisplay()V

    .end local v0    # "esmRejectCause":Ljava/lang/String;
    .end local v1    # "lteEmmRejectCause":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method clearStatusId()V
    .locals 0

    .prologue
    return-void
.end method

.method dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaRejectReceived(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaAcceptReceived(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "KR"

    const-string v2, "KT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->checkManagedRoamingDialogAtBoot()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->postDismissDialog()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    return-void
.end method

.method public isManualSelectionAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "KR_REJECT_CAUSE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->isManualSelectionAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isRatLte()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRadioTech:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRejectDialogActive()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->isRejectDialogActive()Z

    move-result v0

    return v0
.end method

.method isTempRejectAndNeedToWait(IIIII)Z
    .locals 5
    .param p1, "mmCause"    # I
    .param p2, "gmmCause"    # I
    .param p3, "luAttempt"    # I
    .param p4, "gprsAttachAttempt"    # I
    .param p5, "rauAttempt"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, "isTempReject":Z
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->isTempReject(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->needToWait(III)Z

    move-result v0

    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    if-lt v1, v4, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-eqz v1, :cond_0

    const-string v1, "ril.gsm.mm_cause"

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    if-ge v1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    if-lt v1, v4, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-eqz v1, :cond_2

    const-string v1, "ril.gsm.gmm_cause"

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->setMmRejectTempProperty(Z)V

    :cond_3
    return v0
.end method

.method postDismissDialog()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->postDismissDialog()V

    return-void
.end method

.method showDialog(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "canShow"    # Z
    .param p3, "timeout"    # Z

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gsm.lge.ota_is_running"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-virtual {v0, p1, p3}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->show(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method updateRegitrationStatus(ZZZZ)V
    .locals 5
    .param p1, "hasRegistered"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasDeregistered"    # Z
    .param p4, "hasGprsDetached"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "hasChanged":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRegitrationStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    :cond_2
    if-eqz p3, :cond_3

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    :cond_4
    if-eqz p4, :cond_5

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    if-eqz v3, :cond_6

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaAcceptReceivedInternal()V

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->updateRegitrationStatusInternal(ZZZZ)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    if-eqz v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevRegistered:Z

    return-void
.end method
