.class Lcom/lge/uicc/MSimIccSwapDialog$4;
.super Landroid/os/CountDownTimer;
.source "MSimIccSwapDialog.java"


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
.method constructor <init>(Lcom/lge/uicc/MSimIccSwapDialog;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lge/uicc/MSimIccSwapDialog$4;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 208
    const-string v1, "Reboot due to SIM swap"

    # invokes: Lcom/lge/uicc/MSimIccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->access$100(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog$4;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    # getter for: Lcom/lge/uicc/MSimIccSwapDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/uicc/MSimIccSwapDialog;->access$200(Lcom/lge/uicc/MSimIccSwapDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 210
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SIM is Inserted."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 206
    return-void
.end method
