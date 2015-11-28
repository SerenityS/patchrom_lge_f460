.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 255
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 256
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 257
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 270
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 245
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 245
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    :try_start_0
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v14, "params":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v14}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 319
    .local v10, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v10, :cond_6

    .line 320
    const-string/jumbo v1, "width"

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 321
    .local v3, "width":I
    const-string v1, "height"

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 324
    .local v4, "height":I
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v1, :cond_9

    .line 325
    const-string v1, "drmKey"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 326
    .local v8, "decInfo":[B
    if-eqz v8, :cond_9

    .line 327
    const/4 v12, 0x0

    .line 329
    .local v12, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 330
    if-nez v12, :cond_1

    .line 331
    const/4 v7, 0x0

    .line 366
    :try_start_2
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 367
    if-eqz v12, :cond_0

    .line 368
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v8    # "decInfo":[B
    .end local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v7

    .line 334
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v8    # "decInfo":[B
    .restart local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "params":Landroid/os/Bundle;
    :cond_1
    const/4 v15, 0x0

    .line 335
    .local v15, "sampleSize":I
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v16

    .line 340
    .local v16, "size":I
    const v1, 0x4b000

    move/from16 v0, v16

    if-lt v0, v1, :cond_3

    .line 341
    const/4 v11, 0x0

    .line 342
    .local v11, "i":I
    const/4 v11, 0x2

    :goto_1
    div-int v1, v16, v11

    const v5, 0x4b000

    if-le v1, v5, :cond_2

    .line 344
    mul-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 346
    :cond_2
    move v15, v11

    .line 349
    .end local v11    # "i":I
    :cond_3
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 350
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v15, :cond_4

    .line 351
    iput v15, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 353
    :cond_4
    const/4 v1, 0x0

    invoke-static {v12, v1, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    .local v2, "bm":Landroid/graphics/Bitmap;
    # getter for: Landroid/app/WallpaperManager;->CONFIG_DECREASE_WALLPAPER_SIZE:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 366
    :try_start_4
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 367
    if-eqz v12, :cond_0

    .line 368
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 370
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "sampleSize":I
    .end local v16    # "size":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 358
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v15    # "sampleSize":I
    .restart local v16    # "size":I
    :cond_5
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 366
    :try_start_6
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 367
    if-eqz v12, :cond_0

    .line 368
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 410
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v8    # "decInfo":[B
    .end local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "params":Landroid/os/Bundle;
    .end local v15    # "sampleSize":I
    .end local v16    # "size":I
    :catch_1
    move-exception v1

    .line 413
    :cond_6
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 361
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v8    # "decInfo":[B
    .restart local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v9

    .line 362
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Can\'t decode file"

    invoke-static {v1, v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 366
    :try_start_8
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 367
    if-eqz v12, :cond_7

    .line 368
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 373
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :cond_7
    :goto_3
    const/4 v7, 0x0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v1

    .line 366
    :try_start_9
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 367
    if-eqz v12, :cond_8

    .line 368
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 365
    :cond_8
    :goto_4
    :try_start_a
    throw v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 379
    .end local v8    # "decInfo":[B
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_9
    :try_start_b
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 380
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v13}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 382
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 383
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bm   width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_a
    # getter for: Landroid/app/WallpaperManager;->CONFIG_DECREASE_WALLPAPER_SIZE:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 387
    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 388
    .local v7, "bm2":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_b

    .line 389
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bm2   width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 404
    :cond_b
    :try_start_c
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 405
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 393
    .end local v7    # "bm2":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_d
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 394
    .restart local v7    # "bm2":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_d

    .line 395
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bm2   width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 404
    :cond_d
    :try_start_e
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 400
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "bm2":Landroid/graphics/Bitmap;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v9

    .line 401
    .restart local v9    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_f
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Can\'t decode file"

    invoke-static {v1, v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 404
    :try_start_10
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_2

    .line 405
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 403
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    .line 404
    :try_start_11
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1

    .line 403
    :goto_5
    :try_start_12
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1

    .line 363
    .restart local v8    # "decInfo":[B
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    .line 366
    :try_start_13
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 367
    if-eqz v12, :cond_7

    .line 368
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_3

    .line 370
    :catch_7
    move-exception v1

    goto/16 :goto_3

    .line 405
    .end local v8    # "decInfo":[B
    .end local v12    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v5

    goto :goto_5

    .line 370
    .restart local v8    # "decInfo":[B
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v5

    goto/16 :goto_4
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 419
    const/4 v8, 0x0

    .line 420
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v0, "ro.lge.device_color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "deviceColor":Ljava/lang/String;
    const-string v0, "BL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10803f2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 441
    :goto_0
    if-eqz v8, :cond_6

    .line 442
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v2

    .line 443
    .local v2, "width":I
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 446
    .local v3, "height":I
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 447
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 449
    .local v1, "bm":Landroid/graphics/Bitmap;
    # getter for: Landroid/app/WallpaperManager;->CONFIG_DECREASE_WALLPAPER_SIZE:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 459
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 468
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "deviceColor":Ljava/lang/String;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v0

    .line 424
    .restart local v6    # "deviceColor":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v0, "PK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10803f3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 427
    :cond_1
    const-string v0, "WH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10803f4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 431
    :cond_2
    # getter for: Landroid/app/WallpaperManager;->LRA_OPERATOR:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    # invokes: Landroid/app/WallpaperManager;->getLraCustomWallpaper()I
    invoke-static {}, Landroid/app/WallpaperManager;->access$500()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 433
    :cond_3
    # getter for: Landroid/app/WallpaperManager;->ACG_OPERATOR:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    # invokes: Landroid/app/WallpaperManager;->getAcgCustomWallpaper()I
    invoke-static {}, Landroid/app/WallpaperManager;->access$700()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 437
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1080220

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    goto/16 :goto_0

    .line 452
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_4
    invoke-static {p1, v1, v2, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 459
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 460
    :catch_0
    move-exception v4

    goto :goto_1

    .line 455
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v7

    .line 456
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Can\'t decode stream"

    invoke-static {v0, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 459
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "deviceColor":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :cond_6
    :goto_2
    move-object v0, v10

    .line 468
    goto :goto_1

    .line 458
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v6    # "deviceColor":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 459
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 458
    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 465
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "deviceColor":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 460
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v6    # "deviceColor":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_3

    .restart local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 311
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    monitor-exit p0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 303
    :goto_0
    return-object v1

    .line 286
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 289
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :goto_1
    if-eqz p2, :cond_3

    .line 296
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 297
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 298
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 300
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 303
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
