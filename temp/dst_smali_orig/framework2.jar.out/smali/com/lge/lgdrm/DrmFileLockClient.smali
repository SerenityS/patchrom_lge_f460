.class public Lcom/lge/lgdrm/DrmFileLockClient;
.super Ljava/lang/Object;
.source "DrmFileLockClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;
    }
.end annotation


# static fields
.field public static final FILE_IO_UNIT_128KB:I = 0x20000

.field public static final FILE_IO_UNIT_16KB:I = 0x4000

.field public static final FILE_IO_UNIT_1KB:I = 0x400

.field public static final FILE_IO_UNIT_256KB:I = 0x40000

.field public static final FILE_IO_UNIT_2KB:I = 0x800

.field public static final FILE_IO_UNIT_32KB:I = 0x8000

.field public static final FILE_IO_UNIT_4KB:I = 0x1000

.field public static final FILE_IO_UNIT_64KB:I = 0x10000

.field public static final FILE_IO_UNIT_8KB:I = 0x2000

.field public static final LOCK_FILE_COMPLETE:I = 0xa

.field public static final LOCK_FILE_ERROR:I = -0xa

.field public static final SRC_FILE_MODIFIED_ERROR:I = -0x1e

.field private static final TAG:Ljava/lang/String; = "DrmFileLockClient"

.field public static final UNLOCK_FILE_COMPLETE:I = 0x14

.field public static final UNLOCK_FILE_ERROR:I = -0x14


# instance fields
.field private final FILE_SIZE_TO_OBSERVE:I

.field private mDstFilePath:Ljava/lang/String;

.field private mLockSessionID:I

.field private mObserver:Landroid/os/FileObserver;

.field private mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

.field private mSrcFilePath:Ljava/lang/String;

.field private mSrcFileSize:J

.field private mStartTime:J

.field private mUnlockSessionID:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    iput-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    iput-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->FILE_SIZE_TO_OBSERVE:I

    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/lgdrm/DrmFileLockClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/lgdrm/DrmFileLockClient;

    .prologue
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/lgdrm/DrmFileLockClient;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/lgdrm/DrmFileLockClient;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/lgdrm/DrmFileLockClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/lgdrm/DrmFileLockClient;

    .prologue
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/lgdrm/DrmFileLockClient;)Landroid/os/FileObserver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/lgdrm/DrmFileLockClient;

    .prologue
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/lgdrm/DrmFileLockClient;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0
    .param p0, "x0"    # Lcom/lge/lgdrm/DrmFileLockClient;
    .param p1, "x1"    # Landroid/os/FileObserver;

    .prologue
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method private cleanSessions()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileLockSession(I)I

    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->closeFileLockSession(I)I

    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileUnlockSession(I)I

    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->closeFileUnlockSession(I)I

    :cond_1
    return-void
.end method

.method public static getUserInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeGetUserInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "srcMimeType"    # Ljava/lang/String;
    .param p2, "srcMediaType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcMimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq p2, v0, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    const-string v0, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFileLockAllowed() : srcMediaType is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeIsFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static isFileUnlockAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeIsFileUnlockAllowed(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeAbortFileLockSession(I)I
.end method

.method private static native nativeAbortFileUnlockSession(I)I
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeCloseFileLockSession(I)I
.end method

.method private static native nativeCloseFileUnlockSession(I)I
.end method

.method private static native nativeFileLock(I)I
.end method

.method private static native nativeFileUnlock(I)I
.end method

.method private static native nativeGetUserInfo()Ljava/lang/String;
.end method

.method private static native nativeIsFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native nativeIsFileUnlockAllowed(Ljava/lang/String;)I
.end method

.method private static native nativeOpenFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private static native nativeOpenFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private static native nativeSetUserInfo(Ljava/lang/String;)I
.end method

