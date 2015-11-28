.class Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;
.super Ljava/lang/Object;
.source "KrKtRejectCause.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mIsManagedRoamingDialogDisplayed:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->access$202(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;Z)Z

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "networkSettingIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->access$000(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "networkSettingIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->access$100(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->mStatusId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;->access$100(Lcom/android/internal/telephony/gsm/dev/KrKtRejectCause;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    move-result-object v1

    const-string v2, "kt_network_rej_code_status_lu_fail"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
