.class Lcom/lge/uicc/MSimIccSwapDialog$2;
.super Ljava/lang/Object;
.source "MSimIccSwapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/MSimIccSwapDialog;->onIccSwapEx(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/MSimIccSwapDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/MSimIccSwapDialog;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/uicc/MSimIccSwapDialog$2;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog$2;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    # getter for: Lcom/lge/uicc/MSimIccSwapDialog;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->access$000(Lcom/lge/uicc/MSimIccSwapDialog;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 154
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 155
    :try_start_0
    const-string v1, "Reboot due to SIM swap"

    # invokes: Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->access$100(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog$2;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    # getter for: Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->access$200(Lcom/lge/uicc/MSimIccSwapDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 157
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 162
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    monitor-exit v2

    .line 163
    return-void

    .line 159
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    iget-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog$2;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    # invokes: Lcom/lge/uicc/MSimIccSwapDialog;->cancelRebootTimer()V
    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->access$300(Lcom/lge/uicc/MSimIccSwapDialog;)V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
