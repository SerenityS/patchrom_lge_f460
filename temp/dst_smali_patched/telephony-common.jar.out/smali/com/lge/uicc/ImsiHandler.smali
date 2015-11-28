.class public Lcom/lge/uicc/ImsiHandler;
.super Landroid/os/Handler;
.source "ImsiHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static final EVENT_GET_HPLMNWACT_DONE:I = 0x6e

.field private static final EVENT_GET_IMSIP_DONE_KR:I = 0x29

.field private static final EVENT_GET_IMSI_DONE_KR:I = 0x2c

.field private static final EVENT_GET_MASTER_IMSI_DONE_LGU:I = 0xc8

.field private static final EVENT_GET_MSISDN_DONE_KR:I = 0x2b

.field private static final EVENT_GET_SPON_IMSI1_DONE_LGU:I = 0xc9

.field private static final EVENT_GET_SPON_IMSI2_DONE_LGU:I = 0xca

.field private static final EVENT_GET_SPON_IMSI3_DONE_LGU:I = 0xcb

.field private static final EVENT_RIL_REQUEST_GET_IMSI_DONE:I = 0x1

.field private static final MSISDN_NONALPHA_LEN:I = 0xe

.field private static final MSISDN_NUMBER_LEN:I = 0xa

.field private static mInstance:Lcom/lge/uicc/ImsiHandler;


# instance fields
.field private efHplmnwact:Ljava/lang/String;

.field private imsip:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMessageQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

