.class final Landroid/app/ContextImpl$7;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const/4 v3, 0x0

    .local v3, "mAudioManager":Landroid/media/AudioManager;
    const/4 v4, 0x0

    .local v4, "mAudioManagerEx":Landroid/media/AudioManager;
    :try_start_0
    const-string v5, "android.media.AudioManagerEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mAudioManagerEx":Landroid/media/AudioManager;
    check-cast v4, Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v4    # "mAudioManagerEx":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    new-instance v3, Landroid/media/AudioManager;

    .end local v3    # "mAudioManager":Landroid/media/AudioManager;
    invoke-direct {v3, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .restart local v3    # "mAudioManager":Landroid/media/AudioManager;
    :goto_1
    return-object v3

    .end local v4    # "mAudioManagerEx":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ContextImpl"

    const-string v6, "Error while loading AudioManagerEx."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    .restart local v4    # "mAudioManagerEx":Landroid/media/AudioManager;
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v3, v4

    goto :goto_1
.end method
