.class Lcom/lge/uicc/IccSwapDialog$9;
.super Ljava/lang/Object;
.source "IccSwapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/IccSwapDialog;->onIccAbsentEx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/IccSwapDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/IccSwapDialog;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/lge/uicc/IccSwapDialog$9;->this$0:Lcom/lge/uicc/IccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lge/uicc/IccSwapDialog$9;->this$0:Lcom/lge/uicc/IccSwapDialog;

    # getter for: Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/uicc/IccSwapDialog;->access$000(Lcom/lge/uicc/IccSwapDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 433
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 434
    :try_start_0
    const-string v0, "Push the OK button!!"

    # invokes: Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/uicc/IccSwapDialog;->access$100(Ljava/lang/String;)V

    .line 435
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    :cond_0
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
