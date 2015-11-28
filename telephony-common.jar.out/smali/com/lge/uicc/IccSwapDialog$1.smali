.class Lcom/lge/uicc/IccSwapDialog$1;
.super Ljava/util/TimerTask;
.source "IccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/IccSwapDialog;->registerRebootTimer(JLandroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/IccSwapDialog;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/IccSwapDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lge/uicc/IccSwapDialog$1;->this$0:Lcom/lge/uicc/IccSwapDialog;

    iput-object p2, p0, Lcom/lge/uicc/IccSwapDialog$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/uicc/IccSwapDialog$1;->this$0:Lcom/lge/uicc/IccSwapDialog;

    iget-object v1, p0, Lcom/lge/uicc/IccSwapDialog$1;->this$0:Lcom/lge/uicc/IccSwapDialog;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lge/uicc/IccSwapDialog$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2, v3}, Lcom/lge/uicc/IccSwapDialog;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/IccSwapDialog;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method
