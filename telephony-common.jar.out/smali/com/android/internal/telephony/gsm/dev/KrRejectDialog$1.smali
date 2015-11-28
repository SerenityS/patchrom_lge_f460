.class Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;
.super Ljava/lang/Object;
.source "KrRejectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->show(Ljava/lang/String;Z)V
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
    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    const-string v2, "showDialog onclick : "

    # invokes: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$000(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;)V

    .line 114
    const-string v1, "KR"

    const-string v2, "SKT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->isUsimRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "SKT_ROAMING_NETWORK_RESELECTION_GUIDE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "networtk_reseletion_guide_msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    # invokes: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->showLocationFailDialogSKT(Ljava/lang/String;ZZ)V
    invoke-static {v1, v0, v3, v3}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$100(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;Ljava/lang/String;ZZ)V

    .line 121
    .end local v0    # "networtk_reseletion_guide_msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog$1;->this$0:Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;

    # getter for: Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->mOwner:Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;->access$200(Lcom/android/internal/telephony/gsm/dev/KrRejectDialog;)Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/dev/KrRejectMonitor;->clearStatusId()V

    goto :goto_0
.end method
