.class Landroid/net/CaptivePortalTracker$NoActiveNetworkState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoActiveNetworkState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p2, "x1"    # Landroid/net/CaptivePortalTracker$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->setNotificationOff()V
    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$3000(Landroid/net/CaptivePortalTracker;)V

    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v1, 0x0

    # setter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/CaptivePortalTracker;->access$3100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z
    invoke-static {v2, v0}, Landroid/net/CaptivePortalTracker;->access$3200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # setter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v0}, Landroid/net/CaptivePortalTracker;->access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$3300(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/CaptivePortalTracker;->access$3400(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a wifi connectivity change, ignore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/CaptivePortalTracker;->access$3500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
