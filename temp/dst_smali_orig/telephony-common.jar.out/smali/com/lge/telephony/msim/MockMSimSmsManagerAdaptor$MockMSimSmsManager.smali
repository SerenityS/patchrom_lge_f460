.class Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;
.super Ljava/lang/Object;
.source "MockMSimSmsManagerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MockMSimSmsManager"
.end annotation


# static fields
.field private static sInstance:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    invoke-direct {v0}, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;-><init>()V

    sput-object v0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;->sInstance:Lcom/lge/telephony/msim/MockMSimSmsManagerAdaptor$MockMSimSmsManager;

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
    const/4 v0, -0x1

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEfSms(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getServiceCenterAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public isFdnEnabledOnSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
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
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    return-void
.end method

.method public setServiceCenterAddress(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
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
    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsOnSimReadStatus(IZI)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subscription"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method
