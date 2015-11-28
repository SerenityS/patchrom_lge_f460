.class Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
.super Ljava/lang/Object;
.source "VzwClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VzwClientScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;,
        Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;
    }
.end annotation


# static fields
.field private static final REQUEST_SCHDULE:I = 0x1

.field private static final REQUEST_START:I = 0x2


# instance fields
.field private final mClient:Lcom/vzw/location/server/VzwClient;

.field mCurrentFix:J

.field mFixArrivedTime:J

.field mFixLastRequestTime:J

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field mIsSingleShot:Z

.field mProviderHolder:Z

.field private mRunnable:Ljava/lang/Runnable;

.field mTTFF:I

.field mTimeBetweenFixed:J

.field mTotalFix:J

.field private final mVzwClientSchedulerThread:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;

.field private mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

.field mVzwCritera:Lcom/vzw/location/VzwCriteria;

.field final synthetic this$0:Lcom/vzw/location/server/VzwClientManager;


# direct methods
.method public constructor <init>(Lcom/vzw/location/server/VzwClientManager;Lcom/vzw/location/server/VzwClient;)V
    .locals 6
    .param p2, "client"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 317
    iput-object p1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 318
    iput-object p2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    .line 320
    invoke-virtual {p2}, Lcom/vzw/location/server/VzwClient;->getVzwCriteria()Lcom/vzw/location/VzwCriteria;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwCritera:Lcom/vzw/location/VzwCriteria;

    .line 321
    invoke-virtual {p2}, Lcom/vzw/location/server/VzwClient;->getVzwCriteria()Lcom/vzw/location/VzwCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    .line 322
    iput-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    .line 324
    invoke-virtual {p2}, Lcom/vzw/location/server/VzwClient;->getVzwCriteria()Lcom/vzw/location/VzwCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTimeBetweenFixed:J

    .line 325
    iget-boolean v1, p2, Lcom/vzw/location/server/VzwClient;->isSingleShot:Z

    iput-boolean v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mIsSingleShot:Z

    .line 327
    iput-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    .line 328
    iput v3, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTTFF:I

    .line 330
    iput-boolean v3, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mProviderHolder:Z

    .line 332
    const-string v1, "VzwClientManager"

    const-string v2, "[VzwClientScheduler]Start create & start mVzwClientSchedulerThread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v1, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;

    invoke-direct {v1, p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;-><init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThread:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;

    .line 334
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThread:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;

    invoke-virtual {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;->start()V

    .line 337
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClient;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->schedule()V

    return-void
.end method

.method static synthetic access$300(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;Lcom/vzw/location/VzwLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    .param p1, "x1"    # Lcom/vzw/location/VzwLocation;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->handleFix(Lcom/vzw/location/VzwLocation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;)Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private handleFix(Lcom/vzw/location/VzwLocation;)V
    .locals 8
    .param p1, "loc"    # Lcom/vzw/location/VzwLocation;

    .prologue
    .line 446
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] start.. uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v6}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    const-string v5, "Scheduler handleFix"

    # invokes: Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vzw/location/server/VzwClientManager;->access$1100(Lcom/vzw/location/server/VzwClientManager;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    .line 449
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] Save FixArrivedTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTTFF:I

    if-nez v4, :cond_1

    .line 453
    const-string v4, "VzwClientManager"

    const-string v5, "[handleFix] This is TimeToFirstFix."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iget-object v4, v4, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "VzwClientManager"

    const-string v5, "Status listener binder is DEAD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    iget-object v5, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v4, v5}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    .line 511
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTTFF:I

    .line 461
    const-string v4, "VzwClientManager"

    const-string v5, "[handleFix] Save mTTFF and reportOnFirstFix."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iget v5, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTTFF:I

    invoke-virtual {v4, v5}, Lcom/vzw/location/server/VzwClient;->reportOnFirstFix(I)Z

    .line 464
    :cond_1
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v4}, Lcom/vzw/location/server/VzwClient;->getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    move-result-object v4

    if-nez v4, :cond_2

    .line 466
    const-string v4, "VzwClientManager"

    const-string v5, "[handleFix] Location listener binder is DEAD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    iget-object v5, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v4, v5}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_0

    .line 470
    :cond_2
    const-string v4, "VzwClientManager"

    const-string v5, "[handleFix] Report Location to listener."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v4}, Lcom/vzw/location/server/VzwClient;->getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->callLocationChangedLocked(Lcom/vzw/location/VzwLocation;)Z

    .line 473
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    # getter for: Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;
    invoke-static {v4}, Lcom/vzw/location/server/VzwClientManager;->access$1000(Lcom/vzw/location/server/VzwClientManager;)Lcom/vzw/location/server/VzwLocationManagerService;

    move-result-object v4

    const-string v5, "vzw_lbs"

    invoke-virtual {v4, v5}, Lcom/vzw/location/server/VzwLocationManagerService;->getStatusUpdateTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 474
    .local v1, "newStatusUpdateTime":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    # getter for: Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;
    invoke-static {v4}, Lcom/vzw/location/server/VzwClientManager;->access$1000(Lcom/vzw/location/server/VzwClientManager;)Lcom/vzw/location/server/VzwLocationManagerService;

    move-result-object v4

    const-string v5, "vzw_lbs"

    invoke-virtual {v4, v5, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->getProviderStatus(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v3

    .line 477
    .local v3, "status":I
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iget-wide v4, v4, Lcom/vzw/location/server/VzwClient;->mLstStatusBroadcastTime:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iget-wide v4, v4, Lcom/vzw/location/server/VzwClient;->mLstStatusBroadcastTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 479
    :cond_3
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] Calling callStatusChangedLocked. status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iput-wide v1, v4, Lcom/vzw/location/server/VzwClient;->mLstStatusBroadcastTime:J

    .line 481
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v4}, Lcom/vzw/location/server/VzwClient;->getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    move-result-object v4

    const-string v5, "vzw_lbs"

    invoke-virtual {v4, v5, v3, v0}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 484
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mProviderHolder:Z

    .line 487
    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    iget-object v4, v4, Lcom/vzw/location/server/VzwClientManager;->mTracker:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 488
    const-string v4, "VzwClientManager"

    const-string v5, "[handleFix] Stop next fix due to no longer client exist."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    :cond_5
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mIsSingleShot:Z

    if-nez v4, :cond_8

    .line 494
    iget-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    .line 495
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] Since it is tracking fix. increased currentFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 497
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] Tracking with -1 total fix. currentFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TotalFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->schedule()V

    goto/16 :goto_0

    .line 500
    :cond_6
    iget-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 501
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] Tracking fix is not finished yet. currentFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TotalFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->schedule()V

    goto/16 :goto_0

    .line 504
    :cond_7
    const-string v4, "VzwClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFix] All tracking fix is done. finish() it. currentFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TotalFix="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->finish()V

    goto/16 :goto_0

    .line 508
    :cond_8
    const-string v4, "VzwClientManager"

    const-string v5, "[handleFix] It is singleFix request. finish() it."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->finish()V

    goto/16 :goto_0