.method private needToObserve()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEventToListener(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;->onEvent(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    :cond_0
    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;)I
    .locals 3
    .param p0, "userInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p0, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter userInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeSetUserInfo(Ljava/lang/String;)I

    move-result v0

    .local v0, "nResult":I
    goto :goto_0
.end method


# virtual methods
.method public abortFileLockSession(I)I
    .locals 3
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v1, :cond_3

    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "abortFileLockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAbortFileLockSession(I)I

    move-result v0

    .local v0, "nResult":I
    goto :goto_0
.end method

.method public abortFileUnlockSession(I)I
    .locals 3
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v1, :cond_3

    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "abortFileUnlockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAbortFileUnlockSession(I)I

    move-result v0

    .local v0, "nResult":I
    goto :goto_0
.end method

.method public closeFileLockSession(I)I
    .locals 4
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v1, :cond_4

    :cond_3
    const-string v1, "DrmFileLockClient"

    const-string v2, "closeFileLockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeCloseFileLockSession(I)I

    move-result v0

    .local v0, "nResult":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop observation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeFileUnlockSession(I)I
    .locals 3
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v1, :cond_3

    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "closeFileUnlockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeCloseFileUnlockSession(I)I

    move-result v0

    .local v0, "nResult":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    goto :goto_0
.end method

.method public fileLock(I)I
    .locals 5
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v2, :cond_3

    :cond_2
    const-string v2, "DrmFileLockClient"

    const-string v3, "fileLock() : sessionID is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->needToObserve()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/lge/lgdrm/DrmFileLockClient$1;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/lge/lgdrm/DrmFileLockClient$1;-><init>(Lcom/lge/lgdrm/DrmFileLockClient;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    const-string v2, "DrmFileLockClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start observation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeFileLock(I)I

    move-result v0

    .local v0, "nResult":I
    if-ne v1, v0, :cond_5

    const/16 v1, -0xa

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_0
.end method

.method public fileUnlock(I)I
    .locals 4
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v2, :cond_3

    :cond_2
    const-string v2, "DrmFileLockClient"

    const-string v3, "fileUnlock() : sessionID is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeFileUnlock(I)I

    move-result v0

    .local v0, "nResult":I
    if-ne v1, v0, :cond_4

    const/16 v1, -0x14

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->cleanSessions()V

    return-void
.end method

.method public getDstFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingTime(I)J
    .locals 14
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v6, -0x1

    sget-boolean v10, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v10, :cond_0

    :goto_0
    return-wide v6

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Need proper permission to access drm"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    const/4 v10, -0x1

    if-eq p1, v10, :cond_2

    if-eqz p1, :cond_2

    iget v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v10, :cond_3

    iget v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v10, :cond_3

    :cond_2
    const-string v10, "DrmFileLockClient"

    const-string v11, "getRemainingTime() : sessionID is invalid."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-wide v8, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    .local v8, "totalSize":J
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    .local v0, "currentSize":J
    cmp-long v10, v8, v12

    if-eqz v10, :cond_4

    cmp-long v10, v0, v12

    if-nez v10, :cond_5

    :cond_4
    const-string v10, "DrmFileLockClient"

    const-string v11, "getRemainingTime() : file size is wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-wide/16 v10, 0x800

    add-long/2addr v8, v10

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .local v4, "now":J
    iget-wide v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    sub-long v2, v4, v10

    .local v2, "elapsedTime":J
    long-to-double v10, v8

    long-to-double v12, v0

    div-double/2addr v10, v12

    long-to-double v12, v2

    mul-double/2addr v10, v12

    double-to-long v10, v10

    sub-long v6, v10, v2

    .local v6, "result":J
    goto :goto_0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .param p3, "srcMimeType"    # Ljava/lang/String;
    .param p4, "srcMediaType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .local v8, "nResult":I
    const/high16 v5, 0x40000

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/lge/lgdrm/DrmFileLockClient;->openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    return v8

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/SecurityException;
    throw v7
.end method

.method public openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 4
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .param p3, "srcMimeType"    # Ljava/lang/String;
    .param p4, "srcMediaType"    # I
    .param p5, "ioUnitSize"    # I
    .param p6, "sleepUSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter dstFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcMimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v1, 0x1

    if-eq p4, v1, :cond_6

    const/4 v1, 0x2

    if-eq p4, v1, :cond_6

    const/4 v1, 0x3

    if-eq p4, v1, :cond_6

    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFileLockSession() : srcMediaType is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/16 v1, 0x400

    if-eq p5, v1, :cond_7

    const/16 v1, 0x800

    if-eq p5, v1, :cond_7

    const/16 v1, 0x1000

    if-eq p5, v1, :cond_7

    const/16 v1, 0x2000

    if-eq p5, v1, :cond_7

    const/16 v1, 0x4000

    if-eq p5, v1, :cond_7

    const v1, 0x8000

    if-eq p5, v1, :cond_7

    const/high16 v1, 0x10000

    if-eq p5, v1, :cond_7

    const/high16 v1, 0x20000

    if-eq p5, v1, :cond_7

    const/high16 v1, 0x40000

    if-eq p5, v1, :cond_7

    const-string v1, "DrmFileLockClient"

    const-string v2, "openFileLockSession() : file unit size is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-ltz p6, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeOpenFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    goto/16 :goto_0
.end method

.method public openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "nResult":I
    const/high16 v2, 0x40000

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
.end method

.method public openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .param p3, "ioUnitSize"    # I
    .param p4, "sleepUSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter dstFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x400

    if-eq p3, v1, :cond_5

    const/16 v1, 0x800

    if-eq p3, v1, :cond_5

    const/16 v1, 0x1000

    if-eq p3, v1, :cond_5

    const/16 v1, 0x2000

    if-eq p3, v1, :cond_5

    const/16 v1, 0x4000

    if-eq p3, v1, :cond_5

    const v1, 0x8000

    if-eq p3, v1, :cond_5

    const/high16 v1, 0x10000

    if-eq p3, v1, :cond_5

    const/high16 v1, 0x20000

    if-eq p3, v1, :cond_5

    const/high16 v1, 0x40000

    if-eq p3, v1, :cond_5

    const-string v1, "DrmFileLockClient"

    const-string v2, "openFileUnlockSession() : file unit size is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-ltz p4, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeOpenFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    goto :goto_0
.end method

.method public declared-synchronized setOnEventListener(Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
