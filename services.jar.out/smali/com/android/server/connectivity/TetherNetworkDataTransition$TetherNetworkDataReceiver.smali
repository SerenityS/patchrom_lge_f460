.class Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherNetworkDataTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetworkDataTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherNetworkDataReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;Lcom/android/server/connectivity/TetherNetworkDataTransition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;
    .param p2, "x1"    # Lcom/android/server/connectivity/TetherNetworkDataTransition$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;-><init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$102(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 174
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    # getter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 176
    const-string v4, "TetherNetworkDataTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetworkInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    # getter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    # invokes: Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyNetworkConnectivityChange()V
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$200(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "state":Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "reason":Ljava/lang/String;
    # getter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z
    invoke-static {}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$300()Z

    move-result v4

    if-ne v4, v7, :cond_1

    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    const-string v4, "connectionMipErrorCheck"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    invoke-virtual {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->readMipErrorCode()I

    move-result v1

    .line 194
    .local v1, "mipErrCode":I
    const-string v4, "TetherNetworkDataTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TETHER data connection failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "errCode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v1, :cond_3

    .line 197
    const/16 v4, 0x43

    if-ne v1, v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    # setter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z
    invoke-static {v4, v7}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$402(Lcom/android/server/connectivity/TetherNetworkDataTransition;Z)Z

    .line 203
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    # invokes: Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyNetworkConnectivityChange()V
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$200(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V

    goto :goto_0

    .line 207
    :cond_3
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "TETHER data connection keep cause : readMipErrorCode == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
