.class Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$5;
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
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$5;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$5;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    const-string v1, "telephony_dialog_cancel_button showDialog onclick : "

    # invokes: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$000(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$5;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$200(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearStatusId()V

    return-void
.end method
