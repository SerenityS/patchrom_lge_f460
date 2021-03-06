.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;
.super Ljava/lang/Object;
.source "CdmaServiceStateTracker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->PlayVZWERISound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriRingtoneStart:Z

    if-ne v2, v6, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.finishEriSound"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "finishEriSound":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriRingtoneStart:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "finishEriSound":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$702(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->restoreVolume:I
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_CALL:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnErrorListener, volume is restored. restoreVolume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->restoreVolume:I
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v6

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
