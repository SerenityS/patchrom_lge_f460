.class public Lcom/lge/uicc/EapAkaHandler;
.super Landroid/os/Handler;
.source "EapAkaHandler.java"


# static fields
.field private static final EVENT_AUTH_TIMEOUT:I = 0x2

.field private static final EVENT_GET_AUTH_DONE:I = 0x1


# instance fields
.field private authResult:Landroid/os/Parcel;

.field private mResponseLock:Ljava/lang/Object;

.field private mTimeoutTimer:Ljava/util/Timer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->authResult:Landroid/os/Parcel;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->mResponseLock:Ljava/lang/Object;

    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimeoutTimer()V
    .locals 1

    .prologue
    const-string v0, "cancelTimeoutTimer"

    invoke-static {v0}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->mTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/uicc/EapAkaHandler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->mTimeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EapAkaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EapAkaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EapAkaHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    return-void
.end method

.method private registerTimeoutTimer(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    const-string v0, "registerTimeoutTimer"

    invoke-static {v0}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->mTimeoutTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/lge/uicc/EapAkaHandler;->mTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lge/uicc/EapAkaHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/uicc/EapAkaHandler$1;-><init>(Lcom/lge/uicc/EapAkaHandler;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized authenticate([B)[B
    .locals 19
    .param p1, "data"    # [B

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "no inputs"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .local v13, "p":Landroid/os/Parcel;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "rand":[B
    if-nez v14, :cond_1

    const-string v2, "invalid rand"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rand_length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, "rand_s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rand: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logp(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "autn":[B
    if-nez v10, :cond_2

    const-string v2, "invalid autn"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autn_length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .local v5, "autn_s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logp(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "slotId":I
    if-gez v16, :cond_3

    const/16 v16, 0x0

    :cond_3
    invoke-virtual {v13}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "invalid input"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    const/4 v2, 0x1

    move/from16 v0, v16

    invoke-static {v0, v2}, Lcom/lge/uicc/IccTools;->getApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    .local v11, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_5

    if-nez v11, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ril="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", cardApp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/uicc/EapAkaHandler;->mResponseLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v6, 0x3e8

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/lge/uicc/EapAkaHandler;->registerTimeoutTimer(J)V

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    array-length v4, v14

    array-length v6, v10

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lge/uicc/EapAkaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/RIL;->getUsimAuthentication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/EapAkaHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .local v15, "reply":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/EapAkaHandler;->authResult:Landroid/os/Parcel;

    if-nez v2, :cond_8

    const-string v2, "auth timeout"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "LGU"

    aput-object v6, v2, v4

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    monitor-exit v17

    goto/16 :goto_0

    .end local v15    # "reply":Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v1    # "ril":Lcom/android/internal/telephony/RIL;
    .end local v3    # "rand_s":Ljava/lang/String;
    .end local v5    # "autn_s":Ljava/lang/String;
    .end local v10    # "autn":[B
    .end local v11    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v13    # "p":Landroid/os/Parcel;
    .end local v14    # "rand":[B
    .end local v16    # "slotId":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "ril":Lcom/android/internal/telephony/RIL;
    .restart local v3    # "rand_s":Ljava/lang/String;
    .restart local v5    # "autn_s":Ljava/lang/String;
    .restart local v10    # "autn":[B
    .restart local v11    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v13    # "p":Landroid/os/Parcel;
    .restart local v14    # "rand":[B
    .restart local v16    # "slotId":I
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "interrupted while trying to execute transmit"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v15    # "reply":Landroid/os/Parcel;
    :cond_7
    const/16 v2, 0x9

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/EapAkaHandler;->authResult:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "authRet":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/EapAkaHandler;->authResult:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "authData":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authRet: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authData: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logp(Ljava/lang/String;)V

    if-nez v9, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth success : return data size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_3
    invoke-virtual {v15}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    monitor-exit v17

    goto/16 :goto_0

    :cond_9
    const-string v2, "not correct SW1 SW2"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "LGU"

    aput-object v6, v2, v4

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .local v1, "data":Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/lge/uicc/EapAkaHandler;->cancelTimeoutTimer()V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "unknown event received!"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/lge/uicc/EapAkaHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v1, p0, Lcom/lge/uicc/EapAkaHandler;->authResult:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAll: result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/uicc/EapAkaHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :pswitch_0
    const-string v2, "EVENT_GET_AUTH_DONE"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1    # "data":Landroid/os/Parcel;
    check-cast v1, Landroid/os/Parcel;

    .restart local v1    # "data":Landroid/os/Parcel;
    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "EVENT_AUTH_TIMEOUT"

    invoke-static {v2}, Lcom/lge/uicc/EapAkaHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
