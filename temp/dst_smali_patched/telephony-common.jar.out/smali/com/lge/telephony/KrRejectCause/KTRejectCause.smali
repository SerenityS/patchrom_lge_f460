.class public abstract Lcom/lge/telephony/KrRejectCause/KTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/RejectCauseBase;
.source "KTRejectCause.java"


# static fields
.field private static final DELAYED_TIMEOUT:I = 0x7d0

.field private static final MSG_ID_DELAYED_TIMEOUT:I = 0x1

.field private static final STATUS_DISPLAYED:I = 0x2

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_TIMER_IS_RUNNING:I = 0x1

.field private static bDelayedRejectRunning:Z

.field private static delayedStatus:I

.field protected static isManagedRoamingDialogDisplayed:Z


# instance fields
.field protected canShowAlert:Z

.field private isShowedTempRejectCause:Z

.field mDelayedTimeoutHandler:Landroid/os/Handler;

.field mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mStatusId:I

.field protected managedRoamingDialog:Landroid/app/AlertDialog;

.field onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field private prev_gmm_reject_cause:I

.field private prev_mm_reject_cause:I

.field private prev_srv_domain:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isManagedRoamingDialogDisplayed:Z

    sput-boolean v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->bDelayedRejectRunning:Z

    sput v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;-><init>()V

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_srv_domain:I

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_mm_reject_cause:I

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_gmm_reject_cause:I

    iput-boolean v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isShowedTempRejectCause:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    new-instance v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/KTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mDelayedTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;-><init>(Lcom/lge/telephony/KrRejectCause/KTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$3;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause$3;-><init>(Lcom/lge/telephony/KrRejectCause/KTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    sget v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    return p0
.end method

.method static synthetic access$100(Lcom/lge/telephony/KrRejectCause/KTRejectCause;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/KTRejectCause;

    .prologue
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/telephony/KrRejectCause/KTRejectCause;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/KTRejectCause;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->sendIntentForOTA(I)V

    return-void
.end method

.method private sendIntentForOTA(I)V
    .locals 3
    .param p1, "statusId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.REJECTE_CAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "rejectIntent":Landroid/content/Intent;
    const-string v1, "mmReject"

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gmmReject"

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "servicestate"

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->srv_status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ril.gsm.reject_cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v1, "Send intent REJECTE_CAUSE"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bManualSelectionAvailable()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract checkGsmServiceStatus()I
.end method

.method protected abstract checkLockStatusOta()Z
.end method

.method protected abstract checkManagedRoamingDialog()V
.end method

.method public clearRejectCause(II)Z
    .locals 2
    .param p1, "clear_mm"    # I
    .param p2, "clear_gmm"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearRejectCause() clear_mm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clear_gmm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected clearStatusId()V
    .locals 0

    .prologue
    return-void
.end method

.method protected createManagedRoamingDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "createManagedRoamingDialog show"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "managed_roaming_dialog_content_kt"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "managed_roaming_dialog_kt_ok_button"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "managed_roaming_dialog_kt_cancel_button"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sput-boolean v4, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isManagedRoamingDialogDisplayed:Z

    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const-string v1, "managedRoamingDialog show"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dismissManagedRoamingDialog()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isManagedRoamingDialogDisplayed:Z

    :cond_0
    return-void
.end method

.method protected getStatusIdFromRejectCause(II)I
    .locals 4
    .param p1, "cause"    # I
    .param p2, "statusId"    # I

    .prologue
    const/16 v3, 0x8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    if-ne v1, v3, :cond_3

    :cond_0
    iget p1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    :cond_1
    :goto_0
    const-string v1, "KT"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->camped_mcc:I

    const/16 v2, 0x1c2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->camped_mnc:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/16 p2, 0x67

    :cond_2
    if-nez p1, :cond_5

    move v0, p2

    .end local p2    # "statusId":I
    .local v0, "statusId":I
    :goto_1
    return v0

    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    if-ne v1, v3, :cond_4

    iget p1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_1

    move v0, p2

    .end local p2    # "statusId":I
    .restart local v0    # "statusId":I
    goto :goto_1

    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :cond_5
    packed-switch p1, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v0, p2

    .end local p2    # "statusId":I
    .restart local v0    # "statusId":I
    goto :goto_1

    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :pswitch_1
    const/4 p2, 0x2

    goto :goto_2

    :pswitch_2
    const/4 p2, 0x3

    goto :goto_2

    :pswitch_3
    const/4 p2, 0x6

    goto :goto_2

    :pswitch_4
    const/4 p2, 0x7

    goto :goto_2

    :pswitch_5
    const/16 p2, 0x8

    goto :goto_2

    :pswitch_6
    const/16 p2, 0x10

    goto :goto_2

    :pswitch_7
    const/16 p2, 0x9

    goto :goto_2

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

.method public initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->initialize()V

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->dismissManagedRoamingDialog()V

    const-string v0, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ril.gsm.service_domain_value"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ril.gsm.mm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->network_op_mode:I

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ril.gsm.gmm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-boolean v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isShowedTempRejectCause:Z

    return-void
.end method

.method protected abstract isNeedDelayed()Z
.end method

.method protected isNetworkSelectionFailed()Z
    .locals 4

    .prologue
    sget-object v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v2, "network_selection_fail_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "sel_result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkSelectionFailed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    return v0
.end method

.method protected abstract processIntentBroadcast()V
.end method

.method protected processRejectCause()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isRejectDialogActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->postDismissDialog()V

    :cond_0
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->checkManagedRoamingDialog()V

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->processIntentBroadcast()V

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->checkGsmServiceStatus()I

    move-result v2

    .local v2, "statusId":I
    if-eq v2, v8, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    :cond_1
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isNeedDelayed()Z

    move-result v3

    if-eqz v3, :cond_11

    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-nez v3, :cond_e

    sput v6, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    iget-object v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mDelayedTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v3, "mDelayedTimeoutHandler START!!!"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_mm_reject_cause:I

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    if-eq v3, v4, :cond_3

    const-string v3, "ril.gsm.mm_cause"

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_reject_cause:I

    iput v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_mm_reject_cause:I

    :cond_3
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_gmm_reject_cause:I

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    if-eq v3, v4, :cond_4

    const-string v3, "ril.gsm.gmm_cause"

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    iput v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_gmm_reject_cause:I

    :cond_4
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_srv_domain:I

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->srv_domain:I

    if-eq v3, v4, :cond_5

    const-string v3, "ril.gsm.service_domain_value"

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->srv_domain:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->srv_domain:I

    iput v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->prev_srv_domain:I

    :cond_5
    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    const-string v3, "no"

    const-string v4, "ril.card_provisioned"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_lu_attempt_counter:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_6

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gprs_attach_attempt_counter:I

    if-ge v3, v9, :cond_6

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_rau_attempt_counter:I

    if-lt v3, v9, :cond_15

    :cond_6
    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isShowedTempRejectCause:Z

    if-nez v3, :cond_7

    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-boolean v6, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isShowedTempRejectCause:Z

    const-string v3, "kt_network_rej_code_status_lu_proceed"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v3, v4, v6}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    :cond_7
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temp Reject : (mm_c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mm_lu_attempt_counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", grps_c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gprs_attach_attempt_counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gmm_c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_rau_attempt_counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStatusId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", statusId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    if-eq v3, v2, :cond_16

    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-eq v3, v6, :cond_9

    invoke-direct {p0, v2}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->sendIntentForOTA(I)V

    :cond_9
    const-string v3, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    const/16 v4, 0x67

    if-ne v3, v4, :cond_a

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->postDismissDialog()V

    :cond_a
    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->initialize()V

    :cond_b
    iput v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_c

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->srv_status:I

    if-ne v3, v8, :cond_c

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->srv_domain:I

    if-eq v3, v6, :cond_d

    :cond_c
    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->processStatuId(I)V

    :cond_d
    :goto_2
    return-void

    :cond_e
    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-ne v3, v6, :cond_f

    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    goto/16 :goto_0

    :cond_f
    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-ne v3, v8, :cond_2

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I

    if-eq v3, v2, :cond_10

    iput-boolean v6, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    goto/16 :goto_0

    :cond_10
    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    goto/16 :goto_0

    :cond_11
    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-ne v3, v6, :cond_12

    const-string v3, "mDelayedTimeoutHandler STOP!!!"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    sput v7, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    iget-object v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mDelayedTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_12
    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-ne v3, v8, :cond_2

    sput v7, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    goto/16 :goto_0

    :cond_13
    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-ne v3, v6, :cond_14

    const-string v3, "mDelayedTimeoutHandler STOP!!!"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    sput v7, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    iget-object v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mDelayedTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_14
    sget v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    if-ne v3, v8, :cond_2

    sput v7, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->delayedStatus:I

    goto/16 :goto_0

    :cond_15
    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isShowedTempRejectCause:Z

    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    goto/16 :goto_1

    :cond_16
    sget-object v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isNetworkSelectionFailed()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->processStatuId(I)V

    const-string v3, "network selection failed!!! processStatusId"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    sget-object v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v3, "network_selection_fail_key"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "failed to commit network selection preference"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected processStatuId(I)V
    .locals 7
    .param p1, "statusId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "nwMode":I
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v2, "kt_network_rej_code_status_imsi_unknown"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_2
    const-string v2, "kt_network_rej_code_status_illegal_ms"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_3
    const-string v2, "kt_network_rej_code_status_illegal_me"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_4
    const-string v2, "kt_network_rej_code_status_cssrv_only"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->radio_tech:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->gmm_reject_cause:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    :cond_1
    sget-object v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->createManagedRoamingDialog()V

    goto :goto_0

    :cond_2
    const-string v2, "kt_network_rej_code_status_lu_fail"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_6
    const-string v2, "gsm.lge.ota_is_running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "kt_network_rej_code_status_nw_skt_scannced"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_7
    const-string v2, "gsm.lge.ota_is_running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "kt_network_rej_code_status_nw_scanning"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x50

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v2, "STATUS_NW_SCANNING Toast show"

    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "toast":Landroid/widget/Toast;
    :sswitch_8
    const-string v2, "gsm.lge.ota_is_running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "kt_network_rej_code_status_lu_proceed"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0x10 -> :sswitch_8
        0x64 -> :sswitch_0
        0x67 -> :sswitch_6
    .end sparse-switch
.end method
