.class Lcom/ctc/net/CTCPreferredNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "CTCPreferredNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctc/net/CTCPreferredNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctc/net/CTCPreferredNetwork;


# direct methods
.method constructor <init>(Lcom/ctc/net/CTCPreferredNetwork;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    iget-boolean v4, v4, Lcom/ctc/net/CTCPreferredNetwork;->isIntentDuplicate:Z

    if-nez v4, :cond_3

    const-string v4, "SetNetworkMode_CT_LTE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    const-string v4, "NetworkType"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, "setLteMode":I
    const/4 v3, -0x1

    .line 213
    .local v3, "tempNetMode":I
    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LTE ON/OFF tempNetMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setLteMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/ctc/net/CTCPreferredNetwork;->access$200(Lcom/ctc/net/CTCPreferredNetwork;Ljava/lang/String;)V

    .line 225
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 246
    .end local v1    # "setLteMode":I
    .end local v3    # "tempNetMode":I
    :cond_0
    :goto_1
    return-void

    .line 215
    .restart local v1    # "setLteMode":I
    .restart local v3    # "tempNetMode":I
    :pswitch_0
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # invokes: Lcom/ctc/net/CTCPreferredNetwork;->getLteOnNetworkMode()I
    invoke-static {v4}, Lcom/ctc/net/CTCPreferredNetwork;->access$000(Lcom/ctc/net/CTCPreferredNetwork;)I

    move-result v3

    .line 216
    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # invokes: Lcom/ctc/net/CTCPreferredNetwork;->getLteOffNetworkMode()I
    invoke-static {v4}, Lcom/ctc/net/CTCPreferredNetwork;->access$100(Lcom/ctc/net/CTCPreferredNetwork;)I

    move-result v3

    .line 220
    goto :goto_0

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # setter for: Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I
    invoke-static {v4, v3}, Lcom/ctc/net/CTCPreferredNetwork;->access$302(Lcom/ctc/net/CTCPreferredNetwork;I)I

    .line 230
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # getter for: Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/ctc/net/CTCPreferredNetwork;->access$400(Lcom/ctc/net/CTCPreferredNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "use_4g_single_data_network_onoff"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 233
    .local v2, "tddStatus":I
    if-ne v2, v7, :cond_2

    if-nez v1, :cond_2

    .line 234
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CTC : now tdd on setting, request lte on => lte only and band 41 but mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # getter for: Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I
    invoke-static {v6}, Lcom/ctc/net/CTCPreferredNetwork;->access$300(Lcom/ctc/net/CTCPreferredNetwork;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/ctc/net/CTCPreferredNetwork;->access$200(Lcom/ctc/net/CTCPreferredNetwork;Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # getter for: Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/ctc/net/CTCPreferredNetwork;->access$400(Lcom/ctc/net/CTCPreferredNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    invoke-virtual {v6, v7}, Lcom/ctc/net/CTCPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 236
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    iput-boolean v7, v4, Lcom/ctc/net/CTCPreferredNetwork;->isIntentDuplicate:Z

    goto :goto_1

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # getter for: Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/ctc/net/CTCPreferredNetwork;->access$400(Lcom/ctc/net/CTCPreferredNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # getter for: Lcom/ctc/net/CTCPreferredNetwork;->mSetNetworkType:I
    invoke-static {v5}, Lcom/ctc/net/CTCPreferredNetwork;->access$300(Lcom/ctc/net/CTCPreferredNetwork;)I

    move-result v5

    iget-object v6, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    invoke-virtual {v6, v7}, Lcom/ctc/net/CTCPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 241
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    iput-boolean v7, v4, Lcom/ctc/net/CTCPreferredNetwork;->isIntentDuplicate:Z

    goto :goto_1

    .line 242
    .end local v1    # "setLteMode":I
    .end local v2    # "tddStatus":I
    .end local v3    # "tempNetMode":I
    :cond_3
    const-string v4, "GetNetworkMode_CT_LTE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    const-string v5, "LTE ON/OFF getNetworkType"

    # invokes: Lcom/ctc/net/CTCPreferredNetwork;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/ctc/net/CTCPreferredNetwork;->access$200(Lcom/ctc/net/CTCPreferredNetwork;Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    # getter for: Lcom/ctc/net/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/ctc/net/CTCPreferredNetwork;->access$400(Lcom/ctc/net/CTCPreferredNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/ctc/net/CTCPreferredNetwork$1;->this$0:Lcom/ctc/net/CTCPreferredNetwork;

    invoke-virtual {v5, v8}, Lcom/ctc/net/CTCPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
