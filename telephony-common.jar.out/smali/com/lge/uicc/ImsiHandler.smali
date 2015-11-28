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

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    .line 102
    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 108
    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    .line 112
    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    .line 55
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/lge/uicc/SimNodeHandlerSPR;

    invoke-static {}, Lcom/lge/uicc/LGUICC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/uicc/SimNodeHandlerSPR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    .line 61
    :cond_0
    return-void
.end method

.method protected static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 524
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LGU"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
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

    .line 504
    const-string v4, "\nLGU+ HOME OPLMN:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    iget-object v4, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    const/16 v5, 0xa

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/lge/uicc/EfUtils;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "oplmnList":Ljava/lang/String;
    const/4 v0, 0x0

    .line 507
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, v1, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 508
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_1

    .line 520
    :cond_0
    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_4

    const-string v4, ""

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    return-void

    .line 510
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

    .line 512
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

    .line 513
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v11, :cond_2

    .line 514
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

    .line 515
    :cond_2
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_3

    .line 516
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    :goto_2
    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_0

    .line 518
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

    .line 520
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

    .line 115
    invoke-static {v4, v3}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 116
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_1

    .line 117
    const-string v1, "fails to get IccFileHandler !!!"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 122
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

    .line 123
    const-string v1, "fetch EF_IMSI_P, EF_MSISDN"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 124
    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 125
    const/16 v1, 0x2f24

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 126
    const/16 v1, 0x6f40

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 128
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "KR"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const-string v1, "fetch EF_LGU_MASTER_IMSI, EF_LGU_SPON_IMSIs"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 131
    const/16 v1, 0x2f40

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 132
    const/16 v1, 0x2f41

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 133
    const/16 v1, 0x2f42

    const/16 v2, 0xca

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 134
    const/16 v1, 0x2f43

    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Lcom/lge/uicc/ImsiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 136
    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "VZW"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "fetch EF_HPLMNWACT"

    invoke-static {v1}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 138
    iget v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 139
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
    .line 64
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_0

    .line 72
    .end local p2    # "msg":Landroid/os/Message;
    :goto_0
    return-object p2

    .line 67
    .restart local p2    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget-object v0, v0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "start loading records for IMSI"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/ImsiHandler;->fetchRecordsForImsi()V

    .line 71
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    iget v1, v0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 72
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

    .line 418
    const-string v2, "card_provisioned"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
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

    .line 429
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

    .line 430
    const/4 v1, 0x1

    .line 434
    .end local v0    # "card_operator":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 536
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

    .line 537
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 533
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

    .line 534
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 539
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

    .line 540
    return-void
.end method

