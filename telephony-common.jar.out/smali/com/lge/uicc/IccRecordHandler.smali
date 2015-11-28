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

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B

    .line 39
    iput-object v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    .line 58
    const-string v0, "create instance"

    invoke-static {v0}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private static SMSPtoString(Lcom/lge/uicc/IccRecordHandler$SMSPType;)Ljava/lang/String;
    .locals 2
    .param p0, "smspData"    # Lcom/lge/uicc/IccRecordHandler$SMSPType;

    .prologue
    .line 540
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

    .line 454
    if-nez p0, :cond_0

    .line 455
    const/4 v1, 0x0

    .line 493
    :goto_0
    return-object v1

    .line 458
    :cond_0
    new-instance v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;

    invoke-direct {v1}, Lcom/lge/uicc/IccRecordHandler$SMSPType;-><init>()V

    .line 459
    .local v1, "TempSMSP":Lcom/lge/uicc/IccRecordHandler$SMSPType;
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1c

    .line 460
    .local v0, "NoneAlphaStartPoint":I
    const/4 v2, 0x0

    .line 462
    .local v2, "arrayPoint":I
    if-lez v0, :cond_1

    .line 463
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v2, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v4

    iput-object v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    .line 464
    move v2, v0

    .line 467
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .local v3, "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    .line 469
    iget-object v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    invoke-static {p0, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    add-int/lit8 v2, v3, 0xc

    .line 472
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    iget-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 474
    iget-object v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 478
    iget-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 479
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ProtoclID:B

    move v2, v3

    .line 484
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :goto_1
    iget-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 485
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->CodeScheme:B

    move v2, v3

    .line 490
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ValidPeriod:B

    .line 492
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

    .line 481
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
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

    .line 624
    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit8 v5, v8, 0xf

    .line 625
    .local v5, "mdnDigitsNum":I
    if-nez v5, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-object v7

    .line 629
    :cond_1
    const/4 v1, 0x0

    .line 630
    .local v1, "count":I
    new-array v4, v5, [C

    .line 631
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

    .line 633
    aget-byte v0, p0, v3

    .line 635
    .local v0, "b":B
    and-int/lit8 v6, v0, 0xf

    .line 636
    .local v6, "v":I
    if-le v6, v9, :cond_2

    const/4 v6, 0x0

    .line 637
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v8, v6, 0x30

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 639
    if-ne v1, v5, :cond_3

    .line 647
    .end local v0    # "b":B
    .end local v6    # "v":I
    :goto_2
    if-ne v1, v5, :cond_0

    .line 650
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 643
    .restart local v0    # "b":B
    .restart local v6    # "v":I
    :cond_3
    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v6, v8, 0xf

    .line 644
    if-le v6, v9, :cond_4

    const/4 v6, 0x0

    .line 645
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    add-int/lit8 v8, v6, 0x30

    int-to-char v8, v8

    aput-char v8, v4, v1

    .line 631
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

    .line 654
    if-nez p0, :cond_0

    move-object v5, v7

    .line 699
    :goto_0
    return-object v5

    .line 658
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 659
    .local v6, "sz":I
    if-eqz v6, :cond_1

    const/16 v8, 0xf

    if-le v6, v8, :cond_2

    :cond_1
    move-object v5, v7

    .line 660
    goto :goto_0

    .line 663
    :cond_2
    const/16 v8, 0xb

    new-array v5, v8, [B

    .line 664
    .local v5, "mdnBytes":[B
    and-int/lit8 v8, v6, 0xf

    int-to-byte v8, v8

    aput-byte v8, v5, v10

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    if-ge v3, v9, :cond_b

    .line 668
    if-ne v1, v6, :cond_3

    .line 669
    const/4 v8, -0x1

    aput-byte v8, v5, v3

    move v0, v1

    .line 667
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 673
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x30

    .line 674
    .local v4, "lo":I
    if-ltz v4, :cond_4

    if-le v4, v9, :cond_5

    :cond_4
    move-object v5, v7

    .line 675
    goto :goto_0

    .line 677
    :cond_5
    if-nez v4, :cond_6

    .line 678
    const/16 v4, 0xa

    .line 681
    :cond_6
    if-ne v0, v6, :cond_7

    .line 682
    or-int/lit16 v8, v4, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    goto :goto_2

    .line 686
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v2, v8, -0x30

    .line 687
    .local v2, "hi":I
    if-ltz v2, :cond_8

    if-le v2, v9, :cond_9

    :cond_8
    move-object v5, v7

    .line 688
    goto :goto_0

    .line 690
    :cond_9
    if-nez v2, :cond_a

    .line 691
    const/16 v2, 0xa

    .line 693
    :cond_a
    shl-int/lit8 v8, v2, 0x4

    or-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2

    .line 696
    .end local v0    # "count":I
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    .restart local v1    # "count":I
    :cond_b
    aput-byte v11, v5, v9

    .line 697
    aput-byte v10, v5, v11

    goto :goto_0
.end method

.method private static composeSMSP(Lcom/lge/uicc/IccRecordHandler$SMSPType;)[B
    .locals 6
    .param p0, "smspData"    # Lcom/lge/uicc/IccRecordHandler$SMSPType;

    .prologue
    const/4 v4, 0x0

    .line 497
    if-nez p0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    .line 501
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

    .line 502
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

    .line 504
    .local v0, "SimData":[B
    const/4 v1, 0x0

    .line 506
    .local v1, "arrayPoint":I
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    .line 512
    :cond_2
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    .line 517
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

    .line 520
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arrayPoint":I
    .local v2, "arrayPoint":I
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ParamIndicator:B

    aput-byte v3, v0, v1

    .line 523
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->DestAddr:[B

    array-length v3, v3

    add-int v1, v2, v3

    .line 526
    .end local v2    # "arrayPoint":I
    .restart local v1    # "arrayPoint":I
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    iget-object v5, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 530
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ProtoclID:B

    aput-byte v3, v0, v1

    .line 531
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v1    # "arrayPoint":I
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->CodeScheme:B

    aput-byte v3, v0, v2

    .line 532
    iget-byte v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->ValidPeriod:B

    aput-byte v3, v0, v1

    .line 534
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

    .line 502
    .end local v0    # "SimData":[B
    .end local v1    # "arrayPoint":I
    :cond_3
    iget-object v3, p0, Lcom/lge/uicc/IccRecordHandler$SMSPType;->alphaID:[B

    array-length v3, v3

    goto/16 :goto_1

    .line 514
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

    .line 550
    if-nez p0, :cond_1

    .line 551
    const/4 v1, 0x0

    .line 564
    :cond_0
    :goto_0
    return-object v1

    .line 554
    :cond_1
    const-string v1, ""

    .line 555
    .local v1, "scAddrString":Ljava/lang/String;
    const/4 v2, 0x0

    aget-byte v0, p0, v2

    .line 556
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 559
    const/4 v2, 0x2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v3}, Lcom/lge/uicc/EfUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 561
    aget-byte v2, p0, v4

    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_0

    .line 562
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

    .line 571
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 572
    const/16 v7, 0xc

    new-array v4, v7, [B

    .line 573
    .local v4, "scData":[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 574
    const-string v7, "SMSPData SCAddr is Null: "

    invoke-static {v7}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    .line 620
    .end local v4    # "scData":[B
    :goto_0
    return-object v4

    .line 579
    :cond_0
    const/16 v7, 0x2b

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1

    .line 580
    const/4 v0, 0x1

    .line 585
    .local v0, "InternationalIndicator":B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, "tempString":Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 593
    .local v5, "tempData":[B
    array-length v7, p1

    new-array v4, v7, [B

    .line 595
    .restart local v4    # "scData":[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 596
    array-length v7, v5

    div-int/lit8 v7, v7, 0x2

    array-length v8, v5

    rem-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    .line 600
    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xff

    if-eq v7, v8, :cond_2

    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    if-eqz v7, :cond_2

    .line 602
    shl-int/lit8 v7, v0, 0x4

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0x8f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    .line 608
    :goto_2
    const/4 v2, 0x0

    .line 609
    .local v2, "i":I
    const/4 v3, 0x0

    .line 610
    .local v3, "j":I
    :goto_3
    add-int/lit8 v7, v2, 0x1

    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 611
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

    .line 610
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 582
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

    .line 589
    .restart local v6    # "tempString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, p1

    .line 590
    goto :goto_0

    .line 605
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "scData":[B
    .restart local v5    # "tempData":[B
    :cond_2
    shl-int/lit8 v7, v0, 0x4

    or-int/lit16 v7, v7, 0x81

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    goto :goto_2

    .line 614
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_3
    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 615
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 618
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
    .line 706
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

    .line 707
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 703
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

    .line 704
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 709
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

    .line 710
    return-void
.end method

.method protected static declared-synchronized read(I)[B
    .locals 10
    .param p0, "efid"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
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

    .line 73
    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    sparse-switch p0, :sswitch_data_0

    .line 118
    :try_start_1
    const-string v5, "Not supported efid"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 119
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    monitor-exit v3

    return-object v2

    .line 92
    :sswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    invoke-static {v5, v6}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 93
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_0

    .line 94
    const-string v5, "fails to get UsimFileHandler"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 95
    monitor-exit v4

    goto :goto_0

    .line 128
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

    .line 69
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 97
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

    .line 122
    :goto_1
    :try_start_5
    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 123
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

    .line 124
    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v2, v5, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4

    goto :goto_0

    .line 101
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 102
    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_1

    .line 103
    const-string v5, "fails to get UsimFileHandler"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 104
    monitor-exit v4

    goto :goto_0

    .line 106
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

    .line 110
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_2
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 111
    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_2

    .line 112
    const-string v5, "fails to get CsimFileHandler"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 113
    monitor-exit v4

    goto/16 :goto_0

    .line 115
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

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "interrupted while trying to read EF"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 128
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 74
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

    .line 134
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

    .line 138
    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 150
    :try_start_1
    const-string v3, "Not supported efid"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 151
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 164
    :goto_0
    monitor-exit v5

    return-object v3

    .line 141
    :pswitch_0
    const/4 v3, 0x0

    const/4 v7, 0x1

    :try_start_2
    invoke-static {v3, v7}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 142
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_0

    .line 143
    const-string v3, "fails to get UsimFileHandler"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 144
    monitor-exit v6

    move-object v3, v4

    goto :goto_0

    .line 146
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

    .line 154
    :try_start_3
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 157
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

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_1
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6

    goto :goto_0

    .line 163
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

    .line 134
    :catchall_1
    move-exception v3

    monitor-exit v5

    throw v3

    .line 160
    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "interrupted while trying to read EF"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 163
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v4

    .line 164
    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x4f84
        :pswitch_0
    .end packed-switch
.end method

.method protected static readAllToString(I)[Ljava/lang/String;
    .locals 8
    .param p0, "efid"    # I

    .prologue
    .line 295
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

    .line 297
    invoke-static {p0}, Lcom/lge/uicc/IccRecordHandler;->readAll(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    .local v0, "allDataBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 299
    :cond_0
    const/4 v1, 0x0

    .line 314
    :cond_1
    :goto_0
    return-object v1

    .line 301
    :cond_2
    const/4 v1, 0x0

    .line 302
    .local v1, "allDataString":[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 305
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

    .line 306
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 308
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

    .line 309
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
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

    .line 261
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

    .line 263
    invoke-static {p0}, Lcom/lge/uicc/IccRecordHandler;->read(I)[B

    move-result-object v0

    .line 264
    .local v0, "dataBytes":[B
    if-nez v0, :cond_0

    .line 265
    const/4 v1, 0x0

    .line 290
    :goto_0
    return-object v1

    .line 267
    :cond_0
    const/4 v1, 0x0

    .line 268
    .local v1, "dataString":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 289
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

    .line 270
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

    .line 271
    invoke-static {v0}, Lcom/lge/uicc/IccRecordHandler;->analyzeSMSP([B)Lcom/lge/uicc/IccRecordHandler$SMSPType;

    move-result-object v3

    sput-object v3, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    .line 272
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

    .line 273
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

    .line 274
    sget-object v3, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    iget-object v3, v3, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->decodeSCAddr([B)Ljava/lang/String;

    move-result-object v1

    .line 275
    goto :goto_1

    .line 277
    :sswitch_1
    invoke-static {v0}, Lcom/lge/uicc/IccRecordHandler;->cdmaMdnBytesToString([B)Ljava/lang/String;

    move-result-object v1

    .line 278
    goto :goto_1

    .line 280
    :sswitch_2
    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 281
    goto/16 :goto_1

    .line 283
    :sswitch_3
    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "tmpString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_1

    .line 285
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 268
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
    .line 62
    sget-object v0, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/lge/uicc/IccRecordHandler;

    invoke-direct {v0}, Lcom/lge/uicc/IccRecordHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    .line 65
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

    .line 169
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

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v1, "invalid dataBytes"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v8

    .line 256
    :goto_0
    monitor-exit v10

    return v1

    .line 177
    :cond_0
    :try_start_1
    sget-object v11, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    sparse-switch p0, :sswitch_data_0

    .line 227
    :try_start_2
    const-string v1, "Not supported efid"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 228
    monitor-exit v11

    move v1, v8

    goto :goto_0

    .line 180
    :sswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 181
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_1

    .line 182
    const-string v1, "fails to get UsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 183
    monitor-exit v11

    move v1, v8

    goto :goto_0

    .line 193
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

    .line 231
    :goto_1
    :try_start_3
    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 232
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

    .line 233
    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    iget-boolean v1, v1, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_5

    .line 234
    :try_start_4
    monitor-exit v11

    move v1, v8

    goto :goto_0

    .line 203
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 204
    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    .line 205
    const-string v1, "fails to get UsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 206
    monitor-exit v11

    move v1, v8

    goto :goto_0

    .line 208
    :cond_2
    sget-object v1, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    const/4 v2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/uicc/IccRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_1

    .line 239
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

    .line 169
    :catchall_1
    move-exception v1

    monitor-exit v10

    throw v1

    .line 211
    :sswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 212
    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_3

    .line 213
    const-string v1, "fails to get UsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 214
    monitor-exit v11

    move v1, v8

    goto/16 :goto_0

    .line 216
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

    .line 219
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :sswitch_3
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lge/uicc/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 220
    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_4

    .line 221
    const-string v1, "fails to get CsimFileHandler"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 222
    monitor-exit v11

    move v1, v8

    goto/16 :goto_0

    .line 224
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

    .line 235
    :catch_0
    move-exception v6

    .line 236
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update EF"

    invoke-static {v1}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 237
    monitor-exit v11

    move v1, v8

    goto/16 :goto_0

    .line 239
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_5
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    packed-switch p0, :pswitch_data_0

    :goto_2
    move v1, v9

    .line 256
    goto/16 :goto_0

    .line 244
    :pswitch_0
    :try_start_7
    const-string v1, "lgu.imsi_type"

    const-string v2, "XXXX"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
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

    .line 248
    :cond_8
    const-string v1, "com.lge.intent.action.LGU_ROAMING_SET_FINISHED"

    invoke-static {v1}, Lcom/lge/uicc/IccTools;->broadcastIntent(Ljava/lang/String;)V

    .line 249
    const-string v1, "lgu.ef_roaming.state"

    const-string v2, "UPDATED"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    :goto_3
    const-string v1, "lgu.ef_roaming"

    invoke-static {p1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 251
    :cond_9
    const-string v1, "lgu.ef_roaming.state"

    const-string v2, "WAIT_REFRESH"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 178
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

    .line 242
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

    .line 319
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

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "dataBytes":[B
    const/4 v1, 0x0

    .line 323
    .local v1, "result":Z
    sparse-switch p0, :sswitch_data_0

    .line 345
    :goto_0
    if-nez v0, :cond_4

    .line 362
    :cond_0
    :goto_1
    return v2

    .line 325
    :sswitch_0
    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    if-nez v4, :cond_1

    .line 326
    const-string v3, "mSMSPType is null"

    invoke-static {v3}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_1
    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    iget-object v5, v5, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {p1, v5}, Lcom/lge/uicc/IccRecordHandler;->encodeSCAddr(Ljava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v4, Lcom/lge/uicc/IccRecordHandler$SMSPType;->SVCCenterAddr:[B

    .line 330
    sget-object v4, Lcom/lge/uicc/IccRecordHandler;->mSMSPType:Lcom/lge/uicc/IccRecordHandler$SMSPType;

    invoke-static {v4}, Lcom/lge/uicc/IccRecordHandler;->composeSMSP(Lcom/lge/uicc/IccRecordHandler$SMSPType;)[B

    move-result-object v0

    .line 331
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

    .line 335
    :sswitch_1
    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->cdmaMdnStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    goto :goto_0

    .line 339
    :sswitch_2
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 340
    :cond_2
    const-string p1, "00"

    .line 341
    :cond_3
    invoke-static {p1}, Lcom/lge/uicc/EfUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_4
    invoke-static {p0, v0}, Lcom/lge/uicc/IccRecordHandler;->update(I[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    packed-switch p0, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v2, v3

    .line 362
    goto :goto_1

    .line 356
    :pswitch_1
    const-string v2, "scaddress"

    invoke-static {v2, p1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 359
    :pswitch_2
    const-string v2, "mdn"

    invoke-static {v2, p1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x2f50 -> :sswitch_2
        0x6f42 -> :sswitch_0
        0x6f44 -> :sswitch_1
    .end sparse-switch

    .line 352
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
    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "data":[B
    const/4 v0, 0x0

    .line 369
    .local v0, "alldata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .line 371
    .local v3, "flag":Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 401
    const-string v5, "invalid event!!!"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 405
    :goto_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_1

    .line 422
    const-string v5, "invalid event!!!"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->loge(Ljava/lang/String;)V

    .line 425
    :goto_1
    return-void

    .line 373
    :pswitch_0
    const-string v5, "EVENT_READ_RECORD_DONE"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    .line 374
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 375
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 376
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

    .line 379
    :cond_0
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 380
    goto :goto_0

    .line 382
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v5, "EVENT_READ_RECORD_ALL_DONE"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    .line 383
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 384
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 385
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

    .line 388
    :cond_1
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "alldata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 389
    .restart local v0    # "alldata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 391
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v5, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v5}, Lcom/lge/uicc/IccRecordHandler;->logd(Ljava/lang/String;)V

    .line 392
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 393
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 394
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

    .line 397
    :cond_2
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 398
    .local v4, "icc_result":Lcom/android/internal/telephony/uicc/IccIoResult;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v3

    .line 399
    goto/16 :goto_0

    .line 408
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "icc_result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_3
    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v6

    .line 409
    :try_start_0
    iput-object v2, p0, Lcom/lge/uicc/IccRecordHandler;->returnBytes:[B

    .line 410
    iput-boolean v3, p0, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    .line 411
    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 412
    monitor-exit v6

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 415
    :pswitch_4
    sget-object v6, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    monitor-enter v6

    .line 416
    :try_start_1
    iput-object v0, p0, Lcom/lge/uicc/IccRecordHandler;->returnAllBytes:Ljava/util/ArrayList;

    .line 417
    iput-boolean v3, p0, Lcom/lge/uicc/IccRecordHandler;->returnFlag:Z

    .line 418
    sget-object v5, Lcom/lge/uicc/IccRecordHandler;->mInstance:Lcom/lge/uicc/IccRecordHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v6

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
