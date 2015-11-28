.class Lcom/kddi/net/KDDIPreferredNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "KDDIPreferredNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/net/KDDIPreferredNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/net/KDDIPreferredNetwork;


# direct methods
.method constructor <init>(Lcom/kddi/net/KDDIPreferredNetwork;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    iget-boolean v3, v3, Lcom/kddi/net/KDDIPreferredNetwork;->isIntentDuplicate:Z

    if-nez v3, :cond_2

    const-string v3, "SetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string v3, "NetworkType"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, "setLteMode":I
    const/4 v2, -0x1

    .line 159
    .local v2, "tempNetMode":I
    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE ON/OFF tempNetMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setLteMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/kddi/net/KDDIPreferredNetwork;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/kddi/net/KDDIPreferredNetwork;->access$200(Lcom/kddi/net/KDDIPreferredNetwork;Ljava/lang/String;)V

    .line 171
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 183
    .end local v1    # "setLteMode":I
    .end local v2    # "tempNetMode":I
    :cond_0
    :goto_1
    return-void

    .line 161
    .restart local v1    # "setLteMode":I
    .restart local v2    # "tempNetMode":I
    :pswitch_0
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    # invokes: Lcom/kddi/net/KDDIPreferredNetwork;->getLteOnNetworkMode()I
    invoke-static {v3}, Lcom/kddi/net/KDDIPreferredNetwork;->access$000(Lcom/kddi/net/KDDIPreferredNetwork;)I

    move-result v2

    .line 162
    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    # invokes: Lcom/kddi/net/KDDIPreferredNetwork;->getLteOffNetworkMode()I
    invoke-static {v3}, Lcom/kddi/net/KDDIPreferredNetwork;->access$100(Lcom/kddi/net/KDDIPreferredNetwork;)I

    move-result v2

    .line 166
    goto :goto_0

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    # setter for: Lcom/kddi/net/KDDIPreferredNetwork;->mSetNetworkType:I
    invoke-static {v3, v2}, Lcom/kddi/net/KDDIPreferredNetwork;->access$302(Lcom/kddi/net/KDDIPreferredNetwork;I)I

    .line 176
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    # getter for: Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/kddi/net/KDDIPreferredNetwork;->access$400(Lcom/kddi/net/KDDIPreferredNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    # getter for: Lcom/kddi/net/KDDIPreferredNetwork;->mSetNetworkType:I
    invoke-static {v4}, Lcom/kddi/net/KDDIPreferredNetwork;->access$300(Lcom/kddi/net/KDDIPreferredNetwork;)I

    move-result v4

    iget-object v5, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    invoke-virtual {v5, v6}, Lcom/kddi/net/KDDIPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 177
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    iput-boolean v6, v3, Lcom/kddi/net/KDDIPreferredNetwork;->isIntentDuplicate:Z

    goto :goto_1

    .line 178
    .end local v1    # "setLteMode":I
    .end local v2    # "tempNetMode":I
    :cond_2
    const-string v3, "GetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    const-string v4, "LTE ON/OFF getNetworkType"

    # invokes: Lcom/kddi/net/KDDIPreferredNetwork;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/kddi/net/KDDIPreferredNetwork;->access$200(Lcom/kddi/net/KDDIPreferredNetwork;Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    # getter for: Lcom/kddi/net/KDDIPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/kddi/net/KDDIPreferredNetwork;->access$400(Lcom/kddi/net/KDDIPreferredNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/net/KDDIPreferredNetwork$1;->this$0:Lcom/kddi/net/KDDIPreferredNetwork;

    invoke-virtual {v4, v5}, Lcom/kddi/net/KDDIPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
