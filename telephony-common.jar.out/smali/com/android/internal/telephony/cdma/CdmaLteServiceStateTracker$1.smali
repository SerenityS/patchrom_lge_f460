.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
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
    .line 1354
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/16 v1, 0x44d

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCTimeout:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTC : start TDD single lte no svc timer by user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCTimeout:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->access$102(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1360
    return-void
.end method
