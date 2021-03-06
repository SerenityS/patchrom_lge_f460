.class public final Lcom/lge/lgdrm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# static fields
.field private static sSLExtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkExtension(ILjava/lang/String;)I
    .locals 3
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .local v0, "storeAs":I
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa

    if-ne p0, v2, :cond_6

    :cond_0
    const-string v2, ".dm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".dcf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    move v1, v0

    :cond_3
    return v1

    :cond_4
    const-string v2, ".odf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".o4a"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".o4v"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".o4i"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    if-eq p0, v2, :cond_7

    const/4 v2, 0x7

    if-ne p0, v2, :cond_2

    :cond_7
    const-string v2, ".wma"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".wmv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    :cond_9
    const-string v2, ".eny"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".pya"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".pyv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_a
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private static checkSLExtMap(ILjava/lang/String;)Z
    .locals 4
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    sget-object v3, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "agent":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "sAgentType":I
    if-ne v1, p0, :cond_1

    .end local v1    # "sAgentType":I
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "sAgentType":I
    :cond_1
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v3, 0x7

    if-ne p0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .end local v1    # "sAgentType":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createContentManager(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentManager;->newInstance(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmContentSession;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    goto :goto_0
.end method

.method public static createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;
    .locals 1
    .param p0, "downloadAgent"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAgentInformation(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p0, :cond_2

    const/4 v0, 0x2

    if-le p0, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetAgentInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ext":Ljava/lang/String;
    if-eqz p0, :cond_1

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "lastDot":I
    if-gez v1, :cond_0

    const/4 v0, 0x0

    .end local v1    # "lastDot":I
    :goto_0
    return-object v0

    .restart local v1    # "lastDot":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v1    # "lastDot":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastError()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getObjectDrmType([B)I
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectDrmType([B)I

    move-result v0

    goto :goto_0
.end method

.method public static getObjectInfo(I[B)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectInfo(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getObjectMediaMimeType([B)Ljava/lang/String;
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectMediaMimeType([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportedAgent()[I
    .locals 1

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeGetSupportedAgent()[I

    move-result-object v0

    goto :goto_0
.end method

.method public static isDRM(Ljava/lang/String;)I
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isSupportedAgent(I)Z
    .locals 5
    .param p0, "agentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-lt p0, v3, :cond_0

    const/16 v4, 0xf

    if-lt p0, v4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid agentType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->getSupportedAgent()[I

    move-result-object v0

    .local v0, "agents":[I
    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget v4, v0, v1

    if-ne v4, p0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "agentType"    # I
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v4, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p1, p2}, Lcom/lge/lgdrm/DrmManager;->getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/lge/lgdrm/DrmManager;->checkExtension(ILjava/lang/String;)I

    move-result v1

    .local v1, "storeAs":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    invoke-static {p0, v0}, Lcom/lge/lgdrm/DrmManager;->checkSLExtMap(ILjava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-static {p0, v0, v1}, Lcom/lge/lgdrm/DrmManager;->updateSLExtMap(ILjava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method public static manageDatabase(I)I
    .locals 2
    .param p0, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p0, :cond_2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeManageDatabase(I)I

    move-result v0

    goto :goto_0
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeGetAgentInformation(I)Ljava/lang/String;
.end method

.method private static native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private static native nativeGetObjectDrmType([B)I
.end method

.method private static native nativeGetObjectInfo(I[B)Ljava/lang/String;
.end method

.method private static native nativeGetObjectMediaMimeType([B)Ljava/lang/String;
.end method

.method private static native nativeGetSupportedAgent()[I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsSupportedExtension(ILjava/lang/String;)Z
.end method

.method private static native nativeManageDatabase(I)I
.end method

.method private static native nativeSetDebugOptions(III)V
.end method

.method public static setDebugOptions(III)V
    .locals 2
    .param p0, "agentType"    # I
    .param p1, "option"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmManager;->nativeSetDebugOptions(III)V

    goto :goto_0
.end method

.method private static updateSLExtMap(ILjava/lang/String;I)Z
    .locals 2
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "storeAs"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeIsSupportedExtension(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
