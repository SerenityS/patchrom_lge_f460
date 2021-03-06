.class public final Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field private static final CHANNEL_BYTES:I = 0x3

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field private static final LOG_TAG:Ljava/lang/String; = "SmartMXUICC"

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static channel:I


# instance fields
.field private Enable_SmartMX_SE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/lguplus/se/SmartMXUICC;->channel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    return-void
.end method

.method public static createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .locals 1

    .prologue
    new-instance v0, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v0}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartMXUICC] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logs(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartMXUICC] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 9
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v3, -0x1

    const-string v5, "closeSecureElementConnection"

    invoke-static {v5}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect : internal channel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v0, v5, [B

    aput-byte v7, v0, v7

    const/4 v5, 0x1

    const/16 v6, 0x70

    aput-byte v6, v0, v5

    const/4 v5, 0x2

    const/16 v6, -0x80

    aput-byte v6, v0, v5

    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    .local v0, "command":[B
    new-array v2, v8, [B

    .local v2, "response":[B
    iget-boolean v5, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-eq v5, v3, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "the channel is already closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-eq v5, p1, :cond_4

    new-instance v5, Ljava/io/IOException;

    const-string v6, "the parameter handle is different from channel"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/lguplus/se/SmartMXUICC;->exchangeAPDU(I[B)[B

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    .local v3, "response_length":I
    :cond_5
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .local v4, "test":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[disconnect] response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    if-eqz v4, :cond_6

    const-string v5, "9000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close channel("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is failed. the fuction result is false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "response_length":I
    .end local v4    # "test":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "closeSecureElementConnection is failed"

    invoke-static {v5}, Lcom/lguplus/se/SmartMXUICC;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "response_length":I
    .restart local v4    # "test":Ljava/lang/String;
    :cond_6
    if-ltz v3, :cond_0

    const/4 v5, -0x1

    :try_start_1
    sput v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[close] channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public exchangeAPDU(I[B)[B
    .locals 5
    .param p1, "handle"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "exchangeAPDU"

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "tmpdata":[B
    iget-boolean v2, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    if-nez v2, :cond_3

    array-length v2, p2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "command must not be smaller than 4 bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[transmit] channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[transmit] command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, " Because channelNumber is 0, transmit command is failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .local v0, "data_s":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0170000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    aget-byte v3, p2, v2

    and-int/lit8 v4, p1, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    :cond_2
    const-string v2, "SMARTCARD_TRANSMIT"

    invoke-static {v2, p2}, Lcom/lge/uicc/LGUiccManager;->genericIO(Ljava/lang/String;[B)[B

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[transmit] response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    const-string v2, "[transmit] transmit success"

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    move-object v2, v1

    .end local v0    # "data_s":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getATR()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "getATR()"

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    if-nez v2, :cond_0

    const-string v2, "Smartcard getATR()"

    invoke-static {v2}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "tmpdata":[B
    const-string v2, "SMARTCARD_GET_ATR"

    invoke-static {v2, v1}, Lcom/lge/uicc/LGUiccManager;->genericIO(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getATR] atr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    .end local v0    # "tmpdata":[B
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    const-string v0, "Smartcard getChannel()"

    invoke-static {v0}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    sget v0, Lcom/lguplus/se/SmartMXUICC;->channel:I

    return v0
.end method

.method public getSecureElementTechList(I)[I
    .locals 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getSecureElementTechList is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSecureElementUid(I)[B
    .locals 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getSecureElementUid is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSmartMX()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    return v0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 10
    .param p1, "seType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v8, -0x1

    const-string v6, "openSecureElementConnection"

    invoke-static {v6}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    const/4 v6, 0x5

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    .local v0, "command":[B
    new-array v3, v9, [B

    .local v3, "response":[B
    const/4 v4, 0x0

    .local v4, "response_length":I
    const-string v6, "android.nfc.uicc.ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[open] channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    const/4 v2, -0x1

    .local v2, "handle":I
    invoke-virtual {p0, v2, v0}, Lcom/lguplus/se/SmartMXUICC;->exchangeAPDU(I[B)[B

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    :goto_0
    if-eqz v4, :cond_0

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    sput v5, Lcom/lguplus/se/SmartMXUICC;->channel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eq v4, v9, :cond_2

    sput v8, Lcom/lguplus/se/SmartMXUICC;->channel:I

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the length of response is wrong("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v4, v5

    goto :goto_0

    .end local v2    # "handle":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    sput v8, Lcom/lguplus/se/SmartMXUICC;->channel:I

    new-instance v5, Ljava/io/IOException;

    const-string v6, "open channel is failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "handle":I
    :cond_2
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-nez v5, :cond_3

    sput v8, Lcom/lguplus/se/SmartMXUICC;->channel:I

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apk can\'t access basic channel. the returned channel is basic channel("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-le v5, v9, :cond_4

    sput v8, Lcom/lguplus/se/SmartMXUICC;->channel:I

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid logical channel number is returned("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lguplus/se/SmartMXUICC;->logd(Ljava/lang/String;)V

    .end local v2    # "handle":I
    :cond_5
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    return v5

    nop

    :array_0
    .array-data 1
        0x1t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
