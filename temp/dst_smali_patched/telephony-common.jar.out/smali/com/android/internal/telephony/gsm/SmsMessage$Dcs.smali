.class public Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dcs"
.end annotation


# instance fields
.field private mAutomaticDeletion:Z

.field private mDataCodingScheme:I

.field private mEncodingType:I

.field private mIsMwi:Z

.field private mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field protected mMwiDontStore:Z

.field private mMwiSense:Z

.field private mUserDataCompressed:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "dataCodingScheme"    # I
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mDataCodingScheme:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mUserDataCompressed:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mAutomaticDeletion:Z

    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mEncodingType:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mIsMwi:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMwiSense:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMwiDontStore:Z

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->generateDcs(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setDataCodingScheme(I)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->parseDcs(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setDataCodingScheme(I)V

    goto :goto_0
.end method

.method public static generateDcs(Ljava/lang/String;)I
    .locals 7
    .param p0, "messageBody"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCountCharIndexInsteadOfSeptets()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v2, :cond_2

    new-instance v4, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->isKSC5601Encoding()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    :try_start_1
    const-string v4, "euc-kr"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x84

    goto :goto_0

    .end local v0    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    :try_start_2
    iget v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .local v1, "septets":I
    sget v6, Landroid/telephony/SmsMessage;->LIMIT_USER_DATA_SEPTETS:I

    if-le v1, v6, :cond_0

    new-instance v4, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "septets":I
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v0    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v3

    .local v3, "uex":Ljava/io/UnsupportedEncodingException;
    move v4, v5

    goto :goto_0

    .end local v3    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public static getGeneralPublicDataCodingScheme(I)I
    .locals 1
    .param p0, "encodingType"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x84

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseDcs(Ljava/lang/String;)V
    .locals 9
    .param p1, "msgBody"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xe0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "hasMessageClass":Z
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setAutomaticDeletion(Z)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setUserDataCompressed(Z)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->isUserDataCompressed()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseDcs(), 4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    :cond_0
    :goto_3
    if-nez v1, :cond_f

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setMessageClass(Lcom/android/internal/telephony/SmsConstants$MessageClass;)V

    :goto_4
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setAutomaticDeletion(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setUserDataCompressed(Z)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xc0

    if-eq v2, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xd0

    if-eq v2, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    if-ne v2, v8, :cond_a

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    if-ne v2, v8, :cond_9

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    :goto_5
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setMwi(Z)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_5

    :cond_a
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setAutomaticDeletion(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setUserDataCompressed(Z)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xc

    if-ne v2, v4, :cond_b

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v0, v2, 0xf0

    .local v0, "dataCodingScheme_byte":I
    const/16 v2, 0x80

    if-eq v0, v2, :cond_c

    const/16 v2, 0x90

    if-ne v0, v2, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto/16 :goto_3

    :cond_d
    const/16 v2, 0xa0

    if-eq v0, v2, :cond_e

    const/16 v2, 0xb0

    if-ne v0, v2, :cond_0

    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setEncodingType(I)V

    goto/16 :goto_3

    .end local v0    # "dataCodingScheme_byte":I
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_4

    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setMessageClass(Lcom/android/internal/telephony/SmsConstants$MessageClass;)V

    goto/16 :goto_4

    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setMessageClass(Lcom/android/internal/telephony/SmsConstants$MessageClass;)V

    goto/16 :goto_4

    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setMessageClass(Lcom/android/internal/telephony/SmsConstants$MessageClass;)V

    goto/16 :goto_4

    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->setMessageClass(Lcom/android/internal/telephony/SmsConstants$MessageClass;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setAutomaticDeletion(Z)V
    .locals 0
    .param p1, "automaticDeletion"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mAutomaticDeletion:Z

    return-void
.end method

.method private setDataCodingScheme(I)V
    .locals 0
    .param p1, "dataCodingScheme"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mDataCodingScheme:I

    return-void
.end method

.method private setMessageClass(Lcom/android/internal/telephony/SmsConstants$MessageClass;)V
    .locals 0
    .param p1, "messageClass"    # Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-void
.end method

.method private setMwi(Z)V
    .locals 0
    .param p1, "isMwi"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mIsMwi:Z

    return-void
.end method

.method private setMwiSense(Z)V
    .locals 0
    .param p1, "mwiSense"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMwiSense:Z

    return-void
.end method

.method private setUserDataCompressed(Z)V
    .locals 0
    .param p1, "userDataCompressed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mUserDataCompressed:Z

    return-void
.end method


# virtual methods
.method public getDataCodingScheme()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mDataCodingScheme:I

    return v0
.end method

.method public getEncodingType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mEncodingType:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public isAutomaticDeletion()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mAutomaticDeletion:Z

    return v0
.end method

.method public isMwi()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mIsMwi:Z

    return v0
.end method

.method public isMwiSense()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMwiSense:Z

    return v0
.end method

.method public isUserDataCompressed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mUserDataCompressed:Z

    return v0
.end method

.method public setEncodingType(I)V
    .locals 0
    .param p1, "encodingType"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mEncodingType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DCS: dataCodingScheme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.userDataCompressed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->isUserDataCompressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.automaticDeletion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->isAutomaticDeletion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.messageClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encodingType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getEncodingType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMwi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->isMwi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mwiSense = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->isMwiSense()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mwiDontStore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->mMwiDontStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
