.class public final Lcom/lge/lgdrm/DrmFwExt;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmFwExt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkDRMMediaFile(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "checkIsImage"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 207
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    if-eqz p2, :cond_2

    .line 217
    :try_start_0
    invoke-static {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_2

    move v1, v2

    .line 218
    goto :goto_0

    .line 222
    :cond_2
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 223
    .local v0, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_3

    move v1, v2

    .line 224
    goto :goto_0

    .line 227
    :cond_3
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v1

    if-nez v1, :cond_4

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    .line 229
    const/4 v1, 0x2

    goto :goto_0

    .line 232
    .end local v0    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    :cond_4
    move v1, v2

    .line 235
    goto :goto_0
.end method

.method public static checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "setKey"    # Z
    .param p3, "resetKey"    # Z
    .param p4, "consume"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    :try_start_0
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 79
    .local v0, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    if-eqz p3, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 87
    goto :goto_0

    .line 90
    :cond_5
    if-eqz p4, :cond_6

    .line 92
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v1, v3

    .line 95
    goto :goto_0

    .line 96
    .end local v0    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    move v1, v2

    .line 99
    goto :goto_0
.end method

.method public static getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 122
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 125
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 126
    if-eqz v6, :cond_4

    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :cond_4
    invoke-static {p0, v10}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 131
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v0, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 134
    .local v8, "data":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v11

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 136
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    :cond_6
    if-eqz v7, :cond_7

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v3, v8

    .line 143
    goto :goto_0
.end method

.method public static getDRMAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "albumArt":[B
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 252
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    .line 254
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-object v0

    .line 255
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isDRM(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 357
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, "drmType":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3000

    if-gt v0, v2, :cond_0

    .line 366
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDRMMediaQuery(Landroid/content/Context;Landroid/database/sqlite/SQLiteQueryBuilder;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "appendAND"    # Z

    .prologue
    .line 172
    const-string v0, "android.permission.ACCESS_LGDRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "android.permission.ACCESS_LGDRM_CNTLIST"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    if-eqz p2, :cond_2

    .line 183
    const-string v0, " AND (mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\'))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string v0, " mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 151
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 152
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 154
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 156
    :cond_0
    return-void
.end method
