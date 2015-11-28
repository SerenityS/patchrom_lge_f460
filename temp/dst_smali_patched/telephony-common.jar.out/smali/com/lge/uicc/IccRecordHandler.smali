.class public Lcom/lge/uicc/IccRecordHandler;
.super Landroid/os/Handler;
.source "IccRecordHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/IccRecordHandler$SMSPType;
    }
.end annotation


# static fields
.field private static final EVENT_READ_RECORD_ALL_DONE:I = 0x3

.field private static final EVENT_READ_RECORD_DONE:I = 0x1

.field private static final EVENT_UPDATE_RECORD_DONE:I = 0x2

.field private static final SIZE_OF_SMSP_NONE_ALPHA_ID:I = 0x1c

.field private static final SMSP_ADDRESS_SIZE:I = 0xc

.field private static mInstance:Lcom/lge/uicc/IccRecordHandler;

.field private static mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;


# instance fields
.field private returnAllBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private returnBytes:[B

.field private returnFlag:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B

    iput-object v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static SMSPtoString(Lcom/lge/uicc/IccRecordHandler$SMSPType;)Ljava/lang/String;
    .locals 2
    .param p0, "smspData"    # Lcom/lge/uicc/IccRecordHandler$SMSPType;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alphaID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ParamIndi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Dest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Center:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ProtoclID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ProtoclID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->CodeScheme:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Period:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ValidPeriod:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static analyzeSMSP([B)Lcom/lge/uicc/IccRecordHandler$SMSPType;
    .locals 8
    .param p0, "SimData"    # [B

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;

    invoke-direct {v1}, Lcom/lge/uicc/IccRecordHandler$SMSPType;-><init>()V

    .local v1, "TempSMSP":Lcom/lge/uicc/IccRecordHandler$SMSPType;
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1c

    .local v0, "NoneAlphaStartPoint":I
    const/4 v2, 0x0

    .local v2, "arrayPoint":I
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v2, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v4

    iput-object v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    move v2, v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .local v3, "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    iget-object v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    invoke-static {p0, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0xc

    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    iget-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget-object v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v2, v2, 0xc

    iget-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ProtoclID:B

    move v2, v3

    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :goto_1
    iget-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->CodeScheme:B

    move v2, v3

    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ValidPeriod:B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->SMSPtoString(Lcom/lge/uicc/IccRecordHandler$SMSPType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static cdmaMdnBytesToString([B)Ljava/lang/String;
    .locals 10
    .param p0, "mdnBytes"    # [B

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit8 v5, v8, 0xf

    .local v5, "mdnDigitsNum":I
    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v1, 0x0

    .local v1, "count":I
    new-array v4, v5, [C

    .local v4, "mdnChars":[C
    const/4 v3, 0x1

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    if-ge v2, v5, :cond_5

    array-length v8, p0

    if-ge v3, v8, :cond_5

    aget-byte v0, p0, v3

    .local v0, "b":B
    and-int/lit8 v6, v0, 0xf

    .local v6, "v":I
    if-le v6, v9, :cond_2

    const/4 v6, 0x0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v8, v6, 0x30

    int-to-char v8, v8

    aput-char v8, v4, v2

    if-ne v1, v5, :cond_3

    .end local v0    # "b":B
    .end local v6    # "v":I
    :goto_2
    if-ne v1, v5, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .restart local v0    # "b":B
    .restart local v6    # "v":I
    :cond_3
    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v6, v8, 0xf

    if-le v6, v9, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    add-int/lit8 v8, v6, 0x30

    int-to-char v8, v8

    aput-char v8, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "b":B
    .end local v6    # "v":I
    :cond_5
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method private static cdmaMdnStringToBytes(Ljava/lang/String;)[B
    .locals 12
    .param p0, "mdnStr"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x9

    if-nez p0, :cond_0

    move-object v5, v7

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "sz":I
    if-eqz v6, :cond_1

    const/16 v8, 0xf

    if-le v6, v8, :cond_2

    :cond_1
    move-object v5, v7

    goto :goto_0

    :cond_2
    const/16 v8, 0xb

    new-array v5, v8, [B

    .local v5, "mdnBytes":[B
    and-int/lit8 v8, v6, 0xf

    int-to-byte v8, v8

    aput-byte v8, v5, v10

    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    if-ge v3, v9, :cond_b

    if-ne v1, v6, :cond_3

    const/4 v8, -0x1

    aput-byte v8, v5, v3

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x30

    .local v4, "lo":I
    if-ltz v4, :cond_4

    if-le v4, v9, :cond_5

    :cond_4
    move-object v5, v7

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    const/16 v4, 0xa

    :cond_6
    if-ne v0, v6, :cond_7

    or-int/lit16 v8, v4, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v2, v8, -0x30

    .local v2, "hi":I
    if-ltz v2, :cond_8

    if-le v2, v9, :cond_9

    :cond_8
    move-object v5, v7

    goto :goto_0

    :cond_9
    if-nez v2, :cond_a

    const/16 v2, 0xa

    :cond_a
    shl-int/lit8 v8, v2, 0x4

    or-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2

    .end local v0    # "count":I
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    .restart local v1    # "count":I
    :cond_b
    aput-byte v11, v5, v9

    aput-byte v10, v5, v11

    goto :goto_0
.end method

.method private static composeSMSP(Lcom/lge/uicc/IccRecordHandler$SMSPType;)[B
    .locals 6
    .param p0, "smspData"    # Lcom/lge/uicc/IccRecordHandler$SMSPType;

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSP: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/lge/uicc/IccRecordHandler;->SMSPtoString(Lcom/lge/uicc/IccRecordHandler$SMSPType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .local v0, "SimData":[B
    const/4 v1, 0x0

    .local v1, "arrayPoint":I
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    array-length v3, v3

    add-int/2addr v1, v3

    :cond_1
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    :cond_2
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SVCCenterAddr[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ParamIndicator: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arrayPoint":I
    .local v2, "arrayPoint":I
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    aput-byte v3, v0, v1

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    array-length v3, v3

    add-int v1, v2, v3

    .end local v2    # "arrayPoint":I
    .restart local v1    # "arrayPoint":I
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ProtoclID:B

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v1    # "arrayPoint":I
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->CodeScheme:B

    aput-byte v3, v0, v2

    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ValidPeriod:B

    aput-byte v3, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMSPData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "SimData":[B
    .end local v1    # "arrayPoint":I
    :cond_3
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    array-length v3, v3

    goto/16 :goto_1

    .restart local v0    # "SimData":[B
    .restart local v1    # "arrayPoint":I
    :cond_4
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    goto :goto_2
.end method

.method private static decodeSCAddr([B)Ljava/lang/String;
    .locals 5
    .param p0, "scData"    # [B

    .prologue
    const/4 v4, 0x1

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    .local v1, "scAddrString":Ljava/lang/String;
    const/4 v2, 0x0

    aget-byte v0, p0, v2

    .local v0, "length":I
    if-lez v0, :cond_0

    const/4 v2, 0x2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v3}, Lcom/lge/uicc/EfUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    aget-byte v2, p0, v4

    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_0

    const-string v2, "+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static encodeSCAddr(Ljava/lang/String;[B)[B
    .locals 12
    .param p0, "newSCAddr"    # Ljava/lang/String;
    .param p1, "oldSCAddr"    # [B

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0xc

    new-array v4, v7, [B

    .local v4, "scData":[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    const-string v7, "SMSPData SCAddr is Null: "

    invoke-static {v7}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    .end local v4    # "scData":[B
    :goto_0
    return-object v4

    :cond_0
    const/16 v7, 0x2b

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1

    const/4 v0, 0x1

    .local v0, "InternationalIndicator":B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "tempString":Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "tempData":[B
    array-length v7, p1

    new-array v4, v7, [B

    .restart local v4    # "scData":[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    array-length v7, v5

    div-int/lit8 v7, v7, 0x2

    array-length v8, v5

    rem-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xff

    if-eq v7, v8, :cond_2

    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    if-eqz v7, :cond_2

    shl-int/lit8 v7, v0, 0x4

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0x8f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    add-int/lit8 v7, v2, 0x1

    array-length v8, v5

    if-ge v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v5, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "InternationalIndicator":B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "scData":[B
    .end local v5    # "tempData":[B
    .end local v6    # "tempString":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "InternationalIndicator":B
    goto :goto_1

    .restart local v6    # "tempString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, p1

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "scData":[B
    .restart local v5    # "tempData":[B
    :cond_2
    shl-int/lit8 v7, v0, 0x4

    or-int/lit16 v7, v7, 0x81

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    goto :goto_2

    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_3
    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccRecordHandler] "

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

    const-string v1, "[IccRecordHandler] "

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

    const-string v1, "[IccRecordHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logp(Ljava/lang/String;)V

    return-void
.end method

.method protected static declared-synchronized read(I)[B
    .locals 10
    .param p0, "efid"    # I

    .prologue
    const/4 v2, 0x0

    const-class v3, Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sparse-switch p0, :sswitch_data_0

    :try_start_1
    const-string v5, "Not supported efid"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return-object v2

    :sswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    invoke-static {v5, v6}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_0

    const-string v5, "fails to get UsimFileHandler"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_0

    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    :try_start_4
    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v6, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v6, v6, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B

    invoke-static {v6}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logp(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v2, v5, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4

    goto :goto_0

    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_1

    const-string v5, "fails to get UsimFileHandler"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, p0, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_1

    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_2
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_2

    const-string v5, "fails to get CsimFileHandler"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x1

    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, p0, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "interrupted while trying to read EF"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f30 -> :sswitch_0
        0x2f39 -> :sswitch_0
        0x2f40 -> :sswitch_0
        0x2f41 -> :sswitch_0
        0x2f42 -> :sswitch_0
        0x2f43 -> :sswitch_0
        0x2f50 -> :sswitch_0
        0x2fe2 -> :sswitch_0
        0x2fe7 -> :sswitch_0
        0x2ff0 -> :sswitch_0
        0x4f1c -> :sswitch_0
        0x4f22 -> :sswitch_0
        0x4f55 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f42 -> :sswitch_1
        0x6f44 -> :sswitch_2
        0x6f73 -> :sswitch_0
        0x6f7b -> :sswitch_0
        0x6f7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static declared-synchronized readAll(I)Ljava/util/ArrayList;
    .locals 11
    .param p0, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-class v5, Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAll: efid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch p0, :pswitch_data_0

    :try_start_1
    const-string v3, "Not supported efid"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    :goto_0
    monitor-exit v5

    return-object v3

    :pswitch_0
    const/4 v3, 0x0

    const/4 v7, 0x1

    :try_start_2
    invoke-static {v3, v7}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_0

    const-string v3, "fails to get UsimFileHandler"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v6

    move-object v3, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v7, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAll : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "%x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logp(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6

    goto :goto_0

    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v5

    throw v3

    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "interrupted while trying to read EF"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4f84
        :pswitch_0
    .end packed-switch
.end method

.method protected static readAllToString(I)[Ljava/lang/String;
    .locals 8
    .param p0, "efid"    # I

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAllToString: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lge/uicc/IccRecordHandler;->readAll(I)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "allDataBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    .local v1, "allDataString":[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_OCSGL Record Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EFReadAll ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4f84
        :pswitch_0
    .end packed-switch
.end method

.method protected static readToString(I)Ljava/lang/String;
    .locals 9
    .param p0, "efid"    # I

    .prologue
    const/4 v8, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readToString: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lge/uicc/IccRecordHandler;->read(I)[B

    move-result-object v0

    .local v0, "dataBytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "dataString":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logp(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EFRead "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lge/uicc/IccRecordHandler;->analyzeSMSP([B)Lcom/lge/uicc/IccRecordHandler$SMSPType;

    move-result-object v3

    sput-object v3, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMSP-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->SMSPtoString(Lcom/lge/uicc/IccRecordHandler$SMSPType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCaddr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    iget-object v4, v4, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->decodeSCAddr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->decodeSCAddr([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    invoke-static {v0}, Lcom/lge/uicc/IccRecordHandler;->cdmaMdnBytesToString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_3
    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, "tmpString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2f50 -> :sswitch_2
        0x6f07 -> :sswitch_3
        0x6f42 -> :sswitch_0
        0x6f44 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static setup()V
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/uicc/IccRecordHandler;

    invoke-direct {v0}, Lcom/lge/uicc/IccRecordHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    :cond_0
    return-void
.end method

.method protected static declared-synchronized update(I[B)Z
    .locals 12
    .param p0, "efid"    # I
    .param p1, "dataBytes"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-class v10, Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v10

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "invalid dataBytes"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v8

    :goto_0
    monitor-exit v10

    return v1

    :cond_0
    :try_start_1
    sget-object v11, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sparse-switch p0, :sswitch_data_0

    :try_start_2
    const-string v1, "Not supported efid"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v11

    move v1, v8

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_1

    const-string v1, "fails to get UsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v11

    move v1, v8

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-boolean v2, v2, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->logp(Ljava/lang/String;)V

    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-boolean v1, v1, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_5

    :try_start_4
    monitor-exit v11

    move v1, v8

    goto :goto_0

    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    const-string v1, "fails to get UsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v11

    move v1, v8

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_1

    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v10

    throw v1

    :sswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_3

    const-string v1, "fails to get UsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v11

    move v1, v8

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v3, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_3
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_4

    const-string v1, "fails to get CsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v11

    move v1, v8

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v3, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update EF"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    monitor-exit v11

    move v1, v8

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_5
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    packed-switch p0, :pswitch_data_0

    :goto_2
    move v1, v9

    goto/16 :goto_0

    :pswitch_0
    :try_start_7
    const-string v1, "lgu.imsi_type"

    const-string v2, "XXXX"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "imsi_type":Ljava/lang/String;
    const-string v1, "HOME"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_8

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_8

    :cond_7
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-nez v1, :cond_9

    :cond_8
    const-string v1, "com.lge.intent.action.LGU_ROAMING_SET_FINISHED"

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    const-string v1, "lgu.ef_roaming.state"

    const-string v2, "UPDATED"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    const-string v1, "lgu.ef_roaming"

    invoke-static {p1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_9
    const-string v1, "lgu.ef_roaming.state"

    const-string v2, "WAIT_REFRESH"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x2f39 -> :sswitch_1
        0x2f40 -> :sswitch_1
        0x2f41 -> :sswitch_1
        0x2f42 -> :sswitch_1
        0x2f43 -> :sswitch_1
        0x2f50 -> :sswitch_0
        0x6f42 -> :sswitch_2
        0x6f44 -> :sswitch_3
        0x6f73 -> :sswitch_1
        0x6f7b -> :sswitch_1
        0x6f7e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2f50
        :pswitch_0
    .end packed-switch
.end method

.method protected static updateFromString(ILjava/lang/String;)Z
    .locals 8
    .param p0, "efid"    # I
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFromString: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%x"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "dataBytes":[B
    const/4 v1, 0x0

    .local v1, "result":Z
    sparse-switch p0, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_4

    :cond_0
    :goto_1
    return v2

    :sswitch_0
    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    if-nez v4, :cond_1

    const-string v3, "mSMSPType is null"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    iget-object v5, v5, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {p1, v5}, Lcom/lge/uicc/IccRecordHandler;->encodeSCAddr(Ljava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v4, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->composeSMSP(Lcom/lge/uicc/IccRecordHandler$SMSPType;)[B

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EFWrite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->cdmaMdnStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :sswitch_2
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string p1, "00"

    :cond_3
    invoke-static {p1}, Lcom/lge/uicc/EfUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/lge/uicc/IccRecordHandler;->update(I[B)Z

    move-result v4

    if-eqz v4, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v2, v3

    goto :goto_1

    :pswitch_1
    const-string v2, "scaddress"

    invoke-static {v2, p1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :pswitch_2
    const-string v2, "mdn"

    invoke-static {v2, p1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2f50 -> :sswitch_2
        0x6f42 -> :sswitch_0
        0x6f44 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6f42
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .local v2, "data":[B
    const/4 v0, 0x0

    .local v0, "alldata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, "flag":Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    const-string v5, "invalid event!!!"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    :goto_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_1

    const-string v5, "invalid event!!!"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v5, "EVENT_READ_RECORD_DONE"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    goto :goto_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v5, "EVENT_READ_RECORD_ALL_DONE"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "alldata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "alldata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v5, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .local v4, "icc_result":Lcom/android/internal/telephony/uicc/IccIoResult;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v3

    goto/16 :goto_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "icc_result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_3
    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v6

    :try_start_0
    iput-object v2, p0, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B

    iput-boolean v3, p0, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :pswitch_4
    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v6

    :try_start_1
    iput-object v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
