.class public Lcom/android/internal/telephony/CallStateBroadcaster;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallStateBroadcaster$3;,
        Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
    }
.end annotation


# static fields
.field private static final ACTION_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.detailedCallState"

.field private static final ACTION_TMUS_CFW_INFO:Ljava/lang/String; = "com.lge.phone.action.TMUS_CIQ_INFO"

.field private static final CALL_STATE_ENDED:Ljava/lang/String; = "ENDED"

.field static final DEBUG:Z

.field public static final ENABLED:Z

.field private static final EXTRA_CALL_CODE:Ljava/lang/String; = "CallCode"

.field private static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "CallNumber"

.field private static final EXTRA_CALL_STATE:Ljava/lang/String; = "CallState"

.field private static final PERMISSION_RECEIVE_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.receiveDetailedCallState"

.field static final TAG:Ljava/lang/String; = "GsmCallState"

.field private static sConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/internal/telephony/ConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

.field private static sInstanceLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/CallTracker;",
            "Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextConId:I

.field private static sStatusCodePerCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStatusCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSyncConn:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    const-string v0, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    .line 206
    const-string v0, "persist.lgiqc.ext"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    .line 213
    sput v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0

    :cond_1
    move v1, v2

    .line 206
    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallStateBroadcaster$2;-><init>(Lcom/android/internal/telephony/CallStateBroadcaster;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.phone.action.TMUS_CIQ_INFO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/internal/telephony/CallStateBroadcaster$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private Broadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private static CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "callState"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.phone.detailedCallState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CallState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "CallNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-object v0
.end method

.method private static GetStatus(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 186
    sget-boolean v0, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GsmCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EXTENSION] GetStatus - id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SendCallDisconnected(ILjava/lang/String;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cause"    # I

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method private SendCallDisconnected(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p3, :cond_3

    .line 156
    invoke-static {p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->GetStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "preStatus":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 158
    sget-boolean v2, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GsmCallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTENSION] id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preStatus is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    const-string v2, "ATTEMPTING"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    const-string v2, "ENDED"

    invoke-static {v2, p2}, Lcom/android/internal/telephony/CallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "CallCode"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    .line 166
    sget-boolean v2, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 167
    const-string v2, "GsmCallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTENSION]SendCallDisconnected : status = CALL_STATE_ENDED  cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "preStatus":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 32
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION]SendCallStatus : sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 38
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "statusCode":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .end local v0    # "statusCode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private SendCallStatus(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "statusString"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p3, :cond_1

    .line 143
    invoke-static {p3, p2}, Lcom/android/internal/telephony/CallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    .line 146
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION]SendCallStatus :  id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CallStateBroadcaster;->SetStatus(ILjava/lang/String;)V

    .line 152
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private static SetStatus(ILjava/lang/String;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] SetStatus - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, "ATTEMPTING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string v1, "GsmCallState"

    const-string v2, "[EXTENSION] Call state is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/telephony/CallStateBroadcaster;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster;

    .prologue
    .line 25
    sput-object p0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CallStateBroadcaster;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/telephony/CallStateBroadcaster;->dispose()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    return v0
.end method

.method public static addConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 244
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    .line 246
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/ConnectionState;-><init>()V

    .line 247
    .local v0, "connState":Lcom/android/internal/telephony/ConnectionState;
    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    sget v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    iput v1, v0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    .line 249
    sget v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_2

    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sNextConId:I

    .line 251
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispose()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method private static getConnectionState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;
    .locals 5
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 216
    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 228
    :goto_0
    return-object v1

    .line 218
    :cond_1
    const/4 v1, 0x0

    .line 220
    .local v1, "connState":Lcom/android/internal/telephony/ConnectionState;
    sget-object v3, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/ConnectionState;

    move-object v1, v0

    .line 223
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/ConnectionState;->conId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 224
    const/4 v1, 0x0

    .line 226
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static prepare(Landroid/content/Context;Lcom/android/internal/telephony/CallTracker;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callTracker"    # Lcom/android/internal/telephony/CallTracker;

    .prologue
    .line 379
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    const-string v2, "[EXTENSION] prepare"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "instanceLock":Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
    if-eqz v0, :cond_3

    .line 385
    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] prepare sInstanceLocks.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static release(Lcom/android/internal/telephony/CallTracker;)V
    .locals 3
    .param p0, "callTracker"    # Lcom/android/internal/telephony/CallTracker;

    .prologue
    .line 393
    sget-boolean v0, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GsmCallState"

    const-string v1, "[EXTENSION] release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    sget-boolean v0, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GsmCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EXTENSION] release sInstanceLocks.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static removeConnection(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/ConnectionState;)V
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "connState"    # Lcom/android/internal/telephony/ConnectionState;

    .prologue
    .line 232
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    if-nez p1, :cond_2

    .line 236
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/ConnectionState;

    move-object p1, v0

    .line 238
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, -0x1

    iput v1, p1, Lcom/android/internal/telephony/ConnectionState;->conId:I

    .line 239
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sendCallDisconnected(Lcom/android/internal/telephony/Connection;ILjava/lang/String;I)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "cause"    # I

    .prologue
    .line 336
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/CallStateBroadcaster;->getConnectionState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;

    move-result-object v0

    .line 339
    .local v0, "connState":Lcom/android/internal/telephony/ConnectionState;
    if-eqz v0, :cond_3

    .line 340
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] sendCallDisconnected : fail cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    iget v1, v0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    invoke-static {v1, p2, p3}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 347
    :cond_2
    :goto_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->removeConnection(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/ConnectionState;)V

    goto :goto_0

    .line 343
    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] sendCallDisconnected : not found, cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static sendCallDisconnected(Lcom/android/internal/telephony/Connection;ILjava/lang/String;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 5
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "discCause"    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    .prologue
    .line 352
    sget-boolean v2, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-nez v2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/CallStateBroadcaster;->getConnectionState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;

    move-result-object v1

    .line 355
    .local v1, "connState":Lcom/android/internal/telephony/ConnectionState;
    if-eqz v1, :cond_5

    .line 356
    const/16 v0, 0x10

    .line 358
    .local v0, "cause":I
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p3, v2, :cond_4

    .line 359
    const/16 v0, 0x1c

    .line 364
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GsmCallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTENSION] sendCallDisconnected : normal cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    iget v2, v1, Lcom/android/internal/telephony/ConnectionState;->conId:I

    invoke-static {v2, p2, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 371
    .end local v0    # "cause":I
    :cond_3
    :goto_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster;->removeConnection(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/ConnectionState;)V

    goto :goto_0

    .line 360
    .restart local v0    # "cause":I
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p3, v2, :cond_1

    .line 361
    const/16 v0, 0x66

    goto :goto_1

    .line 368
    .end local v0    # "cause":I
    :cond_5
    sget-boolean v2, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GsmCallState"

    const-string v3, "[EXTENSION] sendCallDisconnected : not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static sendCallStatus(Lcom/android/internal/telephony/Connection;ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 259
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/CallStateBroadcaster;->getConnectionState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;

    move-result-object v0

    .line 262
    .local v0, "connState":Lcom/android/internal/telephony/ConnectionState;
    if-eqz v0, :cond_0

    .line 264
    iput-object p3, v0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    .line 266
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] sendCallStatus : conId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    iget-object v2, v0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method public static sendFakeCallStatus(Lcom/android/internal/telephony/Connection;ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 325
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/CallStateBroadcaster;->getConnectionState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;

    move-result-object v0

    .line 328
    .local v0, "connState":Lcom/android/internal/telephony/ConnectionState;
    if-eqz v0, :cond_0

    .line 330
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CIQ EXTENSION] sendFakeCallStatus : state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    invoke-static {v1, p2, p3}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method public static updateCallStatus(Lcom/android/internal/telephony/Connection;ILjava/lang/String;Lcom/android/internal/telephony/DriverCall$State;Z)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p4, "changed"    # Z

    .prologue
    .line 273
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/CallStateBroadcaster;->getConnectionState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/ConnectionState;

    move-result-object v0

    .line 276
    .local v0, "connState":Lcom/android/internal/telephony/ConnectionState;
    if-eqz v0, :cond_0

    .line 278
    invoke-static {v0, p2, p3, p4}, Lcom/android/internal/telephony/CallStateBroadcaster;->updateCallStatusInternal(Lcom/android/internal/telephony/ConnectionState;Ljava/lang/String;Lcom/android/internal/telephony/DriverCall$State;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    sget-boolean v1, Lcom/android/internal/telephony/CallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 283
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXTENSION] updateCallStatus : dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    iget-object v2, v0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method private static updateCallStatusInternal(Lcom/android/internal/telephony/ConnectionState;Ljava/lang/String;Lcom/android/internal/telephony/DriverCall$State;Z)Z
    .locals 3
    .param p0, "connState"    # Lcom/android/internal/telephony/ConnectionState;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p3, "changed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 293
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 295
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    .line 320
    :goto_0
    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    .line 296
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 298
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 299
    :cond_2
    if-eqz p3, :cond_0

    .line 300
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$3;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 302
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 305
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 308
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 311
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
