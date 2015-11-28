.class final Landroid/app/ContextImpl$1;
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
    .line 327
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 7
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 332
    const/4 v3, 0x0

    .line 334
    .local v3, "wallpaperManagerEx":Landroid/app/WallpaperManager;
    :try_start_0
    const-string v4, "android.app.WallpaperManagerEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 335
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 336
    const-string v4, "ContextImpl"

    const-string v5, "getDeclaredConstructor"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 338
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    .line 339
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wallpaperManagerEx":Landroid/app/WallpaperManager;
    check-cast v3, Landroid/app/WallpaperManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "wallpaperManagerEx":Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 348
    new-instance v3, Landroid/app/WallpaperManager;

    .end local v3    # "wallpaperManagerEx":Landroid/app/WallpaperManager;
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 351
    .restart local v3    # "wallpaperManagerEx":Landroid/app/WallpaperManager;
    :cond_1
    return-object v3

    .line 342
    .end local v3    # "wallpaperManagerEx":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ContextImpl"

    const-string v5, "Error while loading WallpaperManagerEx."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v3, 0x0

    .restart local v3    # "wallpaperManagerEx":Landroid/app/WallpaperManager;
    goto :goto_0
.end method
