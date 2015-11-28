.class Lcom/lge/uicc/IccSwapDialog$3;
.super Ljava/lang/Object;
.source "IccSwapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/IccSwapDialog;->onIccSwapEx(Z)V
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
    .line 176
    iput-object p1, p0, Lcom/lge/uicc/IccSwapDialog$3;->this$0:Lcom/lge/uicc/IccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog$3;->this$0:Lcom/lge/uicc/IccSwapDialog;

    # getter for: Lcom/lge/uicc/IccSwapDialog;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$000(Lcom/lge/uicc/IccSwapDialog;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 180
    :try_start_0
    const-string v1, "Reboot due to SIM swap"

    # invokes: Lcom/lge/uicc/IccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$100(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog$3;->this$0:Lcom/lge/uicc/IccSwapDialog;

    # getter for: Lcom/lge/uicc/IccSwapDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/uicc/IccSwapDialog;->access$200(Lcom/lge/uicc/IccSwapDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 182
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 183
    monitor-exit v2

    .line 184
    return-void

    .line 183
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
