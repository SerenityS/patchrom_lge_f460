.class Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;
.super Ljava/lang/Object;
.source "KrRejectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancels mRejectDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mRejectDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$300(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$000(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$6;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    const-string v1, "************** onCancel *********************"

    # invokes: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$000(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;)V

    return-void
.end method
