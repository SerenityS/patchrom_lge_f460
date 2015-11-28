.class public Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;
.super Lcom/android/internal/telephony/gsm/dev/KrRejectCause;
.source "KrLguRejectCause.java"


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
    .line 25
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 26
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 27
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 28
    return-void
.end method

.method private checkGsmServiceStatus()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "statusId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGsmServiceStatus() mMmCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGmmCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-lez v1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 95
    const-string v1, "ril.gsm.mm_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-lez v1, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 101
    const-string v1, "ril.gsm.gmm_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 109
    return v0
.end method

.method private getStatusIdFromRejectCause(II)I
    .locals 1
    .param p1, "cause"    # I
    .param p2, "statusId"    # I

    .prologue
    .line 113
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, p2

    .line 143
    .end local p2    # "statusId":I
    .local v0, "statusId":I
    :goto_0
    return v0

    .line 134
    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :cond_1
    if-lez p1, :cond_2

    .line 135
    move p2, p1

    :cond_2
    move v0, p2

    .line 143
    .end local p2    # "statusId":I
    .restart local v0    # "statusId":I
    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->initialize()V

    .line 61
    const-string v0, "gsm.rc_2_rs_3_5.exist"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "ril.gsm.mm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "ril.gsm.gmm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->setMMTempRejected(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v2, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    .line 70
    return-void
.end method

.method private initializeCheckTempRejectWait()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->initialize()V

    .line 75
    const-string v0, "gsm.rc_2_rs_3_5.exist"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v2, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    .line 78
    return-void
.end method

.method private isTempRejectAndNeedToWait()Z
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v3, v3, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v4, v4, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mRauAttempt:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isTempRejectAndNeedToWait(IIIII)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGU_REJ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private processRejectCause()V
    .locals 3

    .prologue
    .line 37
    const-string v1, "processRejectCause"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->checkGsmServiceStatus()I

    move-result v0

    .line 41
    .local v0, "statusId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous statusId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current statusId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    if-eq v1, v0, :cond_2

    .line 44
    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->initialize()V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v0, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    .line 50
    const-string v1, "ril.gsm.reject_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processStatuId(I)V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isRejectDialogActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processStatuId(I)V

    goto :goto_0
.end method

.method private processStatuId(I)V
    .locals 6
    .param p1, "statusId"    # I

    .prologue
    .line 147
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 149
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processStatuId statusId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    .line 154
    .local v0, "canShowAlert":Z
    const-string v3, "LGU"

    const-string v4, "ril.card_operator"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "no"

    const-string v4, "ril.card_provisioned"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 160
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 181
    :pswitch_0
    if-lez p1, :cond_1

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lgu_network_reject_cause_etc"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 166
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lgu_network_reject_cause_service"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    goto :goto_0

    .line 171
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lgu_network_reject_cause_data"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    goto :goto_0

    .line 177
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lgu_network_reject_cause_temp"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setMMTempRejected(Z)V
    .locals 2
    .param p1, "isTempRejected"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v0, "ril.gsm.mm_temp"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v0, "ril.gsm.mm_temp"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "canShow"    # Z
    .param p3, "enTimeout"    # Z

    .prologue
    .line 260
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 273
    iget v1, p1, Landroid/os/Message;->what:I

    .line 277
    return-void
.end method

.method handleWcdmaAcceptReceived(ZZ)V
    .locals 4
    .param p1, "mmAccepted"    # Z
    .param p2, "gmmAccepted"    # Z

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWcdmaAcceptReceived mmAccepted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gmmAccepted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 199
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v3, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v3, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    .line 202
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processRejectCause()V

    .line 238
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWcdmaAcceptReceived mMmCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGmmCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 243
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0xc73b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 247
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void

    .line 205
    :cond_1
    if-eqz p1, :cond_4

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v3, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    .line 207
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-nez v1, :cond_2

    .line 210
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processRejectCause()V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->isTempRejectAndNeedToWait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->initializeCheckTempRejectWait()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processRejectCause()V

    goto :goto_0

    .line 219
    :cond_4
    if-eqz p2, :cond_7

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v3, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    .line 221
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-nez v1, :cond_5

    .line 224
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processRejectCause()V

    goto/16 :goto_0

    .line 227
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->isTempRejectAndNeedToWait()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->initializeCheckTempRejectWait()V

    goto/16 :goto_0

    .line 230
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->processRejectCause()V

    goto/16 :goto_0

    .line 234
    :cond_7
    const-string v1, "handleWcdmaAcceptReceived Error"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrLguRejectCause;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method handleWcdmaRejectReceived()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method updateRegitrationStatus(ZZZZ)V
    .locals 0
    .param p1, "hasRegistered"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasDeregistered"    # Z
    .param p4, "hasGprsDetached"    # Z

    .prologue
    .line 256
    return-void
.end method