.field private masterImsi:[B

.field private msisdnNumber:[B

.field private recordsToLoad:I

.field private sumNumber:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/uicc/SimNodeHandlerSPR;

    invoke-static {}, Lcom/lge/uicc/LGUICC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/uicc/SimNodeHandlerSPR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    :cond_0
    return-void
.end method

.method protected static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LGU"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0, p1}, Lcom/lge/uicc/ImsiHandler;->dumpOplmnLGU(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method private dumpOplmnLGU(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/16 v11, 0x66

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "\nLGU+ HOME OPLMN:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    const/16 v5, 0xa

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/lge/uicc/EfUtils;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    .local v2, "oplmnList":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, v1, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_1

    :cond_0
    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_4

    const-string v4, ""

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "%c%c%c"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v8

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v9

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "plmn":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%c%c"

    new-array v6, v10, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x5

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v8

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v11, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%c"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .end local v3    # "plmn":Ljava/lang/String;
    :cond_4
    const-string v4, "\n"

    goto/16 :goto_1
.end method

.method private fetchRecordsForImsi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_1

    const-string v1, "fails to get IccFileHandler !!!"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SKT"

    aput-object v2, v1, v4

    const-string v2, "KT"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fetch EF_IMSI_P, EF_MSISDN"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    const/16 v1, 0x2f24

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "KR"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fetch EF_LGU_MASTER_IMSI, EF_LGU_SPON_IMSIs"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    const/16 v1, 0x2f40

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/16 v1, 0x2f41

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/16 v1, 0x2f42

    const/16 v2, 0xca

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/16 v1, 0x2f43

    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "VZW"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fetch EF_HPLMNWACT"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    const/16 v1, 0x6f62

    const/16 v2, 0x6e

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public static handleGetImsiForApp(Lcom/android/internal/telephony/RIL;Ljava/lang/String;Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p0, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_0

    .end local p2    # "msg":Landroid/os/Message;
    :goto_0
    return-object p2

    .restart local p2    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget-object v0, v0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "start loading records for IMSI"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/ImsiHandler;->fetchRecordsForImsi()V

    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget v1, v0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    goto :goto_0
.end method

.method private isUsaOperatorExceptSPR(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const-string v2, "card_provisioned"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "card_operator":Ljava/lang/String;
    const-string v2, "VZW3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VZW4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x136

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13c

    if-gt v2, v3, :cond_1

    :cond_0
    const-string v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsaOperatorExceptSPR returns true with card_operator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    .end local v0    # "card_operator":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    return-void
.end method

.method private onRecordLoaded()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setImsiTypeForLGU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setCardOperator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setImsiLockForSPR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    if-gez v0, :cond_0

    const-string v0, "recordsForImsi < 0, programmer error suspected"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    goto :goto_0
.end method

.method private returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send saved messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .local v1, "msg":Landroid/os/Message;
    invoke-static {v1, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private setCardOperator(Ljava/lang/String;)V
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "UNKNOWN"

    .local v3, "op":Ljava/lang/String;
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    .local v2, "mnclen":I
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "mccmnc":I
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "KT"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "00211"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v3, "TEST"

    :cond_1
    :goto_0
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "card_provisioned"

    const-string v6, "yes"

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "card_operator"

    invoke-static {v5, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "card_operator":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to property ril.card_operator : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    const-string v5, "ril.card_operator"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "provisioned":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to property ril.card_provisioned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    const-string v5, "ril.card_provisioned"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v0    # "card_operator":Ljava/lang/String;
    .end local v4    # "provisioned":Ljava/lang/String;
    :sswitch_0
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "SPR"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "SPR"

    goto :goto_0

    :sswitch_1
    const-string v3, "SKT"

    goto :goto_0

    :sswitch_2
    const-string v3, "KT"

    goto :goto_0

    :sswitch_3
    const-string v3, "LGU"

    goto :goto_0

    :sswitch_4
    const-string v3, "VZW3G"

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "VZW4G"

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "USC3G"

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "USC4G"

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "MPCS"

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "DCM"

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "SPR"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4fb4 -> :sswitch_4
        0xabea -> :sswitch_9
        0xafc8 -> :sswitch_0
        0xafca -> :sswitch_2
        0xafcd -> :sswitch_1
        0xafce -> :sswitch_3
        0xafd0 -> :sswitch_2
        0xafd3 -> :sswitch_1
        0x1b274 -> :sswitch_8
        0x3fac0 -> :sswitch_8
        0x4bb68 -> :sswitch_a
        0x4bfb4 -> :sswitch_6
        0x4c0b8 -> :sswitch_5
        0x4c11c -> :sswitch_7
        0x4c16c -> :sswitch_8
    .end sparse-switch
.end method

.method private setImsiLockForSPR(Ljava/lang/String;)V
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SPR"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Lcom/lge/uicc/SimNodeHandlerSPR;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "SIMLock":Ljava/lang/String;
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "card_operator":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SIMLock by sim type"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    :goto_1
    const-string v2, "spr.omadm_lock"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/lge/uicc/ImsiHandler;->isUsaOperatorExceptSPR(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "the device will not allow an international UICC to be used, MCC of the USIM/IMSI is equal to 310"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "the device will allow an UICC to be used"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setImsiTypeForLGU(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "KR"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local p1    # "imsi":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "imsi":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "450069"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "card_provisioned"

    const-string v5, "no"

    invoke-static {v4, v5}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "non-provisioned UICC for LGU+"

    invoke-static {v4}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "lgu.home_imsi"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "home_imsi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "setImsiTypeLGU : can not decide imsi type"

    invoke-static {v4}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "lgu.ef_roaming.state"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WAIT_REFRESH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "lgu.ef_roaming.state"

    const-string v5, "UPDATED"

    invoke-static {v4, v5}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "com.lge.intent.action.LGU_ROAMING_SET_FINISHED"

    invoke-static {v4}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    :cond_3
    const-string v2, ""

    .local v2, "imsi_type":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "mccmnc":I
    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x3

    if-gt v1, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lgu.spon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_imsi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "i":I
    :cond_4
    :goto_2
    const-string v4, "lgu.imsi_type"

    invoke-static {v4, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-object p1, v0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "HOME"

    goto :goto_2

    .restart local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xafce
        :pswitch_0
    .end packed-switch
.end method

.method protected static setup()V
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/ImsiHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v14, 0x14

    const/4 v13, 0x6

    const/4 v6, 0x1

    .local v6, "isRecordLoadResponse":Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unhandled message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :goto_1
    invoke-direct {p0}, Lcom/lge/uicc/ImsiHandler;->onRecordLoaded()V

    :cond_1
    return-void

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_0
    :try_start_1
    const-string v11, "EVENT_RIL_REQUEST_GET_IMSI_DONE"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "ar":Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error in RIL_REQUEST_GET_IMSI : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v11, v12}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception parsing record "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_1

    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_3
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v13, :cond_3

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xf

    if-le v11, v12, :cond_5

    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const-string v11, "invalid IMSI"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v11

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/lge/uicc/ImsiHandler;->onRecordLoaded()V

    :cond_4
    throw v11

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_5
    const/4 v11, 0x1

    :try_start_4
    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "KDDI"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    :try_start_5
    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v9

    .local v9, "nfe":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    :try_start_6
    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const-string v11, "corrupt IMSI"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    :sswitch_1
    const-string v11, "EVENT_GET_IMSIP_DONE_KR"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMSIP: Exception -can\'t read IMSIP correctly: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .local v2, "data":[B
    const-string v11, "skt.imsi_p"

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v11, "card_operator"

    const-string v12, "SKT"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v2    # "data":[B
    :sswitch_2
    const-string v11, "EVENT_GET_MSISDN_DONE_KR"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSISDN_KR Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .restart local v2    # "data":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSISDN-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    array-length v11, v2

    add-int/lit8 v11, v11, -0xe

    add-int/lit8 v11, v11, 0x2

    array-length v12, v2

    add-int/lit8 v12, v12, -0x3

    invoke-static {v2, v11, v12}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v11

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    if-nez v11, :cond_8

    const-string v11, "msisdnNumber is Invalid"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSISDN Number-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    invoke-static {v12}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    const/4 v11, 0x0

    iput v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    const/16 v11, 0xa

    if-ge v5, v11, :cond_9

    iget v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    aget-byte v12, v12, v5

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v11, v12

    iput v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    iget v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    if-eqz v11, :cond_a

    iget v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    const/16 v12, 0x9f6

    if-ne v11, v12, :cond_b

    :cond_a
    const-string v11, "card_provisioned"

    const-string v12, "no"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_b
    const-string v11, "card_provisioned"

    const-string v12, "yes"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v2    # "data":[B
    .end local v5    # "i":I
    :sswitch_3
    const-string v11, "EVENT_GET_MASTER_IMSI_DONE_LGU"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception querying EF_MASTER_IMSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .restart local v2    # "data":[B
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    if-nez v11, :cond_d

    const-string v11, "EF_MASTER_IMSI is empty!!"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v8

    .local v8, "master_imsi":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v14, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid value in EF_MASTER_IMSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iput-object v2, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    const/4 v11, 0x5

    const/16 v12, 0x14

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "home_imsi":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "45006"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "lgu.home_imsi"

    invoke-static {v11, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v2    # "data":[B
    .end local v4    # "home_imsi":Ljava/lang/String;
    .end local v8    # "master_imsi":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    add-int/lit16 v11, v11, -0xc9

    add-int/lit8 v5, v11, 0x1

    .restart local v5    # "i":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_GET_SPON_IMSI"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_DONE_LGU"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception querying SponIMSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .restart local v2    # "data":[B
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    if-nez v11, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EF_SPON"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_IMSI is empty!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v10

    .local v10, "spon_imsi":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v14, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid value in EF_SPON"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_IMSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lgu.spon"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_imsi"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    const/16 v13, 0x14

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v2    # "data":[B
    .end local v5    # "i":I
    .end local v10    # "spon_imsi":Ljava/lang/String;
    :sswitch_5
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HPLMNWACT: Exception in fetching HPLMNWACT Records "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .restart local v2    # "data":[B
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    if-nez v11, :cond_13

    const-string v11, "HPLMNWACT is Invalid "

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EF_HPLMNWACT = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MCC/MNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x6

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " E-UTRAN = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    const/4 v13, 0x6

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logp(Ljava/lang/String;)V

    array-length v7, v2

    .local v7, "len":I
    const/16 v11, 0x64

    if-le v7, v11, :cond_14

    const/16 v7, 0x64

    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v7, :cond_15

    aget-byte v11, v2, v5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    add-int/lit8 v11, v5, 0x1

    aget-byte v11, v2, v11

    const/16 v12, -0xc

    if-ne v11, v12, :cond_16

    add-int/lit8 v11, v5, 0x2

    aget-byte v11, v2, v11

    const/16 v12, 0x40

    if-ne v11, v12, :cond_16

    add-int/lit8 v11, v5, 0x3

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x40

    const/16 v12, 0x40

    if-eq v11, v12, :cond_1a

    const-string v11, "card_operator"

    const-string v12, "VZW3G"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v11, "return VZW 3G"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    :cond_15
    :goto_4
    const-string v11, "hplmnwact"

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_16
    aget-byte v11, v2, v5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_17

    add-int/lit8 v11, v5, 0x1

    aget-byte v11, v2, v11

    const/16 v12, -0xc

    if-ne v11, v12, :cond_17

    add-int/lit8 v11, v5, 0x2

    aget-byte v11, v2, v11

    const/16 v12, 0x40

    if-eq v11, v12, :cond_18

    :cond_17
    aget-byte v11, v2, v5

    const/16 v12, 0x13

    if-ne v11, v12, :cond_1a

    add-int/lit8 v11, v5, 0x1

    aget-byte v11, v2, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a

    add-int/lit8 v11, v5, 0x2

    aget-byte v11, v2, v11

    const/16 v12, -0x7c

    if-ne v11, v12, :cond_1a

    :cond_18
    add-int/lit8 v11, v5, 0x3

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x40

    const/16 v12, 0x40

    if-ne v11, v12, :cond_1a

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "311480"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "20404"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_19
    const-string v11, "card_operator"

    const-string v12, "VZW4G"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v11, "return VZW 4G"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_1a
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2b -> :sswitch_2
        0x6e -> :sswitch_5
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_4
        0xcb -> :sswitch_4
    .end sparse-switch
.end method
