.class public Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/KTRejectCause;
.source "QcrilKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_5SEC_TIMEOUT:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final MSG_ID_5SEC_DELAYED_TIMEOUT:I = 0x1


# instance fields
.field m5SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;-><init>()V

    .line 40
    new-instance v0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    .line 31
    sput-object p1, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    .line 35
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->checkManagedRoamingDialogAtBoot()V

    return-void
.end method

.method private checkManagedRoamingDialogAtBoot()V
    .locals 5

    .prologue
    .line 55
    sget-object v2, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 56
    .local v1, "ss":Landroid/telephony/ServiceState;
    sget-object v2, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "airplaneMode":I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->createManagedRoamingDialog()V

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "statusId":I
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const-string v1, "canShowAlert = false"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 137
    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->canShowAlert:Z

    .line 138
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v4, :cond_0

    .line 140
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 141
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 143
    if-nez v0, :cond_0

    const-string v1, "KT"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/16 v0, 0x64

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v4, :cond_3

    .line 150
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 151
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 153
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->network_op_mode:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 157
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 160
    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_domain:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 162
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v8, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 172
    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_domain:I

    if-ne v1, v4, :cond_0

    .line 177
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v8, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 185
    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 187
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_0

    .line 188
    :cond_7
    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->canShowAlert:Z

    .line 190
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->postDismissDialog()V

    goto/16 :goto_0
.end method

.method protected checkLockStatusOta()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/16 v6, 0x16

    const/16 v5, 0x11

    const/16 v4, 0x10

    .line 219
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 220
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->ms_op_mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_1

    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_3

    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v7, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_9

    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    :cond_7
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->ms_op_mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_8
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->ms_op_mode:I

    if-ne v1, v7, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-ne v1, v6, :cond_a

    .line 286
    :cond_9
    const/4 v0, 0x1

    .line 293
    :cond_a
    return v0
.end method

.method protected checkManagedRoamingDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 105
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 106
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->checkGsmServiceStatus()I

    move-result v2

    .line 107
    .local v2, "statusId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManagedRoamingDialog: srv_status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ss.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ss.getDataRegState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 108
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->pre_srv_status:I

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-nez v3, :cond_1

    .line 111
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, "airplaneMode":I
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v3, :cond_0

    .line 118
    const-string v3, "createManagedRoamingDialog show"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->createManagedRoamingDialog()V

    .line 128
    .end local v0    # "airplaneMode":I
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-ne v3, v5, :cond_0

    if-nez v2, :cond_0

    .line 123
    sget-boolean v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManagedRoamingDialog: Dismiss dialog, srv_staus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->dismissManagedRoamingDialog()V

    goto :goto_0
.end method

.method protected isNeedDelayed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 202
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 211
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QcrilKTRejectCause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 6

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "bOtaIsRunning":Z
    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 81
    if-nez v2, :cond_0

    const-string v3, "KT"

    const-string v4, "ril.card_operator"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "no"

    const-string v4, "ril.card_provisioned"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    :cond_0
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "IntentOtaInService":Landroid/content/Intent;
    const-string v3, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 89
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 101
    .end local v0    # "IntentOtaInService":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 96
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "IntentOtaNoService":Landroid/content/Intent;
    const-string v3, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
