.class Lcom/android/internal/telephony/gfit/GfitUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "GfitUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xc9

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "stateExtra":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive ACTION_SIM_STATE_CHANGED stateExtra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "isUiccInserted":I
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v3, "Display VZW_GFIT_ICC_ABSENT after 3000 mSec"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V
    invoke-static {v2, v6, v5, v5, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$100(Lcom/android/internal/telephony/gfit/GfitUtils;IIII)V

    .end local v0    # "isUiccInserted":I
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "isUiccInserted":I
    .restart local v1    # "stateExtra":Ljava/lang/String;
    :cond_1
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v3, "Display VZW_GFIT_ICC_READY after 3000 mSec"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v3, "remove EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY from MSG queue"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/4 v3, 0x1

    const/16 v4, 0xbb8

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V
    invoke-static {v2, v6, v3, v5, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$100(Lcom/android/internal/telephony/gfit/GfitUtils;IIII)V

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$1;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V
    invoke-static {v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$200(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    goto :goto_0
.end method
