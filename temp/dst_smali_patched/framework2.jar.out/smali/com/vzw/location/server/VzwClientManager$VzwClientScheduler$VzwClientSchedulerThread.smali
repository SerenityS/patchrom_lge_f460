.class final Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;
.super Ljava/lang/Thread;
.source "VzwClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VzwClientSchedulerThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;


# direct methods
.method public constructor <init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "VzwClientManager"

    const-string v1, "[VzwClientSchedulerThread] VzwGpsLocationProviderThread. Create mVzwLocationProviderThreadHandler(VzwProviderHandler)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    new-instance v1, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;-><init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;Lcom/vzw/location/server/VzwClientManager$1;)V

    # setter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mVzwClientSchedulerThreadHandler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;
    invoke-static {v0, v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$502(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;)Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;

    iget-object v0, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThread;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$700(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
