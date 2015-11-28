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

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevRegistered:Z

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    .line 49
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevMmCause:I

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevGmmCause:I

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevStatusId:I

    .line 64
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevMmStatus:I

    .line 65
    iput v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevGmmStatus:I

    .line 67
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRadioTech:I

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCampedOn:Z

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKrSST:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaRejectReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaAcceptReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    const/4 v0, 0x4

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    return-void
.end method

.method private clearEsmEmmRejectCauseLGU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "esmRejectCause"    # Ljava/lang/String;
    .param p2, "lteEmmRejectCause"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    const-string v1, "gsm.lge.lte_esm_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "GSM/WCDMA CS/PS in-service : clear existing ESM reject"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    .line 443
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    const-string v1, "gsm.lge.lte_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rejectCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 448
    const-string v1, "gsm.radio.last_ltereject"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "GSM/WCDMA CS/PS in-service : clear existing LTE EMM reject"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    .line 451
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private clearRejectCauseLGU()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    .line 155
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

    .line 455
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

    .line 458
    const-string v1, "GSM/WCDMA CS/PS in-service : clear all reject notification"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearRejectCauseLGU()V

    .line 463
    :cond_0
    if-nez p3, :cond_3

    const/16 v1, 0xe

    if-ne p4, v1, :cond_3

    .line 465
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

    .line 466
    .local v0, "nonLteRejectReceived":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 467
    const-string v1, "LTE in-service : clear GSM/WCDMA reject"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearRejectCauseLGU()V

    .line 473
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

    .line 274
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 275
    .local v0, "ints":[I
    aget v1, v0, v4

    if-ne v1, v3, :cond_0

    .line 276
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    .line 278
    :cond_0
    aget v1, v0, v3

    if-ne v1, v3, :cond_1

    .line 279
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    .line 282
    :cond_1
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    .line 311
    :cond_2
    :goto_0
    return-void

    .line 289
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-eqz v1, :cond_4

    .line 290
    iput v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    .line 295
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-eqz v1, :cond_5

    .line 296
    iput v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    .line 301
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-eqz v1, :cond_6

    .line 306
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    goto :goto_0

    .line 308
    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaAcceptReceivedInternal()V

    goto :goto_0
.end method

.method private handleWcdmaAcceptReceivedInternal()V
    .locals 3

    .prologue
    .line 337
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->handleWcdmaAcceptReceived(ZZ)V

    goto :goto_0

    .line 351
    :cond_2
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    .line 353
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

    .line 242
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v6, v0

    check-cast v6, [I

    .line 243
    .local v6, "ints":[I
    array-length v0, v6

    if-eq v0, v1, :cond_0

    array-length v0, v6

    if-ne v0, v2, :cond_5

    .line 244
    :cond_0
    aget v0, v6, v8

    if-lez v0, :cond_1

    .line 245
    aget v0, v6, v8

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    .line 247
    :cond_1
    const/4 v0, 0x1

    aget v0, v6, v0

    if-lez v0, :cond_2

    .line 248
    aget v0, v6, v8

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    .line 250
    :cond_2
    const/4 v0, 0x2

    aget v0, v6, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    .line 251
    const/4 v0, 0x3

    aget v0, v6, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    .line 252
    const/4 v0, 0x4

    aget v0, v6, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    .line 255
    array-length v0, v6

    if-ne v0, v2, :cond_3

    .line 256
    aget v0, v6, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRadioTech:I

    .line 260
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget v5, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isTempRejectAndNeedToWait(IIIII)Z

    move-result v7

    .line 263
    .local v7, "isTempReject":Z
    if-nez v7, :cond_5

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    if-eqz v0, :cond_4

    .line 265
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    .line 267
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaRejectReceivedInternal()V

    .line 271
    .end local v7    # "isTempReject":Z
    :cond_5
    return-void
.end method

.method private handleWcdmaRejectReceivedInternal()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->handleWcdmaRejectReceived()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->handleWcdmaRejectReceived()V

    goto :goto_0

    .line 328
    :cond_2
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->handleWcdmaRejectReceived()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 494
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

    .line 495
    return-void
.end method

.method private setMmRejectTempProperty(Z)V
    .locals 3
    .param p1, "tempReject"    # Z

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.temp_reject"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 191
    const-string v1, "reject_changed_temp_to_normal"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "ril.gsm.mm_temp"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "temp reject received"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->log(Ljava/lang/String;)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void

    .line 195
    :cond_0
    const-string v1, "reject_changed_temp_to_normal"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "ril.gsm.mm_temp"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
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
    .line 361
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mSktRejectCause:Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrSktRejectCause;->updateRegitrationStatus(ZZZZ)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->updateRegitrationStatus(ZZZZ)V

    goto :goto_0

    .line 375
    :cond_2
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLguRejectCause:Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;

    if-eqz v0, :cond_0

    .line 377
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
    .line 476
    const-string v2, "KR"

    const-string v3, "LGU"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 479
    :cond_0
    const-string v2, "gsm.lge.lte_esm_reject_cause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "esmRejectCause":Ljava/lang/String;
    const-string v2, "gsm.lge.lte_reject_cause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
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

    .line 485
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearEsmEmmRejectCauseLGU(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearRejectCauseNotificationLGU(Ljava/lang/String;Ljava/lang/String;II)V

    .line 487
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKrSST:Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/dev/KrServiceStateTracker;->updateSpnDisplay()V

    .line 490
    .end local v0    # "esmRejectCause":Ljava/lang/String;
    .end local v1    # "lteEmmRejectCause":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method clearStatusId()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->dispose()V

    .line 97
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 100
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 161
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

    .line 163
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 165
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaRejectReceived(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaAcceptReceived(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 173
    :pswitch_3
    const-string v1, "KR"

    const-string v2, "KT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->checkManagedRoamingDialogAtBoot()V

    goto :goto_0

    .line 163
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

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->postDismissDialog()V

    .line 106
    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    .line 107
    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    .line 108
    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    .line 109
    return-void
.end method

.method public isManualSelectionAvailable()Z
    .locals 2

    .prologue
    .line 424
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

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mKtRejectCause:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->isManualSelectionAvailable()Z

    move-result v0

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isRatLte()Z
    .locals 2

    .prologue
    .line 148
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
    .line 113
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

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "isTempReject":Z
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->isTempReject(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->needToWait(III)Z

    move-result v0

    .line 212
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    if-eqz v0, :cond_2

    .line 215
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    if-lt v1, v4, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "ril.gsm.mm_cause"

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    if-ge v1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    if-lt v1, v4, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-eqz v1, :cond_2

    .line 220
    const-string v1, "ril.gsm.gmm_cause"

    iget v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->setMmRejectTempProperty(Z)V

    .line 229
    :cond_3
    return v0
.end method

.method postDismissDialog()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mDialog:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->postDismissDialog()V

    .line 143
    return-void
.end method

.method showDialog(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "canShow"    # Z
    .param p3, "timeout"    # Z

    .prologue
    .line 122
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
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

    .line 135
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

    .line 137
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

    .line 389
    const/4 v0, 0x0

    .line 391
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

    .line 394
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 398
    :cond_1
    if-eqz p1, :cond_2

    .line 399
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    .line 401
    :cond_2
    if-eqz p3, :cond_3

    .line 402
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    .line 404
    :cond_3
    if-eqz p2, :cond_4

    .line 405
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    .line 407
    :cond_4
    if-eqz p4, :cond_5

    .line 408
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    .line 412
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    if-eqz v3, :cond_6

    .line 413
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPendingAcceptReceived:Z

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->handleWcdmaAcceptReceivedInternal()V

    .line 417
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->updateRegitrationStatusInternal(ZZZZ)V

    .line 419
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    if-eqz v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevRegistered:Z

    .line 420
    return-void
.end method
