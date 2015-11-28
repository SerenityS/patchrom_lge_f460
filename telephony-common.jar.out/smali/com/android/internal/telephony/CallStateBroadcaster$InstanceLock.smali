.class public Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# instance fields
.field locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    .line 55
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    # setter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    .line 60
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->unlock()V

    .line 82
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    if-eqz v0, :cond_1

    .line 67
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 70
    # getter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$000()Lcom/android/internal/telephony/CallStateBroadcaster;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CallStateBroadcaster;->dispose()V
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$200(Lcom/android/internal/telephony/CallStateBroadcaster;)V

    .line 72
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    .line 75
    monitor-exit v1

    .line 77
    :cond_1
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
