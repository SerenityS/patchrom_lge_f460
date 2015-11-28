.class public Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;
.super Lcom/android/internal/telephony/gsm/dev/KrRejectCause;
.source "KrKtRejectCause.java"


# static fields
.field private static final DELAYED_TIMEOUT:I = 0x7d0

.field private static final EVENT_WAIT_DELAYED_GMM_ACCEPT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"


# instance fields
.field private mCanShowAlert:Z

.field private mDelayedGmmAcceptTimeout:Z

.field private mIsManagedRoamingDialogDisplayed:Z

.field private mManagedRoamingDialog:Landroid/app/AlertDialog;

.field private mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mManagedRomaingDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNeedToWaitDelayedGmmAccept:Z

.field private mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mPrevServiceState:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "rejectMonitor"    # Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectCause;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mDelayedGmmAcceptTimeout:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mCanShowAlert:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPrevServiceState:I

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;-><init>(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRomaingDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$2;-><init>(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    return p1
.end method

.method private checkDelayedGmmAccept(Z)Z
    .locals 5
    .param p1, "showUi"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    move v0, p1

    .local v0, "showDeregUi":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mDelayedGmmAcceptTimeout:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->postDismissDialog()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mDelayedGmmAcceptTimeout:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->removeMessages(I)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mDelayedGmmAcceptTimeout:Z

    goto :goto_0
.end method

.method private checkProvisioning(Z)Z
    .locals 3
    .param p1, "showUi"    # Z

    .prologue
    move v0, p1

    .local v0, "showDeregUi":Z
    const-string v1, "ril.card_provisioned"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    if-nez v1, :cond_0

    const-string v1, "ril.card_operator"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const/16 v2, 0x64

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    :cond_0
    return v0
.end method

.method private checkScanningSkt(Z)Z
    .locals 6
    .param p1, "showUi"    # Z

    .prologue
    const/16 v5, 0x67

    move v1, p1

    .local v1, "showDeregUi":Z
    const/4 v0, 0x0

    .local v0, "isScanningSkt":Z
    const-string v2, "KT"

    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v5, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v5, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v5, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    goto :goto_0
.end method

.method private createManagedRoamingDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "airplane":I
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    const-string v2, "createManagedRoamingDialog show"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v3, "managed_roaming_dialog_content_kt"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "managed_roaming_dialog_kt_ok_button"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRomaingDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "managed_roaming_dialog_kt_cancel_button"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRomaingDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private dismissManagedRoamingDialog()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mManagedRoamingDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    :cond_0
    return-void
.end method

.method private getStatusId()Z
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v0, 0x0

    .local v0, "showDeregUi":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->getStatusFromRejectCause(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->getStatusFromRejectCause(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->updateStatusId(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    sparse-switch v1, :sswitch_data_0

    :goto_1
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->checkScanningSkt(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->checkProvisioning(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->checkDelayedGmmAccept(Z)Z

    move-result v0

    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    iput v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->initialize()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->dismissManagedRoamingDialog()V

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

    const-string v0, "ril.gsm.gmm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mDelayedGmmAcceptTimeout:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mCanShowAlert:Z

    return-void
.end method

.method private isNetworkSelectionFailed()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v2, "network_selection_fail_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkSelectionFailed return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->log(Ljava/lang/String;)V

    return v0
.end method

.method private isTempRejectAndNeedToWait()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v3, v3, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mLuAttempt:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v4, v4, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGprsAttachAttempt:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

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

    const-string v2, "[KT_REJ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processRejectCause()V
    .locals 10

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v3, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    .local v3, "prevStatusId":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    .local v2, "prevMmStatus":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmStatus:I

    .local v1, "prevGmmStatus":I
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isRejectDialogActive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->postDismissDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->getStatusId()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mCanShowAlert:Z

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevMmCause:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-eq v5, v6, :cond_1

    const-string v5, "ril.gsm.mm_cause"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iput v6, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevMmCause:I

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevGmmCause:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-eq v5, v6, :cond_2

    const-string v5, "ril.gsm.gmm_cause"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iput v6, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevGmmCause:I

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevStatusId:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    if-eq v5, v6, :cond_8

    const-string v5, "ril.gsm.reject_cause"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevStatusId:I

    const/16 v6, 0x67

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->postDismissDialog()V

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v6, v6, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    iput v6, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPrevStatusId:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mCanShowAlert:Z

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->processStatusId(Z)V

    :cond_5
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmAccepted:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmAccepted:Z

    if-eqz v5, :cond_9

    :cond_6
    const/4 v5, 0x2

    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v7, v7, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v8, v8, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v9, v9, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->notifyRejectCause(IIII)V

    :cond_7
    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->isNetworkSelectionFailed()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "network selection failed!!! processStatusId"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->log(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mCanShowAlert:Z

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->processStatusId(Z)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v5, "network_selection_fail_key"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "failed to commit network selection preference"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_9
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private processStatusId(Z)V
    .locals 7
    .param p1, "canShowAlert"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "nwMode":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_imsi_unknown"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_illegal_ms"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_illegal_me"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_cssrv_only"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->isRatLte()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v2, v2, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->createManagedRoamingDialog()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_lu_fail"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

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

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_nw_skt_scannced"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

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

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

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

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->log(Ljava/lang/String;)V

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

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    const-string v3, "kt_network_rej_code_status_lu_proceed"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

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

.method private updateStatusId(Z)Z
    .locals 7
    .param p1, "showUi"    # Z

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    move v0, p1

    .local v0, "showDeregUi":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-ne v1, v4, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-ne v1, v4, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v3, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iput v5, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmStatus:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-eq v1, v6, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-ne v1, v6, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    :cond_b
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkManagedRoamingDialogAtBoot()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->createManagedRoamingDialog()V

    :cond_0
    return-void
.end method

.method dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

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

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->log(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mDelayedGmmAcceptTimeout:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mNeedToWaitDelayedGmmAccept:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->processRejectCause()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method handleWcdmaAcceptReceived(ZZ)V
    .locals 0
    .param p1, "mmAccepted"    # Z
    .param p2, "gmmAccepted"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->processRejectCause()V

    return-void
.end method

.method handleWcdmaRejectReceived()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->processRejectCause()V

    return-void
.end method

.method isManualSelectionAvailable()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v0, v0, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

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

.method updateRegitrationStatus(ZZZZ)V
    .locals 3
    .param p1, "hasRegistered"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasDeregistered"    # Z
    .param p4, "hasGprsDetached"    # Z

    .prologue
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->initialize()V

    iput v2, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPrevServiceState:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mOtaMonitor:Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/dev/KrOtaMonitor;->notifyServiceStateIfNeeded(Z)V

    if-nez p3, :cond_2

    if-eqz p4, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mMmCause:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mGmmCause:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->createManagedRoamingDialog()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mCsRegistered:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mPsRegistered:Z

    if-eqz v1, :cond_3

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->dismissManagedRoamingDialog()V

    goto :goto_1
.end method
