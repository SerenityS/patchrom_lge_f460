.class public final Lcom/lge/lgdrm/DrmDldClient;
.super Ljava/lang/Thread;
.source "DrmDldClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmDldClient$FailInfo;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECT:I = 0x3

.field public static final ERROR_HTTP_404:I = 0x2

.field public static final ERROR_INTERNAL:I = 0x1

.field public static final ERROR_INTERRUPTED:I = 0x7

.field public static final ERROR_MIME_MISMATCHED:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OUT_OF_STORAGE:I = 0x5

.field public static final ERROR_RO_CORRUPTED:I = 0x4

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static final READ_UNIT:I = 0x1000

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_GET_CONFIRM:I = 0x1

.field public static final STATUS_PROGRESS:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmDldClient"

.field private static cachedUA:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private final HTTP_TIMEOUT:I

.field private client:Landroid/net/http/AndroidHttpClient;

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

.field private filename:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private interrupted:Z

.field private mimeType:Ljava/lang/String;

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private objSession:Lcom/lge/lgdrm/DrmObjectSession;

.field private userAgent:Ljava/lang/String;

.field private userConfirm:I


# direct methods
.method public constructor <init>(Lcom/lge/lgdrm/DrmDldRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "request"    # Lcom/lge/lgdrm/DrmDldRequest;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 177
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 178
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 181
    iput-object p5, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 182
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V
    .locals 2
    .param p1, "objSession"    # Lcom/lge/lgdrm/DrmObjectSession;
    .param p2, "request"    # Lcom/lge/lgdrm/DrmDldRequest;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 140
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 141
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 142
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "objSession"    # Lcom/lge/lgdrm/DrmObjectSession;
    .param p2, "request"    # Lcom/lge/lgdrm/DrmDldRequest;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 157
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 158
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 159
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 160
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 161
    return-void
.end method

.method private checkMimeType()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 265
    const/4 v3, 0x0

    .line 267
    .local v3, "response":Lorg/apache/http/HttpResponse;
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v6, v6, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 268
    :cond_0
    const/4 v6, 0x1

    invoke-direct {p0, v6, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return v5

    .line 274
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    new-instance v7, Lorg/apache/http/client/methods/HttpHead;

    iget-object v8, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v8, v8, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 281
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 282
    .local v4, "status":I
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1f6

    if-eq v4, v6, :cond_3

    .line 283
    const/16 v6, 0x194

    if-ne v4, v6, :cond_2

    .line 284
    const/4 v6, 0x2

    invoke-direct {p0, v6, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 277
    invoke-direct {p0, v10, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "status":I
    :cond_2
    invoke-direct {p0, v10, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_3
    const-string v6, "Content-Type"

    invoke-interface {v3, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 293
    .local v1, "httpHeaders":[Lorg/apache/http/Header;
    if-eqz v1, :cond_5

    .line 294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 296
    aget-object v6, v1, v2

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 297
    const/4 v5, 0x0

    goto :goto_0

    .line 294
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v2    # "i":I
    :cond_5
    const/4 v6, 0x6

    invoke-direct {p0, v6, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "langCode"    # Ljava/lang/String;

    .prologue
    .line 850
    if-nez p0, :cond_1

    .line 851
    const/4 p0, 0x0

    .line 863
    .end local p0    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 853
    .restart local p0    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    const-string p0, "he"

    goto :goto_0

    .line 856
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    const-string p0, "id"

    goto :goto_0

    .line 859
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const-string p0, "yi"

    goto :goto_0
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 11

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 870
    .local v5, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 872
    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 873
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 874
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 876
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 888
    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 889
    invoke-static {v4}, Lcom/lge/lgdrm/DrmDldClient;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 892
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 902
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 903
    .local v7, "model":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 904
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    .end local v7    # "model":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 909
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 910
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    :cond_2
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040388

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 915
    .local v6, "mobile":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040387

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "base":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 880
    .end local v0    # "base":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "mobile":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 868
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v8    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 884
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 897
    .restart local v4    # "language":Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getSOAPActionHeader(I)Ljava/lang/String;
    .locals 2
    .param p1, "requestType"    # I

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 931
    .local v0, "retVal":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 932
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 945
    :cond_0
    :goto_0
    return-object v0

    .line 933
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 934
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcknowledgeLicense"

    goto :goto_0

    .line 935
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 936
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/JoinDomain"

    goto :goto_0

    .line 937
    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 938
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/LeaveDomain"

    goto :goto_0

    .line 939
    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    .line 940
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/ProcessMeteringData"

    goto :goto_0

    .line 941
    :cond_5
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 942
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/GetMeteringCertificate"

    goto :goto_0
.end method

.method private getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 831
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 832
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 833
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 836
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 837
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 838
    :cond_1
    sput-object v0, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 839
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    .line 842
    :cond_2
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    return-object v1
.end method

.method private httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I
    .locals 20
    .param p1, "request"    # Lcom/lge/lgdrm/DrmDldRequest;

    .prologue
    .line 315
    const/4 v5, 0x0

    .line 316
    .local v5, "content":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 318
    .local v10, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 320
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/lge/lgdrm/DrmDldClient;->setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v17

    if-eqz v17, :cond_1

    .line 328
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v14, -0x1

    .line 490
    :goto_1
    return v14

    .line 323
    :cond_0
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 332
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 333
    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v14, -0x1

    goto :goto_1

    .line 338
    :cond_2
    const/4 v13, 0x0

    .line 340
    .local v13, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 347
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 349
    .local v15, "status":I
    sparse-switch v15, :sswitch_data_0

    .line 375
    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v14, -0x1

    goto :goto_1

    .line 341
    .end local v15    # "status":I
    :catch_0
    move-exception v7

    .line 342
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v14, -0x1

    goto :goto_1

    .line 358
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v15    # "status":I
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 380
    :sswitch_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 381
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-nez v8, :cond_4

    .line 382
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 383
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 365
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    :cond_3
    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 370
    :sswitch_2
    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 388
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    .line 389
    .local v9, "hdr":Lorg/apache/http/Header;
    if-nez v9, :cond_5

    .line 390
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 391
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 396
    :cond_5
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "contentType":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 398
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 399
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 404
    :cond_6
    const-string v17, "[;]"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 405
    .local v16, "subs":[Ljava/lang/String;
    if-nez v16, :cond_7

    .line 406
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 407
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 410
    :cond_7
    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 414
    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 418
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 420
    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 422
    const-string v17, "DrmDldClient"

    const-string v18, "Failed to create DRM object session"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 424
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 431
    :cond_9
    :try_start_1
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 443
    const/4 v4, 0x0

    .line 444
    .local v4, "attribute":I
    :try_start_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 445
    const/16 v4, 0x8

    .line 448
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1, v4}, Lcom/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_b

    .line 449
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 450
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 451
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 432
    .end local v4    # "attribute":I
    :catch_1
    move-exception v7

    .line 433
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 453
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "attribute":I
    :catch_2
    move-exception v7

    .line 454
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 455
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 456
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 460
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_b
    const/4 v14, 0x0

    .line 461
    .local v14, "retVal":I
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 463
    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v14

    .line 481
    :goto_2
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 483
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 484
    :catch_3
    move-exception v7

    .line 485
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 486
    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 465
    .end local v7    # "e":Ljava/io/IOException;
    :cond_c
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    .line 467
    .local v11, "length":J
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-gtz v17, :cond_d

    .line 472
    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v14

    goto :goto_2

    .line 475
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v14

    goto :goto_2

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method private isInterrupt()Z
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    if-eqz v0, :cond_1

    .line 726
    :cond_0
    const-string v0, "DrmDldClient"

    const-string v1, "Thread was interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x1

    .line 729
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processData(Ljava/io/InputStream;J)I
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 561
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 564
    .local v0, "data":[B
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_3

    .line 567
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 568
    .local v3, "readLen":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 599
    .end local v3    # "readLen":I
    :cond_1
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 600
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v6, -0x1

    .line 675
    :goto_0
    return v6

    .line 573
    .restart local v3    # "readLen":I
    :cond_2
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v6, -0x1

    goto :goto_0

    .line 580
    .end local v3    # "readLen":I
    :cond_3
    const/4 v2, 0x0

    .line 581
    .local v2, "index":I
    :goto_1
    int-to-long v6, v2

    cmp-long v6, v6, p2

    if-gez v6, :cond_1

    .line 582
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 583
    .restart local v3    # "readLen":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 585
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v6, -0x1

    goto :goto_0

    .line 589
    :cond_4
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_5

    .line 591
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v6, -0x1

    goto :goto_0

    .line 594
    :cond_5
    add-int/2addr v2, v3

    goto :goto_1

    .line 604
    .end local v2    # "index":I
    .end local v3    # "readLen":I
    :cond_6
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v4

    .line 605
    .local v4, "retVal":I
    const/4 v5, 0x2

    .line 606
    .local v5, "userResponse":I
    packed-switch v4, :pswitch_data_0

    .line 636
    :goto_2
    :pswitch_0
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v4

    .line 637
    const/4 v6, -0x1

    if-ne v4, v6, :cond_b

    .line 638
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getFailReason()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 656
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 659
    :goto_3
    const/4 v6, -0x1

    goto :goto_0

    .line 608
    :pswitch_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v6, -0x1

    goto :goto_0

    .line 613
    :pswitch_2
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_a

    .line 615
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 617
    :goto_4
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_8

    .line 622
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 624
    :cond_7
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 625
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 620
    :cond_8
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 664
    .end local v4    # "retVal":I
    .end local v5    # "userResponse":I
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 666
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 628
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "retVal":I
    .restart local v5    # "userResponse":I
    :cond_9
    const/4 v6, 0x2

    :try_start_1
    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 668
    .end local v4    # "retVal":I
    .end local v5    # "userResponse":I
    :catch_1
    move-exception v1

    .line 669
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 671
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 631
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "retVal":I
    .restart local v5    # "userResponse":I
    :cond_a
    const/4 v5, 0x1

    goto :goto_2

    .line 640
    :pswitch_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 645
    :pswitch_4
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 650
    :pswitch_5
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 653
    :pswitch_6
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 660
    :cond_b
    const/4 v6, 0x4

    if-ne v4, v6, :cond_c

    .line 662
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 675
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 638
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private processRequest()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 232
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 235
    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->checkMimeType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    :goto_0
    return v1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "currentRequest":Lcom/lge/lgdrm/DrmDldRequest;
    :cond_1
    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v3, :cond_2

    .line 243
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 244
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 246
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 253
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    :cond_3
    move v1, v2

    .line 255
    goto :goto_0
.end method

.method private sendStatus(I)V
    .locals 6
    .param p1, "processStatus"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 742
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    if-nez p1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 753
    :cond_2
    if-ne p1, v3, :cond_3

    .line 754
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 755
    :cond_3
    if-ne p1, v2, :cond_4

    .line 756
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 757
    :cond_4
    if-ne p1, v5, :cond_0

    .line 758
    iget v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v1, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    if-eqz v1, :cond_5

    .line 765
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 771
    :goto_1
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 767
    :cond_5
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    invoke-virtual {v1, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method private setError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "redirectURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 696
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v0, :cond_0

    .line 697
    const-string v0, "DrmDldClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setError() : Destroy session errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-ne p1, v3, :cond_2

    .line 699
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 705
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 708
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v0, :cond_4

    .line 717
    :cond_1
    :goto_1
    return-void

    .line 700
    :cond_2
    if-ne p1, v4, :cond_3

    .line 701
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_0

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v4}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_0

    .line 713
    :cond_4
    iput p1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 714
    if-eqz p2, :cond_1

    .line 715
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/lgdrm/DrmDldClient$FailInfo;-><init>(Lcom/lge/lgdrm/DrmDldClient;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    goto :goto_1
.end method

.method private setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lge/lgdrm/DrmDldRequest;)I
    .locals 6
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "request"    # Lcom/lge/lgdrm/DrmDldRequest;

    .prologue
    const/4 v5, 0x1

    .line 504
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 506
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_1

    .line 507
    const-string v2, "Accept"

    const-string v3, "application/vnd.oma.drm.roap-trigger+xml, application/vnd.oma.drm.roap-pdu+xml, multipart/related"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    const-string v2, "Connection"

    const-string v3, "Keep Alive, Keep-Alive"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_0

    .line 543
    const-string v2, "DRM-Version"

    const-string v3, "2.1"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 509
    :cond_1
    const-string v2, "Accept"

    const-string v3, "*/*"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_2
    const/4 v0, 0x0

    .line 515
    .local v0, "headerValue":Ljava/lang/String;
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_3

    .line 516
    const-string v2, "Accept"

    const-string v3, "application/vnd.oma.drm.roap-trigger+xml, multipart/related"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_2
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p2, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p2, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    array-length v3, v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 528
    .local v1, "postEntity":Lorg/apache/http/entity/InputStreamEntity;
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_5

    .line 529
    const-string v2, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    :goto_3
    move-object v2, p1

    .line 534
    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 517
    .end local v1    # "postEntity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_3
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmDldClient;->getSOAPActionHeader(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 518
    const-string v2, "SOAPAction"

    invoke-virtual {p1, v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 520
    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .line 531
    .restart local v1    # "postEntity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_5
    const-string v2, "text/xml; charset=utf-8"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 188
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    const-string v0, "DrmDldClient"

    const-string v1, "run() : Fail to get UAString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, v4, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v5}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 222
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    .line 202
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_2

    .line 203
    const-string v0, "DrmDldClient"

    const-string v1, "run() : Fail to create http client"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, v4, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v5}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 211
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 213
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->processRequest()I

    move-result v0

    if-nez v0, :cond_3

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 219
    :goto_1
    const-string v0, "DrmDldClient"

    const-string v1, "Close HTTP Client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 221
    iput-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0, v5}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_1
.end method

.method public setUserConfirm(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    .line 788
    :goto_0
    return-void

    .line 786
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    goto :goto_0
.end method
