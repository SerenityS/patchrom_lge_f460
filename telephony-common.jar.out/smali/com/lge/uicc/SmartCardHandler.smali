.class public Lcom/lge/uicc/SmartCardHandler;
.super Landroid/os/Handler;
.source "SmartCardHandler.java"


# static fields
.field private static final EVENT_SMARTCARD_GET_APPTYPES:I = 0x3

.field private static final EVENT_SMARTCARD_GET_ATR:I = 0x2

.field private static final EVENT_SMARTCARD_SETUP:I = 0x0

.field private static final EVENT_SMARTCARD_TIMEOUT:I = 0xa

.field private static final EVENT_SMARTCARD_TRANSMIT:I = 0x1


# instance fields
.field private mResponseLock:Ljava/lang/Object;

.field private mTimeoutTimer:Ljava/util/Timer;

.field private return_bytes:[B


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    .line 45
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 47
    const-string v0, "card_state"

    const/4 v1, 0x0

    const-string v2, "PRESENT"

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method private cancelTimeoutTimer()V
    .locals 1

    .prologue
    .line 294
    const-string v0, "cancelTimeoutTimer"

    invoke-static {v0}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->mTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 297
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/lge/uicc/SmartCardHandler;->removeMessages(I)V

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->mTimeoutTimer:Ljava/util/Timer;

    .line 300
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartCardHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logs(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartCardHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private registerTimeoutTimer(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    .line 284
    const-string v0, "registerTimeoutTimer"

    invoke-static {v0}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->mTimeoutTimer:Ljava/util/Timer;

    .line 286
    iget-object v0, p0, Lcom/lge/uicc/SmartCardHandler;->mTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lge/uicc/SmartCardHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/uicc/SmartCardHandler$1;-><init>(Lcom/lge/uicc/SmartCardHandler;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 291
    return-void
.end method


# virtual methods
.method protected declared-synchronized getATR()[B
    .locals 6

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    const-string v3, "atr"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "atr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 132
    :goto_0
    monitor-exit p0

    return-object v3

    .line 120
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v2

    .line 121
    .local v2, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v2, :cond_1

    .line 122
    const-string v3, "RIL==null"

    invoke-static {v3}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    const/4 v3, 0x2

    :try_start_2
    const-string v5, "GET_ATR"

    invoke-virtual {p0, v3, v5}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->smartCardGetATR(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    iget-object v3, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    monitor-exit v4

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    .end local v0    # "atr":Ljava/lang/String;
    .end local v2    # "ril":Lcom/android/internal/telephony/RIL;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 129
    .restart local v0    # "atr":Ljava/lang/String;
    .restart local v2    # "ril":Lcom/android/internal/telephony/RIL;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "interrupted while trying to get atr"

    invoke-static {v3}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized getAppTypes([B)[B
    .locals 11
    .param p1, "in"    # [B

    .prologue
    const/4 v8, 0x0

    .line 139
    monitor-enter p0

    const/4 v7, -0x1

    .line 140
    .local v7, "slotId":I
    if-nez p1, :cond_0

    .line 141
    :try_start_0
    const-string v9, "no slot data, reguard slot 0"

    invoke-static {v9}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V

    .line 142
    const/4 v7, 0x0

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 146
    .local v4, "p":Landroid/os/Parcel;
    const/4 v9, 0x0

    array-length v10, p1

    invoke-virtual {v4, p1, v9, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 147
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 150
    if-gez v7, :cond_1

    .line 151
    const/4 v7, 0x0

    .line 154
    :cond_1
    invoke-static {v7}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v6

    .line 155
    .local v6, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v6, :cond_2

    .line 156
    const-string v9, "RIL==null"

    invoke-static {v9}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return-object v8

    .line 160
    :cond_2
    :try_start_1
    invoke-static {v7}, Lcom/lge/uicc/IccTools;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 161
    .local v2, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v2, :cond_3

    .line 162
    const-string v9, "UiccCard is not ready"

    invoke-static {v9}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v2    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v4    # "p":Landroid/os/Parcel;
    .end local v6    # "ril":Lcom/android/internal/telephony/RIL;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 166
    .restart local v2    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v4    # "p":Landroid/os/Parcel;
    .restart local v6    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_3
    const/4 v1, 0x0

    .line 168
    .local v1, "appTypes":I
    :try_start_2
    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 169
    const/4 v8, 0x7

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 170
    .local v0, "SELECT_DF_GSM":[B
    iget-object v9, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    const/4 v8, 0x3

    :try_start_3
    const-string v10, "GET_APPTYPES"

    invoke-virtual {p0, v8, v10}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lcom/android/internal/telephony/RIL;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :try_start_4
    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    :goto_1
    :try_start_5
    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    if-eqz v8, :cond_6

    .line 178
    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    array-length v8, v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_8

    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    const/4 v10, 0x0

    aget-byte v8, v8, v10

    const/16 v10, 0x90

    if-ne v8, v10, :cond_4

    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    if-eqz v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    const/4 v10, 0x0

    aget-byte v8, v8, v10

    const/16 v10, 0x91

    if-ne v8, v10, :cond_8

    .line 180
    :cond_5
    const/4 v1, 0x3

    .line 185
    :cond_6
    :goto_2
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 191
    .end local v0    # "SELECT_DF_GSM":[B
    :cond_7
    :goto_3
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appTypes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 193
    .local v5, "reply":Landroid/os/Parcel;
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 174
    .end local v5    # "reply":Landroid/os/Parcel;
    .restart local v0    # "SELECT_DF_GSM":[B
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v8, "interrupted while trying to get apptypes."

    invoke-static {v8}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v8

    .line 182
    :cond_8
    const/4 v1, 0x2

    goto :goto_2

    .line 187
    .end local v0    # "SELECT_DF_GSM":[B
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v8

    if-eqz v8, :cond_7

    .line 188
    const/4 v1, 0x1

    goto :goto_3

    .line 169
    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x8t
        0xct
        0x2t
        0x7ft
        0x20t
    .end array-data
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "data":[B
    const/4 v4, 0x1

    .line 205
    .local v4, "isSmartCardResponse":Z
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 265
    :pswitch_0
    const-string v6, "ERROR: unknown event received!"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 275
    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 276
    :try_start_1
    iput-object v2, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    .line 277
    iget-object v6, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 281
    :cond_1
    :goto_1
    return-void

    .line 207
    :pswitch_1
    :try_start_2
    const-string v6, "EVENT_SMARTCARD_TRANSMIT"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 208
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 209
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 269
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 271
    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in SmartCardHandler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    if-eqz v4, :cond_1

    .line 275
    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 276
    :try_start_4
    iput-object v2, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    .line 277
    iget-object v6, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 213
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_5
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 214
    goto :goto_0

    .line 217
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v6, "EVENT_SMARTCARD_GET_ATR"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 219
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 273
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catchall_1
    move-exception v6

    if-eqz v4, :cond_3

    .line 275
    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 276
    :try_start_6
    iput-object v2, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    .line 277
    iget-object v8, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 273
    :cond_3
    throw v6

    .line 223
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_4
    :try_start_7
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, "SETUP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 224
    const/4 v4, 0x0

    .line 225
    const-string v6, "ATR loaded for setup."

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 227
    :cond_5
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 228
    const-string v6, "atr"

    const/4 v7, 0x0

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 232
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v6, "EVENT_SMARTCARD_GET_APPTYPES"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 233
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 234
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_6
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 239
    goto/16 :goto_0

    .line 242
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v6, "EVENT_SMARTCARD_TIMEOUT"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/lge/uicc/SmartCardHandler;->cancelTimeoutTimer()V

    .line 244
    const/4 v6, 0x2

    new-array v2, v6, [B

    .end local v2    # "data":[B
    fill-array-data v2, :array_0

    .line 245
    .restart local v2    # "data":[B
    goto/16 :goto_0

    .line 248
    :pswitch_5
    const/4 v4, 0x0

    .line 249
    const-string v6, "card_state"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PRESENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "EVENT_SMARTCARD_SETUP"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 253
    const-string v6, "card_state"

    invoke-static {v6, p0}, Lcom/lge/uicc/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    .line 255
    const-string v6, "load ATR for setup..."

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v5

    .line 257
    .local v5, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v5, :cond_0

    .line 259
    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 260
    const/4 v6, 0x2

    :try_start_8
    const-string v8, "SETUP"

    invoke-virtual {p0, v6, v8}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->smartCardGetATR(Landroid/os/Message;)V

    .line 261
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 278
    .end local v5    # "ril":Lcom/android/internal/telephony/RIL;
    :catchall_3
    move-exception v6

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v6

    :catchall_4
    move-exception v6

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v6

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 244
    :array_0
    .array-data 1
        -0x1t
        0x9t
    .end array-data
.end method

.method protected declared-synchronized transmit([B)[B
    .locals 11
    .param p1, "command"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    .line 51
    monitor-enter p0

    if-nez p1, :cond_0

    .line 52
    :try_start_0
    const-string v6, "no inputs"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-object v5

    .line 56
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v6}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v4

    .line 57
    .local v4, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v4, :cond_1

    .line 58
    const-string v6, "RIL==null"

    invoke-static {v6}, Lcom/lge/uicc/SmartCardHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    .end local v4    # "ril":Lcom/android/internal/telephony/RIL;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 62
    .restart local v4    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "KT"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    const-wide/16 v7, 0x2710

    invoke-direct {p0, v7, v8}, Lcom/lge/uicc/SmartCardHandler;->registerTimeoutTimer(J)V

    .line 67
    :cond_2
    const/4 v7, 0x1

    const-string v8, "TRANSMIT"

    invoke-virtual {p0, v7, v8}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Lcom/android/internal/telephony/RIL;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :try_start_4
    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :goto_1
    :try_start_5
    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    if-nez v7, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/lge/uicc/SmartCardHandler;->cancelTimeoutTimer()V

    .line 76
    monitor-exit v6

    goto :goto_0

    .line 112
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v7, "interrupted while trying to execute transmit"

    invoke-static {v7}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    const/16 v7, 0x6a

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    array-length v5, v5

    if-gt v5, v10, :cond_5

    .line 80
    const/4 v5, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    .line 81
    .local v3, "open_channel":[B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "LGU"

    aput-object v8, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    const-string v5, "[LGU+] channel is already opened. so close channel 3"

    invoke-static {v5}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 84
    const/4 v5, 0x4

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    .line 85
    .local v0, "close_channel":[B
    const/4 v5, 0x1

    const-string v7, "CLOSE"

    invoke-virtual {p0, v5, v7}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/RIL;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 87
    :try_start_8
    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 91
    :goto_2
    const/4 v5, 0x1

    :try_start_9
    const-string v7, "OPEN"

    invoke-virtual {p0, v5, v7}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/telephony/RIL;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 93
    :try_start_a
    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 110
    .end local v0    # "close_channel":[B
    .end local v3    # "open_channel":[B
    :cond_4
    :goto_3
    :try_start_b
    invoke-direct {p0}, Lcom/lge/uicc/SmartCardHandler;->cancelTimeoutTimer()V

    .line 111
    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    monitor-exit v6

    goto/16 :goto_0

    .line 88
    .restart local v0    # "close_channel":[B
    .restart local v3    # "open_channel":[B
    :catch_1
    move-exception v1

    .line 89
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    const-string v5, "interrupted while trying to close channel"

    invoke-static {v5}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 95
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    const-string v5, "interrupted while trying to open channel"

    invoke-static {v5}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    .end local v0    # "close_channel":[B
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "open_channel":[B
    :cond_5
    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    const/16 v7, 0x61

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    array-length v5, v5

    if-ne v5, v10, :cond_4

    .line 101
    const-string v5, "process get response command for 61xx status word"

    invoke-static {v5}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V

    .line 102
    const/4 v5, 0x5

    new-array v2, v5, [B

    const/4 v5, 0x0

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    aput-byte v7, v2, v5

    const/4 v5, 0x1

    const/16 v7, -0x40

    aput-byte v7, v2, v5

    const/4 v5, 0x2

    const/4 v7, 0x0

    aput-byte v7, v2, v5

    const/4 v5, 0x3

    const/4 v7, 0x0

    aput-byte v7, v2, v5

    const/4 v5, 0x4

    iget-object v7, p0, Lcom/lge/uicc/SmartCardHandler;->return_bytes:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    aput-byte v7, v2, v5

    .line 103
    .local v2, "get_response":[B
    const/4 v5, 0x1

    const-string v7, "GET_RESPONSE"

    invoke-virtual {p0, v5, v7}, Lcom/lge/uicc/SmartCardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/telephony/RIL;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 105
    :try_start_c
    iget-object v5, p0, Lcom/lge/uicc/SmartCardHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    .line 106
    :catch_3
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_d
    const-string v5, "interrupted while trying to get response"

    invoke-static {v5}, Lcom/lge/uicc/SmartCardHandler;->logd(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 80
    nop

    :array_0
    .array-data 1
        0x1t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 84
    nop

    :array_1
    .array-data 1
        0x3t
        0x70t
        -0x80t
        0x3t
    .end array-data
.end method
