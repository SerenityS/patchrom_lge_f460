.class public Lcom/lge/telephony/KrRejectCause/LGURejectCause;
.super Lcom/lge/telephony/KrRejectCause/RejectCauseBase;
.source "LGURejectCause.java"


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# instance fields
.field private mStatusId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 31
    sput-object p1, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 32
    return-void
.end method

.method private initializeCheckTempRejectWait()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->initialize()V

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
    iput v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 78
    return-void
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


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "statusId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGsmServiceStatus() mm_reject_cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gmm_reject_cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 94
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-lez v1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 96
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 97
    const-string v1, "ril.gsm.mm_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-lez v1, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 102
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 103
    const-string v1, "ril.gsm.gmm_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 109
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 111
    return v0
.end method

.method public clearRejectCause(II)Z
    .locals 5
    .param p1, "clear_mm"    # I
    .param p2, "clear_gmm"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] clearRejectCause() clear_mm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clear_gmm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 238
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 239
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    .line 240
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    .line 241
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    .line 278
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] clearRejectCause() mm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gmm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 280
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-nez v1, :cond_0

    .line 281
    sget-object v1, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 282
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0xc73b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 286
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return v3

    .line 244
    :cond_1
    if-ne p1, v3, :cond_4

    .line 245
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    .line 246
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-nez v1, :cond_2

    .line 249
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto :goto_0

    .line 252
    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isTempRejectAndNeedWait(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->initializeCheckTempRejectWait()V

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto :goto_0

    .line 258
    :cond_4
    if-ne p2, v3, :cond_7

    .line 259
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    .line 260
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-nez v1, :cond_5

    .line 263
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto/16 :goto_0

    .line 266
    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isTempRejectAndNeedWait(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->initializeCheckTempRejectWait()V

    goto/16 :goto_0

    .line 269
    :cond_6
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto/16 :goto_0

    .line 274
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] clearRejectCause() Error clear_mm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clear_gmm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected clearStatusId()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method protected getStatusIdFromRejectCause(II)I
    .locals 1
    .param p1, "cause"    # I
    .param p2, "statusId"    # I

    .prologue
    .line 116
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, p2

    .line 175
    .end local p2    # "statusId":I
    .local v0, "statusId":I
    :goto_0
    return v0

    .line 166
    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :cond_1
    if-lez p1, :cond_2

    .line 167
    move p2, p1

    :cond_2
    move v0, p2

    .line 175
    .end local p2    # "statusId":I
    .restart local v0    # "statusId":I
    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->initialize()V

    .line 64
    const-string v0, "gsm.rc_2_rs_3_5.exist"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "ril.gsm.mm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "ril.gsm.gmm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->setMMTempRejected(Z)V

    .line 70
    iput v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 71
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGURejectCause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method protected processRejectCause()V
    .locals 3

    .prologue
    .line 41
    const-string v1, "processRejectCause"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->checkGsmServiceStatus()I

    move-result v0

    .line 45
    .local v0, "statusId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous statusId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current statusId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 47
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    if-eq v1, v0, :cond_2

    .line 48
    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->initialize()V

    .line 52
    :cond_0
    iput v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 54
    const-string v1, "ril.gsm.reject_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processStatuId(I)V

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isRejectDialogActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processStatuId(I)V

    goto :goto_0
.end method

.method protected processStatuId(I)V
    .locals 6
    .param p1, "statusId"    # I

    .prologue
    .line 180
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 181
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 182
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processStatuId : statusId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    .line 187
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

    .line 189
    const/4 v0, 0x0

    .line 193
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 214
    :pswitch_0
    if-lez p1, :cond_1

    .line 215
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

    .line 222
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->showDialog(Ljava/lang/String;ZZ)V

    .line 225
    return-void

    .line 199
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

    .line 200
    goto :goto_0

    .line 204
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

    .line 205
    goto :goto_0

    .line 210
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

    .line 211
    goto :goto_0

    .line 193
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