.end method

.method private schedule()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 514
    const-string v0, "VzwClientManager"

    const-string v1, "[schedule] Start schedule for next fix. let\'s calculate time betweenfied."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    const-string v1, "Scheduler schedule start"

    # invokes: Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vzw/location/server/VzwClientManager;->access$1100(Lcom/vzw/location/server/VzwClientManager;Ljava/lang/String;)V

    .line 517
    iget v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTTFF:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTimeBetweenFixed:J

    mul-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 518
    :cond_0
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[schedule] Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[schedule] It came late or first fix. Start immediately. FixArrivedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FixLastRequestTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimeBetweenFixed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTimeBetweenFixed:J

    mul-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->handleEnQueueRequest()Z

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    const-string v1, "Scheduler schedule end"

    # invokes: Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vzw/location/server/VzwClientManager;->access$1100(Lcom/vzw/location/server/VzwClientManager;Ljava/lang/String;)V

    .line 543
    return-void

    .line 523
    :cond_1
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[schedule] Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[schedule] It came early. Set delay for next fix. FixArrivedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FixLastRequestTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimeBetweenFixed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTimeBetweenFixed:J

    mul-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Delayed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTimeBetweenFixed:J

    mul-long/2addr v2, v8

    iget-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$1;-><init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mRunnable:Ljava/lang/Runnable;

    .line 539
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTimeBetweenFixed:J

    mul-long/2addr v2, v8

    iget-wide v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixArrivedTime:J

    iget-wide v6, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->handleStartRequest()Z

    goto/16 :goto_0
