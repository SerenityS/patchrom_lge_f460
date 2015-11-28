.class public Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/SKTRejectCause;
.source "InfineonSKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_10SEC_TIMEOUT:I = 0x2710

.field private static final ISTESTSIMALLOWED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final MSG_ID_10SEC_DELAYED_TIMEOUT:I = 0x2


# instance fields
.field m10SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    new-instance v0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;

    .prologue
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->checkManagedRoamingDialog()V

    return-void
.end method

.method private checkManagedRoamingDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .local v4, "ss":Landroid/telephony/ServiceState;
    const/4 v2, 0x0

    .local v2, "mIsRoaming":Z
    const/4 v1, 0x0

    .local v1, "mIsNoservice":Z
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "airplaneMode":I
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isUsimRoaming()Z

    move-result v3

    .local v3, "mIsUsimRoaming":Z
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eq v5, v8, :cond_1

    :cond_0
    if-ne v3, v8, :cond_6

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->checkGsmServiceStatus()I

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkManagedRoamingDialog Noservice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , airplane: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", roaming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    const-string v5, "createManagedRoamingDialog"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->createManagedRoamingDialog()V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InfineonSKTRejectCause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, "bOtaIsRunning":Z
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "ril.card_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "card_operator":Ljava/lang/String;
    const-string v5, "ril.card_provisioned"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "card_provisioned":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "SKT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "IntentOtaInService":Landroid/content/Intent;
    const-string v5, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v0    # "IntentOtaInService":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "IntentOtaNoService":Landroid/content/Intent;
    const-string v5, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected processStatuId(I)V
    .locals 14
    .param p1, "statusId"    # I

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, "r":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .local v7, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "IsRoaming":Z
    sget-object v10, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .local v9, "ss":Landroid/telephony/ServiceState;
    const/4 v3, 0x1

    .local v3, "canShowAlert":Z
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isUsimRoaming()Z

    move-result v1

    .local v1, "IsUsimRoaming":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : statusId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "radio_tech : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->radio_tech:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-string v10, "ril.card_operator"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "card_operator":Ljava/lang/String;
    const-string v10, "ril.card_provisioned"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "card_provisioned":Ljava/lang/String;
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "no"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x0

    :cond_2
    sget-object v10, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .local v2, "am":Landroid/app/ActivityManager;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ss.getState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_4

    const-string v11, "com.lge.ota.SKTUsimDownloadActivity"

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    const-string v10, "gsm.lge.ota_is_running"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "pref.skt_ota_usim_download"

    const-string v11, "0"

    invoke-static {v10, v11}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : ignore Rejection code for SKT :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v4    # "card_operator":Ljava/lang/String;
    .end local v5    # "card_provisioned":Ljava/lang/String;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v4    # "card_operator":Ljava/lang/String;
    .restart local v5    # "card_provisioned":Ljava/lang/String;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_8
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : case 2 : srv_status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    const-string v10, "gsm.rc_2_rs_3_5.exist"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v0, :cond_9

    const-string v10, "SKT_NRC_02_INTER_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : case 2 :show dialog : msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_9
    const-string v10, "SKT_NRC_02_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_a
    const-string v10, "sp_SKT_NRC_02_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :pswitch_2
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v0, :cond_b

    const-string v10, "SKT_NRC_03_INTER_ILLEGAL_MS"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_b
    const-string v10, "SKT_NRC_03_ILLEGAL_MS"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_c
    const-string v10, "sp_SKT_NRC_03_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_3
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v0, :cond_d

    const-string v10, "SKT_NRC_06_INTER_ILLEGAL_ME"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_d
    const-string v10, "SKT_NRC_06_ILLEGAL_ME"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_e
    const-string v10, "sp_SKT_NRC_06_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :pswitch_4
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v0, :cond_f

    const-string v10, "SKT_NRC_07_INTER_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_f
    const-string v10, "SKT_NRC_07_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_10
    const-string v10, "sp_SKT_NRC_07_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :pswitch_5
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    :cond_11
    :goto_6
    const-string v10, "SKT_NRC_14_GPRS_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_12
    if-eqz v0, :cond_11

    iget v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->radio_tech:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reject cause #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "receivce and roaming with skt sim card"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :pswitch_6
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    if-eqz v0, :cond_13

    const-string v10, "SKT_NRC_08_INTER_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_7
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_13
    const-string v10, "SKT_NRC_08_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_14
    const-string v10, "sp_SKT_NRC_08_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :pswitch_7
    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    :cond_15
    :goto_8
    :pswitch_8
    const/16 v10, 0xb

    if-ne p1, v10, :cond_18

    const-string v10, "SKT_NRC_11_PLMN_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_16
    :goto_9
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_17
    if-eqz v0, :cond_15

    iget v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->radio_tech:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reject cause #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "receivce and roaming with skt sim card"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_18
    const/16 v10, 0xc

    if-ne p1, v10, :cond_19

    const-string v10, "SKT_NRC_12_LOCATION_AREA_NOT_ALLOWED"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_19
    const/16 v10, 0xd

    if-ne p1, v10, :cond_1a

    const-string v10, "SKT_NRC_13_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_1a
    const/16 v10, 0xf

    if-ne p1, v10, :cond_16

    const-string v10, "SKT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    if-eqz v0, :cond_1b

    const-string v10, "SKT_NRC_15_INTER_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_1b
    const-string v10, "SKT_NRC_15_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_1c
    const-string v10, "sp_SKT_NRC_15_NO_NUM_NORMAL"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :pswitch_9
    iget v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    if-eqz v10, :cond_1d

    iget v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1d

    iget v10, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    :cond_1d
    const/16 v10, 0x10

    if-ne p1, v10, :cond_1f

    const-string v10, "SKT_NRC_16_MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1e
    :goto_a
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v3, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_1f
    const/16 v10, 0x11

    if-ne p1, v10, :cond_20

    const-string v10, "SKT_NRC_17_NETWORK_FAILURE"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_20
    const/16 v10, 0x16

    if-ne p1, v10, :cond_1e

    const-string v10, "SKT_NRC_22_CONGESTION"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
