.class Lcom/lge/media/SmartRingtone$3;
.super Ljava/lang/Object;
.source "SmartRingtone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/media/SmartRingtone;->onNoiseEstimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/media/SmartRingtone;


# direct methods
.method constructor <init>(Lcom/lge/media/SmartRingtone;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "arec startRecording cannot started"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v10, 0xf

    new-array v7, v10, [I

    .local v7, "tempAverage":[I
    const/4 v8, 0x0

    .local v8, "totalFrameCount":I
    const/4 v9, 0x0

    .local v9, "validFrameCount":I
    const/4 v1, 0x0

    .local v1, "filtInBuf":S
    const/4 v3, 0x0

    .local v3, "filtOutBuf":S
    :goto_1
    :try_start_0
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mExitThread:Z
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$900(Lcom/lge/media/SmartRingtone;)Z

    move-result v10

    if-nez v10, :cond_7

    const/16 v10, 0xf

    if-ge v9, v10, :cond_7

    const/4 v10, 0x0

    aput v10, v7, v9

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v11, v11, Lcom/lge/media/SmartRingtone;->buffer:[S

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget v13, v13, Lcom/lge/media/SmartRingtone;->buffersize:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/AudioRecord;->read([SII)I

    const/4 v10, 0x1

    if-lt v8, v10, :cond_6

    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget v10, v10, Lcom/lge/media/SmartRingtone;->buffersize:I

    if-ge v5, v10, :cond_5

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->buffer:[S

    aget-short v10, v10, v5

    # getter for: Lcom/lge/media/SmartRingtone;->FILT_NUM:[S
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$1000()[S

    move-result-object v11

    const/4 v12, 0x0

    aget-short v11, v11, v12

    mul-int/2addr v10, v11

    # getter for: Lcom/lge/media/SmartRingtone;->FILT_NUM:[S
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$1000()[S

    move-result-object v11

    const/4 v12, 0x1

    aget-short v11, v11, v12

    mul-int/2addr v11, v1

    add-int/2addr v10, v11

    mul-int/lit16 v11, v3, -0x60e4

    sub-int v2, v10, v11

    .local v2, "filtOut":I
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->buffer:[S

    aget-short v1, v10, v5

    shr-int/lit8 v10, v2, 0xf

    int-to-short v3, v10

    if-ltz v3, :cond_2

    aget v10, v7, v9

    add-int/2addr v10, v3

    aput v10, v7, v9

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    aget v10, v7, v9

    neg-int v11, v3

    add-int/2addr v10, v11

    aput v10, v7, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .end local v2    # "filtOut":I
    .end local v5    # "j":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "smart ringtone caught "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v10

    if-eqz v10, :cond_4

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.release() getState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mStreamType:I
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$400(Lcom/lge/media/SmartRingtone;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$500(Lcom/lge/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$500(Lcom/lge/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mStreamType:I
    invoke-static {v11}, Lcom/lge/media/SmartRingtone;->access$400(Lcom/lge/media/SmartRingtone;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$1100()I

    move-result v11

    # invokes: Lcom/lge/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V
    invoke-static {v10, v11}, Lcom/lge/media/SmartRingtone;->access$1200(Lcom/lge/media/SmartRingtone;I)V

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateSmartRingtoneLevel: mSmartRingtoneLevel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v12}, Lcom/lge/media/SmartRingtone;->access$200(Lcom/lge/media/SmartRingtone;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$1300(Lcom/lge/media/SmartRingtone;)Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_0

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mDelayedVolumeUpHandler.sendEmptyMessageDelayed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$1300(Lcom/lge/media/SmartRingtone;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    const-wide/16 v12, 0xdac

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .restart local v5    # "j":I
    :cond_5
    :try_start_2
    aget v10, v7, v9

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget v11, v11, Lcom/lge/media/SmartRingtone;->buffersize:I

    div-int/2addr v10, v11

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    .end local v5    # "j":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_7
    if-eqz v9, :cond_9

    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$1100()I

    move-result v6

    .local v6, "prevNoiseAverage":I
    const/4 v10, 0x0

    # setter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$1102(I)I

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v9, :cond_8

    aget v10, v7, v4

    # += operator for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$1112(I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    # /= operator for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v9}, Lcom/lge/media/SmartRingtone;->access$1136(I)I

    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$1100()I

    move-result v10

    if-nez v10, :cond_9

    # setter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v6}, Lcom/lge/media/SmartRingtone;->access$1102(I)I

    .end local v4    # "i":I
    .end local v6    # "prevNoiseAverage":I
    :cond_9
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v10

    if-eqz v10, :cond_a

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mNoiseAverage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$1100()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " frameCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v10

    if-eqz v10, :cond_b

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v10

    if-eqz v10, :cond_c

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.release() getState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    goto/16 :goto_4

    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v11, v11, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v11}, Landroid/media/AudioRecord;->stop()V

    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v11

    if-eqz v11, :cond_d

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arec.stop() getRecordingState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v13, v13, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v11, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v11, v11, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v11}, Landroid/media/AudioRecord;->release()V

    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()Z

    move-result v11

    if-eqz v11, :cond_e

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arec.release() getState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v13, v13, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v11, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    throw v10

    :cond_f
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$3;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v11, 0x0

    # setter for: Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v10, v11}, Lcom/lge/media/SmartRingtone;->access$202(Lcom/lge/media/SmartRingtone;I)I

    goto/16 :goto_0
.end method