.end method

.method private start()V
    .locals 9

    .prologue
    .line 411
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] Send request Navigating to VLMS. TotalFix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CurrentFix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSingleShot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mIsSingleShot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v4, 0x0

    .line 413
    .local v4, "isFinalFix":Z
    const/4 v6, 0x0

    .line 414
    .local v6, "requestResult":Z
    iget-boolean v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mIsSingleShot:Z

    if-eqz v0, :cond_3

    .line 415
    const-string v0, "VzwClientManager"

    const-string v1, "[start] This is SingleShot & FinalFix."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v4, 0x1

    .line 422
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    .line 423
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] Save FixLastRequestTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mFixLastRequestTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    # getter for: Lcom/vzw/location/server/VzwClientManager;->mVzwLocSrv:Lcom/vzw/location/server/VzwLocationManagerService;
    invoke-static {v0}, Lcom/vzw/location/server/VzwClientManager;->access$1000(Lcom/vzw/location/server/VzwClientManager;)Lcom/vzw/location/server/VzwLocationManagerService;

    move-result-object v0

    const-string v1, "vzw_lbs"

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwCritera:Lcom/vzw/location/VzwCriteria;

    iget-object v3, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v3}, Lcom/vzw/location/server/VzwClient;->getVzwGpsConfigInit()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v3

    iget-object v5, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iget v5, v5, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/server/VzwLocationManagerService;->requestStartNavigating(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsConfigInit;ZI)Z

    move-result v6

    .line 426
    if-eqz v6, :cond_2

    .line 427
    iget v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTTFF:I

    if-nez v0, :cond_1

    .line 428
    const-string v0, "VzwClientManager"

    const-string v1, "[start] GPS_EVENT_STARTED."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    .line 431
    :cond_1
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] requestStartNavigating success. Set providerHolder true. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mProviderHolder:Z

    .line 434
    :cond_2
    return-void

    .line 418
    :cond_3
    iget-wide v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mTotalFix:J

    iget-wide v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mCurrentFix:J

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 419
    const-string v0, "VzwClientManager"

    const-string v1, "[start] This is Tracking & FinalFix."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 438
    const-string v0, "VzwClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[finish] Remove from schedule list. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwClient;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v0, v1}, Lcom/vzw/location/server/VzwClientManager;->killSchedule(Lcom/vzw/location/server/VzwClient;)V

    .line 440
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vzw/location/server/VzwClient;->setCurrScheduler(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V

    .line 441
    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    const-string v1, "Scheduler finish"

    # invokes: Lcom/vzw/location/server/VzwClientManager;->printAllLists(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vzw/location/server/VzwClientManager;->access$1100(Lcom/vzw/location/server/VzwClientManager;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->handleStartRequest()Z

    .line 443
    return-void
.end method

.method public handleEnQueueRequest()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 388
    const-string v1, "VzwClientManager"

    const-string v3, "[enQueueRequest] Came into enQueueRequest"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    monitor-enter v3

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->removeMessages(I)V

    .line 391
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 392
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;

    iget-boolean v1, v1, Lcom/vzw/location/server/VzwClient;->isSingleShot:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 393
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    const-string v1, "VzwClientManager"

    const-string v4, "[enQueueRequest] Message sent to handler."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v3

    .line 396
    return v2

    .line 392
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 395
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleStartRequest()Z
    .locals 4

    .prologue
    .line 400
    const-string v1, "VzwClientManager"

    const-string v2, "[handleRequestStart] Came into handleRequestStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    monitor-enter v2

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->removeMessages(I)V

    .line 403
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    const-string v1, "VzwClientManager"

    const-string v3, "[handleRequestStart] Message sent to handler."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    monitor-exit v2

    .line 407
    const/4 v1, 0x1

    return v1

    .line 406
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
