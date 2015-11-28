.class public Lcom/lge/telephony/msim/LGMSimSmsManager;
.super Ljava/lang/Object;
.source "LGMSimSmsManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimSmsManager"

.field private static final MSIM_SMS_MANAGER_ADAPTORS:[Ljava/lang/String;

.field protected static isMultiSimEnabled:Z

.field private static mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/lge/telephony/msim/LGMSimSmsManager;


# instance fields
.field private final DEFAULT_SUB:I

.field public mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/telephony/msim/LGMSimSmsManager;->isMultiSimEnabled:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.lge.telephony.msim.QcomMSimSmsManagerAdaptor"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.lge.telephony.msim.MtkMSimSmsManagerAdaptor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.lge.telephony.msim.MockMSimSmsManagerAdaptor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->MSIM_SMS_MANAGER_ADAPTORS:[Ljava/lang/String;

    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->MSIM_SMS_MANAGER_ADAPTORS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/telephony/msim/RuntimeLoader;->getActiveDefaultConstructorFromClassList([Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error!! don\'t load target msim sms manager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/lge/telephony/msim/LGMSimSmsManager;

    invoke-direct {v0}, Lcom/lge/telephony/msim/LGMSimSmsManager;-><init>()V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/LGMSimSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->DEFAULT_SUB:I

    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    iput-object v1, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefault()Lcom/lge/telephony/msim/LGMSimSmsManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/LGMSimSmsManager;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->copyMessageToIcc([B[BII)Z

    move-result v0

    return v0
.end method

.method public copySmsToIcc([B[BII)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->copySmsToIcc([B[BII)I

    move-result v0

    return v0
.end method

.method public copySmsToIccPrivate([B[BIII)I
    .locals 6
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I
    .param p5, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->copySmsToIccPrivate([B[BIII)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->deleteMessageFromIcc(II)Z

    move-result v0

    return v0
.end method

.method public deleteMessageFromIccMultiMode(III)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I
    .param p3, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->deleteMessageFromIccMultiMode(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->disableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->enableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public getMaxEfSms(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->getMaxEfSms(I)I

    move-result v0

    return v0
.end method

.method public getMaxEfSmsMultiMode(II)I
    .locals 1
    .param p1, "smsformat"    # I
    .param p2, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->getMaxEfSmsMultiMode(II)I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->getServiceCenterAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->isFdnEnabledOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->setServiceCenterAddress(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->updateMessageOnIcc(II[BI)Z

    move-result v0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZI)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subscription"    # I

    .prologue
    iget-object v0, p0, Lcom/lge/telephony/msim/LGMSimSmsManager;->mActiveMSimSmsManager:Lcom/lge/telephony/msim/LGMSimSmsManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->updateSmsOnSimReadStatus(IZI)Z

    move-result v0

    return v0
.end method
