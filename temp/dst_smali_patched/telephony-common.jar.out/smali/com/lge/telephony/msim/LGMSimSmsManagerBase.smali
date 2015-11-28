.class public abstract Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
.super Ljava/lang/Object;
.source "LGMSimSmsManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimSmsManagerBase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for common API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method private static logUnexpectedMTKMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for MTK API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-string v0, "LGMSimSmsManagerBase"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for QCOM API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    const-string v0, "copyMessageToIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public copySmsToIcc([B[BII)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    const-string v0, "copySmsToIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public copySmsToIccPrivate([B[BIII)I
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "sms_format"    # I
    .param p5, "subscription"    # I

    .prologue
    const-string v0, "copySmsToIccPrivate"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    const-string v0, "deleteMessageFromIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessageFromIccMultiMode(III)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "smsformat"    # I
    .param p3, "subscription"    # I

    .prologue
    const-string v0, "deleteMessageFromIccMultiMode"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    const-string v0, "disableCellBroadcast"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    const-string v0, "enableCellBroadcast"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEfSms(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "getMaxEfSms"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getMaxEfSmsMultiMode(II)I
    .locals 1
    .param p1, "smsformat"    # I
    .param p2, "subscription"    # I

    .prologue
    const-string v0, "getMaxEfSmsMultiMode"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getServiceCenterAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "getServiceCenterAddress"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "isFdnEnabledOnSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
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
    const-string v0, "sendMultipartTextMessage"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 1
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    const-string v0, "sendTextMessage"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    const-string v0, "setServiceCenterAddress"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subscription"    # I

    .prologue
    const-string v0, "updateMessageOnIcc"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZI)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subscription"    # I

    .prologue
    const-string v0, "updateSmsOnSimReadStatus"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
