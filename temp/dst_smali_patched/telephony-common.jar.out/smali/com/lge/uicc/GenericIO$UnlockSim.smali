.class Lcom/lge/uicc/GenericIO$UnlockSim;
.super Landroid/os/Handler;
.source "GenericIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/GenericIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSim"
.end annotation


# instance fields
.field private mResponseLock:Ljava/lang/Object;

.field private mResult:I

.field final synthetic this$0:Lcom/lge/uicc/GenericIO;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/GenericIO;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->this$0:Lcom/lge/uicc/GenericIO;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResult:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResponseLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/GenericIO;Lcom/lge/uicc/GenericIO$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/GenericIO;
    .param p2, "x1"    # Lcom/lge/uicc/GenericIO$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/uicc/GenericIO$UnlockSim;-><init>(Lcom/lge/uicc/GenericIO;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResponseLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supplyPinPuk: ar.exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/uicc/GenericIO;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/uicc/GenericIO;->access$100(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResult:I

    iget-object v1, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized supplyPinPukRemote([B)[B
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v7, "supplyPinPuk: no inputs"

    # invokes: Lcom/lge/uicc/GenericIO;->loge(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/lge/uicc/GenericIO;->access$200(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "p":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, p1

    invoke-virtual {v1, p1, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "subscription":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "puk":Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v4

    .local v4, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : pin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ril="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/lge/uicc/GenericIO;->loge(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/lge/uicc/GenericIO;->access$200(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "puk":Ljava/lang/String;
    .end local v4    # "ril":Lcom/android/internal/telephony/RIL;
    .end local v5    # "subscription":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v1    # "p":Landroid/os/Parcel;
    .restart local v2    # "pin":Ljava/lang/String;
    .restart local v3    # "puk":Ljava/lang/String;
    .restart local v4    # "ril":Lcom/android/internal/telephony/RIL;
    .restart local v5    # "subscription":I
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResponseLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    :try_start_3
    invoke-virtual {p0}, Lcom/lge/uicc/GenericIO$UnlockSim;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/android/internal/telephony/RIL;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    const/4 v6, 0x0

    :try_start_4
    iput v6, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResult:I

    iget-object v6, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    const/4 v6, 0x1

    :try_start_5
    new-array v6, v6, [B

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/uicc/GenericIO$UnlockSim;->mResult:I

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    invoke-virtual {p0}, Lcom/lge/uicc/GenericIO$UnlockSim;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v3, v2, v6}, Lcom/android/internal/telephony/RIL;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "supplyPinPuk: interrupted"

    # invokes: Lcom/lge/uicc/GenericIO;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/uicc/GenericIO;->access$200(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method
