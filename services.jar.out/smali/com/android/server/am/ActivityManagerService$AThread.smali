.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1924
    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    .line 1925
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1929
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1931
    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1933
    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1936
    const/4 v3, 0x0

    .line 1939
    .local v3, "m":Lcom/android/server/am/ActivityManagerService;
    :try_start_0
    const-string v4, "com.android.server.am.ActivityManagerServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1940
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1941
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1942
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    .line 1943
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "m":Lcom/android/server/am/ActivityManagerService;
    check-cast v3, Lcom/android/server/am/ActivityManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1951
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "m":Lcom/android/server/am/ActivityManagerService;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 1952
    new-instance v3, Lcom/android/server/am/ActivityManagerService;

    .end local v3    # "m":Lcom/android/server/am/ActivityManagerService;
    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerService;-><init>()V

    .line 1955
    .restart local v3    # "m":Lcom/android/server/am/ActivityManagerService;
    :cond_1
    monitor-enter p0

    .line 1956
    :try_start_1
    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1957
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    .line 1958
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$AThread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1960
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1962
    monitor-enter p0

    .line 1963
    :goto_1
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_2

    .line 1965
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1966
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1946
    .end local v3    # "m":Lcom/android/server/am/ActivityManagerService;
    :catch_1
    move-exception v2

    .line 1947
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v5, "Error while loading LGActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1948
    const/4 v3, 0x0

    .restart local v3    # "m":Lcom/android/server/am/ActivityManagerService;
    goto :goto_0

    .line 1960
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1969
    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1972
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1973
    const-string v4, "ActivityManager"

    const-string v5, "Enabled StrictMode logging for AThread\'s Looper"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1977
    return-void

    .line 1969
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method
