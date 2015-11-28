.class Lcom/lge/uicc/MSimIccSwapDialog$1;
.super Ljava/util/TimerTask;
.source "MSimIccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/MSimIccSwapDialog;->registerRebootTimer(JLandroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/MSimIccSwapDialog;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/MSimIccSwapDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/lge/uicc/MSimIccSwapDialog$1;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    iput-object p2, p0, Lcom/lge/uicc/MSimIccSwapDialog$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/lge/uicc/MSimIccSwapDialog$1;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    iget-object v1, p0, Lcom/lge/uicc/MSimIccSwapDialog$1;->this$0:Lcom/lge/uicc/MSimIccSwapDialog;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lge/uicc/MSimIccSwapDialog$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2, v3}, Lcom/lge/uicc/MSimIccSwapDialog;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/MSimIccSwapDialog;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
