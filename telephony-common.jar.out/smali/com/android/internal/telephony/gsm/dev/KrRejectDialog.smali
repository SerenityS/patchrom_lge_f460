.class Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;
.super Landroid/os/Handler;
.source "KrRejectDialog.java"


# static fields
.field private static final DIALOG_TIMEOUT:I = 0x1d4c0

.field private static final LOG_TAG:Ljava/lang/String; = "RejectMonitor"

.field private static final MSG_ID_TIMEOUT:I = 0x1


# instance fields
.field private mFailNotification:Landroid/app/Notification;

.field private mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mRejectDialog:Landroid/app/AlertDialog;

.field private mSuccessNotification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "rejectMonitor"    # Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->showLocationFailDialogSKT(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "RejectMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[REJ_DLG] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private showLocationFailDialogSKT(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "canShow"    # Z
    .param p3, "timeout"    # Z

    .prologue
    const/4 v3, 0x1

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
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

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLocationFailDialogSKT msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->postDismissDialog()V

    .line 189
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "telephony_dialog_cancel_button"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$5;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "telephony_dialog_ok_button"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$7;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 233
    const-string v0, "mRejectDialog show"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 234
    if-eqz p3, :cond_0

    .line 235
    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private showRejectNotiLGU(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->isUsimRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 243
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "UPLUS_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 252
    const v1, 0xc73b

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRejectNotiLGU msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 255
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_ID_TIMEOUT mRejectDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->postDismissDialog()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isRejectDialogActive()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUsimRoaming()Z
    .locals 2

    .prologue
    .line 258
    const-string v0, "true"

    const-string v1, "persist.radio.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method postDismissDialog()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "************** postDismissDialog()*********************"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->removeMessages(I)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    .line 85
    const-string v0, "************** mRejectDialog.dismiss()*********************"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method show(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "timeout"    # Z

    .prologue
    const/high16 v10, 0x10000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 91
    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "operator":Ljava/lang/String;
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    const-string v3, "LGU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->showRejectNotiLGU(Ljava/lang/String;)V

    .line 99
    :goto_0
    const-string v3, "showDialog return"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 97
    :cond_1
    const-string v3, "not LGU+ USIM : do not show GSM/WCDMA reject notification"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->postDismissDialog()V

    .line 107
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "telephony_dialog_ok_button"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    .line 125
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$2;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$3;-><init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 146
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->isUsimRoaming()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "networkSettingIntent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    .line 152
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 153
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    const/16 v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 154
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    const v4, 0x108008a

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "SKT_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SKT_ROAMING_FAIL_NOTIFICATION_CONTENT"

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 157
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 158
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const v3, 0xc73b

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mFailNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 161
    .end local v0    # "networkSettingIntent":Landroid/content/Intent;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 163
    const-string v3, "mRejectDialog show"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V

    .line 164
    if-eqz p2, :cond_0

    .line 165
    const-wide/32 v3, 0x1d4c0

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method
