.class Lcom/android/internal/telephony/gfit/GfitUtils$2;
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
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v2, "receive ACTION_AIRPLANE_MODE_CHANGED"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I
    invoke-static {v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$300(Lcom/android/internal/telephony/gfit/GfitUtils;)I

    move-result v0

    .local v0, "systemSelection":I
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v2, "Remove EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE after ACTION_AIRPLANE_MODE_CHANGED"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z
    invoke-static {v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$400(Lcom/android/internal/telephony/gfit/GfitUtils;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    # getter for: Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$500(Lcom/android/internal/telephony/gfit/GfitUtils;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v2, "Switch to Global Mode after 30 secs"

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$602(Lcom/android/internal/telephony/gfit/GfitUtils;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$2;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const/16 v2, 0x7530

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V
    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$100(Lcom/android/internal/telephony/gfit/GfitUtils;IIII)V

    .end local v0    # "systemSelection":I
    :cond_1
    return-void
.end method
