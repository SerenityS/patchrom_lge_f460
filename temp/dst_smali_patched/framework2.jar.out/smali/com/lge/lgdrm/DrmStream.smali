.class public final Lcom/lge/lgdrm/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmStream"


# instance fields
.field private b:[B

.field protected filename:Ljava/lang/String;

.field private nativeHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nativeHandle"    # I

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    if-nez p2, :cond_0

    const-string v0, "DrmStream"

    const-string v1, "DrmStream() : Invalid native handle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    iput p2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    goto :goto_0
.end method

.method private native nativeAvailable(I)I
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeRead(I[BII)I
.end method

.method private native nativeSkip(IJ)J
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeAvailable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    .local v0, "nRead":I
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "nRead":I
    iget v1, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parameter b is NULL"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    or-int v1, p2, p3

    if-ltz v1, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    iget v1, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/lgdrm/DrmStream;->nativeRead(I[BII)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    .end local v0    # "nRead":I
    :cond_4
    return v0

    .restart local v0    # "nRead":I
    :cond_5
    if-gez v0, :cond_4

    iget v1, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmStream;->nativeSkip(IJ)J

    move-result-wide v0

    goto :goto_0
.end method
