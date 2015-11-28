.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;
.super Ljava/lang/Object;
.source "CdmaLteServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTDDNoSVCDuring3min()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/16 v3, 0x44e

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setTddStatus(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$102(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
