.class Landroid/media/RingtoneEx$1;
.super Ljava/lang/Object;
.source "RingtoneEx.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RingtoneEx;


# direct methods
.method constructor <init>(Landroid/media/RingtoneEx;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

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
    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v4, v4, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # getter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v4}, Landroid/media/RingtoneEx;->access$000(Landroid/media/RingtoneEx;)I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "RingtoneEx"

    const-string v5, "LocalPlayer play default ringtone."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # setter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v4, v3}, Landroid/media/RingtoneEx;->access$002(Landroid/media/RingtoneEx;I)I

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v3, v3, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # invokes: Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;
    invoke-static {v3}, Landroid/media/RingtoneEx;->access$100(Landroid/media/RingtoneEx;)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultPath":Ljava/lang/String;
    const-string v3, "RingtoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE] OnErrorListener... set Default Ring... = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, v3, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v3, v3, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v3, v3, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget v4, v4, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v3, v3, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-virtual {v3}, Landroid/media/RingtoneEx;->play()V

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    const/4 v4, 0x2

    # setter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v3, v4}, Landroid/media/RingtoneEx;->access$002(Landroid/media/RingtoneEx;I)I

    .end local v0    # "defaultPath":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    return v3

    :pswitch_0
    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # getter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v4}, Landroid/media/RingtoneEx;->access$000(Landroid/media/RingtoneEx;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # setter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v4, v3}, Landroid/media/RingtoneEx;->access$002(Landroid/media/RingtoneEx;I)I

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-virtual {v4}, Landroid/media/RingtoneEx;->stop()V

    goto :goto_2

    .restart local v0    # "defaultPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "RingtoneEx"

    const-string v4, "[LGE] default filepath is not set"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "defaultPath":Ljava/lang/String;
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-boolean v3, v3, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "RingtoneEx"

    const-string v4, "RemotePlayer play default ringtone."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v3, v3, Landroid/media/RingtoneEx;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v4, v4, Landroid/media/RingtoneEx;->mRemoteToken:Landroid/os/Binder;

    iget-object v5, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # invokes: Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;
    invoke-static {v5}, Landroid/media/RingtoneEx;->access$100(Landroid/media/RingtoneEx;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget v6, v6, Landroid/media/RingtoneEx;->mStreamType:I

    invoke-interface {v3, v4, v5, v6}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RingtoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem playing default ringtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
