.class public final Landroid/provider/Telephony$Sms$PortAddress;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortAddress"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2906
    const-string v0, "content://sms/portaddress"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$PortAddress;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z

    .prologue
    .line 2928
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms$PortAddress;->addMessageEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "threadId"    # J
    .param p8, "protocol"    # I
    .param p9, "dcs"    # I
    .param p10, "groupid"    # J
    .param p12, "replyAddress"    # Ljava/lang/String;
    .param p13, "extraData"    # Ljava/lang/String;

    .prologue
    .line 2944
    const/4 v1, -0x1

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Landroid/telephony/SmsMessage;->makeSmsHeader(ILjava/lang/String;)[B

    move-result-object v13

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v14, p13

    invoke-static/range {v1 .. v14}, Landroid/provider/Telephony$Sms$PortAddress;->addMessageExEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJ[BLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addMessageExEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJ[BLjava/lang/String;)Landroid/net/Uri;
    .locals 21
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "threadId"    # J
    .param p8, "protocol"    # I
    .param p9, "dcs"    # I
    .param p10, "groupid"    # J
    .param p12, "header"    # [B
    .param p13, "extraData"    # Ljava/lang/String;

    .prologue
    .line 2952
    sget-object v1, Landroid/provider/Telephony$Sms$PortAddress;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move-object/from16 v17, p12

    move-object/from16 v19, p13

    invoke-static/range {v0 .. v20}, Landroid/provider/Telephony$Sms;->addMessageToUriEx(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIIJIII[BZLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