.method private onRecordLoaded()V
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    .line 334
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setImsiTypeForLGU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setCardOperator(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/uicc/ImsiHandler;->setImsiLockForSPR(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 340
    const-string v0, "recordsForImsi < 0, programmer error suspected"

    invoke-static {v0}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/ImsiHandler;->recordsToLoad:I

    goto :goto_0
.end method

.method private returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mMessageQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 79
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    .line 80
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

    .line 81
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

    .line 82
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v1, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 83
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 85
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

    .line 346
    const-string v3, "UNKNOWN"

    .line 348
    .local v3, "op":Ljava/lang/String;
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    .line 349
    .local v2, "mnclen":I
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 351
    .local v1, "mccmnc":I
    sparse-switch v1, :sswitch_data_0

    .line 392
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

    .line 394
    :cond_0
    const-string v3, "TEST"

    .line 400
    :cond_1
    :goto_0
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 401
    const-string v5, "card_provisioned"

    const-string v6, "yes"

    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    :cond_2
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 404
    const-string v5, "card_operator"

    invoke-static {v5, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    :cond_3
    const-string v5, "card_operator"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
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

    .line 408
    const-string v5, "ril.card_operator"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v5, "card_provisioned"

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
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

    .line 412
    const-string v5, "ril.card_provisioned"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void

    .line 353
    .end local v0    # "card_operator":Ljava/lang/String;
    .end local v4    # "provisioned":Ljava/lang/String;
    :sswitch_0
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "SPR"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    const-string v3, "SPR"

    goto :goto_0

    .line 358
    :sswitch_1
    const-string v3, "SKT"

    .line 359
    goto :goto_0

    .line 362
    :sswitch_2
    const-string v3, "KT"

    .line 363
    goto :goto_0

    .line 365
    :sswitch_3
    const-string v3, "LGU"

    .line 366
    goto :goto_0

    .line 368
    :sswitch_4
    const-string v3, "VZW3G"

    .line 369
    goto/16 :goto_0

    .line 371
    :sswitch_5
    const-string v3, "VZW4G"

    .line 372
    goto/16 :goto_0

    .line 374
    :sswitch_6
    const-string v3, "USC3G"

    .line 375
    goto/16 :goto_0

    .line 377
    :sswitch_7
    const-string v3, "USC4G"

    .line 378
    goto/16 :goto_0

    .line 382
    :sswitch_8
    const-string v3, "MPCS"

    .line 383
    goto/16 :goto_0

    .line 385
    :sswitch_9
    const-string v3, "DCM"

    .line 386
    goto/16 :goto_0

    .line 388
    :sswitch_a
    const-string v3, "SPR"

    .line 389
    goto/16 :goto_0

    .line 351
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
    .line 439
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SPR"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/lge/uicc/ImsiHandler;->mSimNodeHandler:Lcom/lge/uicc/SimNodeHandlerSPR;

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Lcom/lge/uicc/SimNodeHandlerSPR;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "SIMLock":Ljava/lang/String;
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
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

    .line 448
    const-string v2, "SIMLock by sim type"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 457
    :goto_1
    const-string v2, "spr.omadm_lock"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 450
    :cond_1
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/lge/uicc/ImsiHandler;->isUsaOperatorExceptSPR(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    const-string v2, "the device will not allow an international UICC to be used, MCC of the USIM/IMSI is equal to 310"

    invoke-static {v2}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 454
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

    .line 461
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "KR"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 500
    .end local p1    # "imsi":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 465
    .restart local p1    # "imsi":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "450069"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    const-string v4, "card_provisioned"

    const-string v5, "no"

    invoke-static {v4, v5}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 467
    const-string v4, "non-provisioned UICC for LGU+"

    invoke-static {v4}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    const-string v4, "lgu.home_imsi"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "home_imsi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 473
    const-string v4, "setImsiTypeLGU : can not decide imsi type"

    invoke-static {v4}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_2
    const-string v4, "lgu.ef_roaming.state"

    invoke-static {v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WAIT_REFRESH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    const-string v4, "lgu.ef_roaming.state"

    const-string v5, "UPDATED"

    invoke-static {v4, v5}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 479
    const-string v4, "com.lge.intent.action.LGU_ROAMING_SET_FINISHED"

    invoke-static {v4}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 482
    :cond_3
    const-string v2, ""

    .line 483
    .local v2, "imsi_type":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 484
    .local v3, "mccmnc":I
    packed-switch v3, :pswitch_data_0

    .line 490
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x3

    if-gt v1, v4, :cond_4

    .line 491
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

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const-string v4, "lgu.imsi_type"

    invoke-static {v4, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-object p1, v0

    .line 500
    goto/16 :goto_0

    .line 486
    :pswitch_0
    const-string v2, "HOME"

    .line 487
    goto :goto_2

    .line 490
    .restart local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0xafce
        :pswitch_0
    .end packed-switch
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/lge/uicc/ImsiHandler;

    invoke-direct {v0}, Lcom/lge/uicc/ImsiHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/ImsiHandler;->mInstance:Lcom/lge/uicc/ImsiHandler;

    .line 52
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

    .line 147
    const/4 v6, 0x1

    .line 150
    .local v6, "isRecordLoadResponse":Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 151
    .local v1, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 318
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

    .line 326
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 327
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :goto_1
    invoke-direct {p0}, Lcom/lge/uicc/ImsiHandler;->onRecordLoaded()V

    .line 330
    :cond_1
    return-void

    .line 153
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_0
    :try_start_1
    const-string v11, "EVENT_RIL_REQUEST_GET_IMSI_DONE"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "ar":Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .line 155
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_2

    .line 156
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

    .line 157
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v11, v12}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 321
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 323
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

    .line 326
    if-eqz v6, :cond_1

    goto :goto_1

    .line 160
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_3
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 161
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

    .line 163
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

    .line 164
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 165
    const-string v11, "invalid IMSI"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 166
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 326
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v11

    if-eqz v6, :cond_4

    .line 327
    invoke-direct {p0}, Lcom/lge/uicc/ImsiHandler;->onRecordLoaded()V

    .line 326
    :cond_4
    throw v11

    .line 171
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

    .line 173
    :try_start_5
    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v9

    .line 175
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    :try_start_6
    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->mImsi:Ljava/lang/String;

    .line 176
    const-string v11, "corrupt IMSI"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 177
    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/lge/uicc/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 184
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    :sswitch_1
    const-string v11, "EVENT_GET_IMSIP_DONE_KR"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 185
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_6

    .line 186
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

    .line 189
    :cond_6
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .line 190
    .local v2, "data":[B
    const-string v11, "skt.imsi_p"

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    const-string v11, "card_operator"

    const-string v12, "SKT"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 195
    .end local v2    # "data":[B
    :sswitch_2
    const-string v11, "EVENT_GET_MSISDN_DONE_KR"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 196
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_7

    .line 197
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

    .line 201
    :cond_7
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .line 202
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

    .line 204
    array-length v11, v2

    add-int/lit8 v11, v11, -0xe

    add-int/lit8 v11, v11, 0x2

    array-length v12, v2

    add-int/lit8 v12, v12, -0x3

    invoke-static {v2, v11, v12}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v11

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    .line 205
    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    if-nez v11, :cond_8

    .line 206
    const-string v11, "msisdnNumber is Invalid"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
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

    .line 211
    const/4 v11, 0x0

    iput v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    .line 212
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    const/16 v11, 0xa

    if-ge v5, v11, :cond_9

    .line 213
    iget v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->msisdnNumber:[B

    aget-byte v12, v12, v5

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v11, v12

    iput v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 215
    :cond_9
    iget v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    if-eqz v11, :cond_a

    iget v11, p0, Lcom/lge/uicc/ImsiHandler;->sumNumber:I

    const/16 v12, 0x9f6

    if-ne v11, v12, :cond_b

    .line 216
    :cond_a
    const-string v11, "card_provisioned"

    const-string v12, "no"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 218
    :cond_b
    const-string v11, "card_provisioned"

    const-string v12, "yes"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 222
    .end local v2    # "data":[B
    .end local v5    # "i":I
    :sswitch_3
    const-string v11, "EVENT_GET_MASTER_IMSI_DONE_LGU"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 223
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_c

    .line 224
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

    .line 228
    :cond_c
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .line 229
    .restart local v2    # "data":[B
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    if-nez v11, :cond_d

    .line 230
    const-string v11, "EF_MASTER_IMSI is empty!!"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_d
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "master_imsi":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v14, :cond_e

    .line 236
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

    .line 240
    :cond_e
    iput-object v2, p0, Lcom/lge/uicc/ImsiHandler;->masterImsi:[B

    .line 241
    const/4 v11, 0x5

    const/16 v12, 0x14

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "home_imsi":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "45006"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 243
    const-string v11, "lgu.home_imsi"

    invoke-static {v11, v4}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 250
    .end local v2    # "data":[B
    .end local v4    # "home_imsi":Ljava/lang/String;
    .end local v8    # "master_imsi":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    add-int/lit16 v11, v11, -0xc9

    add-int/lit8 v5, v11, 0x1

    .line 251
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

    .line 252
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_f

    .line 253
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

    .line 257
    :cond_f
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .line 258
    .restart local v2    # "data":[B
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    if-nez v11, :cond_10

    .line 259
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

    .line 262
    :cond_10
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "spon_imsi":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v14, :cond_11

    .line 264
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

    .line 267
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

    .line 272
    .end local v2    # "data":[B
    .end local v5    # "i":I
    .end local v10    # "spon_imsi":Ljava/lang/String;
    :sswitch_5
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_12

    .line 273
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

    .line 274
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    goto/16 :goto_0

    .line 277
    :cond_12
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    .line 278
    .restart local v2    # "data":[B
    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    .line 279
    iget-object v11, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    if-nez v11, :cond_13

    .line 280
    const-string v11, "HPLMNWACT is Invalid "

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
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

    .line 285
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

    .line 287
    array-length v7, v2

    .line 288
    .local v7, "len":I
    const/16 v11, 0x64

    if-le v7, v11, :cond_14

    .line 289
    const/16 v7, 0x64

    .line 292
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v7, :cond_15

    .line 293
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

    .line 294
    add-int/lit8 v11, v5, 0x3

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x40

    const/16 v12, 0x40

    if-eq v11, v12, :cond_1a

    .line 295
    const-string v11, "card_operator"

    const-string v12, "VZW3G"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    const-string v11, "return VZW 3G"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 313
    :cond_15
    :goto_4
    const-string v11, "hplmnwact"

    iget-object v12, p0, Lcom/lge/uicc/ImsiHandler;->efHplmnwact:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 299
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

    .line 302
    :cond_18
    add-int/lit8 v11, v5, 0x3

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x40

    const/16 v12, 0x40

    if-ne v11, v12, :cond_1a

    .line 304
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

    .line 306
    :cond_19
    const-string v11, "card_operator"

    const-string v12, "VZW4G"

    invoke-static {v11, v12}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    const-string v11, "return VZW 4G"

    invoke-static {v11}, Lcom/lge/uicc/ImsiHandler;->logd(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 292
    :cond_1a
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_3

    .line 151
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
