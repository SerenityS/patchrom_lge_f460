.class public Lcom/android/internal/telephony/gsm/dev/KrRejectCause;
.super Landroid/os/Handler;
.source "KrRejectCause.java"


# static fields
.field public static final CALL_CANNOT_BE_IDENTIFIED:I = 0x26

.field public static final CONGESTTION:I = 0x16

.field public static final GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x8

.field public static final GPRS_SERVICES_NOT_ALLOWED:I = 0x7

.field public static final GPRS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN:I = 0xe

.field public static final GSM_AUTH_UNACCEPTED:I = 0x17

.field public static final IE_NON_EXISTANT:I = 0x63

.field public static final ILLEGAL_ME:I = 0x6

.field public static final ILLEGAL_MS:I = 0x3

.field public static final IMEI_NOT_ACCEPTED:I = 0x5

.field public static final IMPLICITLY_DETACHED:I = 0xa

.field public static final IMSI_UNKNOWN_IN_HLR:I = 0x2

.field public static final IMSI_UNKNOWN_IN_VLR:I = 0x4

.field public static final INVALID_MANDATORY_INFO:I = 0x60

.field public static final LA_NOT_ALLOWED:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String; = "KrRejectCause"

.field public static final MAC_FAILURE:I = 0x14

.field public static final MESSAGE_TYPE_NON_EXISTANT:I = 0x61

.field public static final MESSAGE_TYPE_NOT_COMP_PRT_ST:I = 0x62

.field public static final MSC_TEMPORARILY_NOT_REACHABLE:I = 0x10

.field public static final MSG_ETC:I = 0x6f

.field public static final MSG_NOT_COMPATIBLE_PROTOCOL_STATE:I = 0x65

.field public static final MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK:I = 0x9

.field public static final NATIONAL_ROAMING_NOT_ALLOWED:I = 0xd

.field public static final NETWORK_FAILURE:I = 0x11

.field public static final NO_PDP_CONTEXT_ACTIVATED:I = 0x28

.field public static final NO_SUITABLE_CELLS_IN_LA:I = 0xf

.field public static final PLMN_NOT_ALLOWED:I = 0xb

.field static final PROPERTY_GMM_REJECT_CAUSE:Ljava/lang/String; = "ril.gsm.gmm_cause"

.field static final PROPERTY_MM_REJECT_CAUSE:Ljava/lang/String; = "ril.gsm.mm_cause"

.field static final PROPERTY_MM_REJECT_TEMP:Ljava/lang/String; = "ril.gsm.mm_temp"

.field static final REJECTCAUSE_NOTIFICATION_ID:I = 0xc73b

.field public static final REQ_SERV_OPT_NOT_SUBSCRIBED:I = 0x21

.field public static final RETRY_UPON_ENTRY_INTO_A_NEW_CELL_MAX_VALUE:I = 0x3f

.field public static final RETRY_UPON_ENTRY_INTO_A_NEW_CELL_MIN_VALUE:I = 0x30

.field public static final SEMANTICALLY_INCORRECT_MSG:I = 0x5f

.field public static final SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final SERVICE_OPT_OUT_OF_ORDER:I = 0x22

.field public static final STATUS_CSPS_FOLLOW_ON_REQ:I = 0x68

.field public static final STATUS_CSSRV_ONLY:I = 0x7

.field public static final STATUS_CS_FOLLOW_ON_REQ:I = 0x65

.field public static final STATUS_ILLEGAL_ME:I = 0x6

.field public static final STATUS_ILLEGAL_MS:I = 0x3

.field public static final STATUS_IMSI_UNKNOWN:I = 0x2

.field public static final STATUS_LU_FAIL:I = 0x8

.field public static final STATUS_LU_PROCEED:I = 0x10

.field public static final STATUS_NOT_OPENED_NUMBER:I = 0x64

.field public static final STATUS_NOT_SET:I = 0x0

.field public static final STATUS_NW_SCANNING:I = 0x9

.field public static final STATUS_NW_SKT_SCANNED:I = 0x67

.field public static final STATUS_PS_FOLLOW_ON_REQ:I = 0x66

.field public static final SYNCH_FAILURE:I = 0x15

.field static final SYS_SRV_MODE_LTE:I = 0x9

.field static final SYS_SRV_STATUS_LIMITED:I = 0x1

.field static final SYS_SRV_STATUS_LIMITED_REGIONAL:I = 0x3

.field static final SYS_SRV_STATUS_NONE:I = -0x1

.field static final SYS_SRV_STATUS_NO_SRV:I = 0x0

.field static final SYS_SRV_STATUS_PWR_SAVE:I = 0x4

.field static final SYS_SRV_STATUS_SRV:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static getStatusFromRejectCause(I)I
    .locals 1
    .param p0, "cause"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "status":I
    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static isTempReject(II)Z
    .locals 6
    .param p0, "mmCause"    # I
    .param p1, "gmmCause"    # I

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x11

    const/16 v3, 0x10

    const/4 v0, 0x0

    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTempReject mm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gmm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->log(Ljava/lang/String;)V

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "KrRejectCause"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static needToWait(III)Z
    .locals 4
    .param p0, "luAttempt"    # I
    .param p1, "gprsAttachAttempt"    # I
    .param p2, "rauAttempt"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToWait luAttempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gprsAttach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rauAttempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->log(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    if-ge p1, v3, :cond_0

    if-lt p2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
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

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;->log(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    return-void
.end method
