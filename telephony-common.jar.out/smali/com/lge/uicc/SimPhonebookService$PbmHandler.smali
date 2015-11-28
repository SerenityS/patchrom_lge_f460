.class Lcom/lge/uicc/SimPhonebookService$PbmHandler;
.super Landroid/os/Handler;
.source "SimPhonebookService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/SimPhonebookService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbmHandler"
.end annotation


# instance fields
.field private mResponse:Ljava/lang/Object;

.field private mResponseLock:Ljava/lang/Object;

.field private pbm_get_init_state_mask:I

.field final synthetic this$0:Lcom/lge/uicc/SimPhonebookService;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/SimPhonebookService;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->this$0:Lcom/lge/uicc/SimPhonebookService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/SimPhonebookService;Lcom/lge/uicc/SimPhonebookService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/SimPhonebookService;
    .param p2, "x1"    # Lcom/lge/uicc/SimPhonebookService$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;-><init>(Lcom/lge/uicc/SimPhonebookService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/uicc/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/PbmInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/PbmInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/PbmRecord;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/PbmRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/uicc/SimPhonebookService$PbmHandler;ILcom/lge/uicc/PbmRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lge/uicc/PbmRecord;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/PbmRecord;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/uicc/SimPhonebookService$PbmHandler;III)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->deleteRecord(III)I

    move-result v0

    return v0
.end method

.method private deleteRecord(III)I
    .locals 7
    .param p1, "slot"    # I
    .param p2, "efdev"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-static {p1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v3

    .line 220
    .local v3, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v3, :cond_0

    .line 221
    const-string v4, "RIL==null"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/uicc/SimPhonebookService;->access$300(Ljava/lang/String;)V

    move v4, v5

    .line 234
    :goto_0
    return v4

    .line 224
    :cond_0
    iget-object v6, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v6

    .line 225
    const/16 v4, 0xe

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/telephony/RIL;->PBMDeleteRecord(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    iget-object v4, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponse:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .line 232
    .local v2, "result":[I
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    aget v4, v2, v4

    if-nez v4, :cond_1

    .line 233
    const/4 v4, 0x2

    aget v4, v2, v4

    monitor-exit v6

    goto :goto_0

    .line 235
    .end local v2    # "result":[I
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "interrupted while trying to deleteRecord"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "result":[I
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method private getInfo(II)Lcom/lge/uicc/PbmInfo;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "efdev"    # I

    .prologue
    .line 165
    invoke-static {p1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .line 166
    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v1, :cond_0

    .line 167
    const-string v2, "RIL==null"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->access$300(Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    .line 177
    :goto_0
    return-object v2

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/RIL;->PBMGetInfo(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    iget-object v2, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponse:Ljava/lang/Object;

    check-cast v2, Lcom/lge/uicc/PbmInfo;

    monitor-exit v3

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to getInfo"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readRecord(III)Lcom/lge/uicc/PbmRecord;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "efdev"    # I
    .param p3, "index"    # I

    .prologue
    .line 182
    invoke-static {p1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .line 183
    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v1, :cond_0

    .line 184
    const-string v2, "RIL==null"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->access$300(Ljava/lang/String;)V

    .line 185
    const/4 v2, 0x0

    .line 194
    :goto_0
    return-object v2

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    const/16 v2, 0xc

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/internal/telephony/RIL;->PBMReadRecord(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    iget-object v2, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponse:Ljava/lang/Object;

    check-cast v2, Lcom/lge/uicc/PbmRecord;

    monitor-exit v3

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to readRecord"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private writeRecord(ILcom/lge/uicc/PbmRecord;)I
    .locals 7
    .param p1, "slot"    # I
    .param p2, "record"    # Lcom/lge/uicc/PbmRecord;

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {p1}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v3

    .line 200
    .local v3, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v3, :cond_0

    .line 201
    const-string v4, "RIL==null"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/uicc/SimPhonebookService;->access$300(Ljava/lang/String;)V

    move v4, v5

    .line 214
    :goto_0
    return v4

    .line 204
    :cond_0
    iget-object v6, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v6

    .line 205
    const/16 v4, 0xd

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/telephony/RIL;->PBMWriteRecord(Lcom/lge/uicc/PbmRecord;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    iget-object v4, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponse:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .line 212
    .local v2, "result":[I
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    aget v4, v2, v4

    if-nez v4, :cond_1

    .line 213
    const/4 v4, 0x2

    aget v4, v2, v4

    monitor-exit v6

    goto :goto_0

    .line 215
    .end local v2    # "result":[I
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "interrupted while trying to writeRecord"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "result":[I
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x10000000

    const/4 v7, 0x1

    .line 73
    const/4 v4, -0x1

    .line 75
    .local v4, "slotId":I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 159
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$300(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 78
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 81
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 82
    iget v5, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    shl-int v6, v7, v4

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 84
    iget v5, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    shl-int v6, v7, v4

    or-int/2addr v5, v6

    iput v5, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    .line 86
    const-string v5, "pbm_state"

    invoke-static {v5, v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "READY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    const-string v5, "try to get PBM init state"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 88
    invoke-static {v4}, Lcom/lge/uicc/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v3

    .line 89
    .local v3, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v3, :cond_0

    .line 90
    iget-object v5, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->this$0:Lcom/lge/uicc/SimPhonebookService;

    # getter for: Lcom/lge/uicc/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/SimPhonebookService$PbmHandler;
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$200(Lcom/lge/uicc/SimPhonebookService;)Lcom/lge/uicc/SimPhonebookService$PbmHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/RIL;->PBMGetInitState(Landroid/os/Message;)V

    goto :goto_0

    .line 95
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ril":Lcom/android/internal/telephony/RIL;
    :pswitch_2
    const-string v5, "EVENT_RIL_PBM_GET_INIT_STATE_DONE"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 97
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 98
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PBM_GET_INIT_STATE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v9

    .line 103
    .local v2, "pb_init_done":I
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pb_init_done="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 106
    if-ne v2, v7, :cond_0

    .line 107
    const-string v5, "pbm_state"

    const-string v6, "READY"

    invoke-static {v5, v4, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 111
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "pb_init_done":I
    :pswitch_3
    const-string v5, "EVENT_PBREADY"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pbm_state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pbm_state"

    invoke-static {v6, v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 119
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "SPR"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    const-string v5, "PBREADY, but SPR carrier does not supports PBM on UICC"

    # invokes: Lcom/lge/uicc/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/SimPhonebookService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_3
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 127
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.PBM_INIT_COMPLETE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "PBM_INIT_COMPLETE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    invoke-static {v1}, Lcom/lge/uicc/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.PBM_INIT_COMPLETE_SLOT2"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "PBM_INIT_COMPLETE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-static {v1}, Lcom/lge/uicc/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.PBM_INIT_COMPLETE_SLOT3"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "PBM_INIT_COMPLETE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-static {v1}, Lcom/lge/uicc/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    monitor-enter v6

    .line 153
    :try_start_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponse:Ljava/lang/Object;

    .line 154
    iget-object v5, p0, Lcom/lge/uicc/SimPhonebookService$PbmHandler;->mResponseLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
