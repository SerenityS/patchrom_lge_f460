.class Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;
.super Ljava/lang/Object;
.source "KrRejectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->showLocationFailDialogSKT(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    const-string v2, "telephony_dialog_ok_button showDialog onclick : "

    # invokes: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$000(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "networkSettingIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$400(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$4;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$200(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearStatusId()V

    .line 209
    return-void
.end method
