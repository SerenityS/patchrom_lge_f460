.class public final Landroid/provider/Telephony$Sms$CallBackUrlSave;
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
    name = "CallBackUrlSave"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2653
    const-string v0, "content://sms/urlcallbacksave"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$CallBackUrlSave;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "savecalltype"    # I

    .prologue
    .line 2676
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v12, p6

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms$CallBackUrlSave;->addMessageEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJILjava/lang/String;)Landroid/net/Uri;
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
    .param p12, "savecalltype"    # I
    .param p13, "replyAddress"    # Ljava/lang/String;

    .prologue
    .line 2691
    const/4 v1, -0x1

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Landroid/telephony/SmsMessage;->makeSmsHeader(ILjava/lang/String;)[B

    move-result-object v14

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

    move/from16 v13, p12

    invoke-static/range {v1 .. v14}, Landroid/provider/Telephony$Sms$CallBackUrlSave;->addMessageExEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJI[B)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addMessageExEx(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIIJI[B)Landroid/net/Uri;
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
    .param p12, "savecalltype"    # I
    .param p13, "header"    # [B

    .prologue
    .line 2699
    sget-object v1, Landroid/provider/Telephony$Sms$CallBackUrlSave;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x4

    const/16 v18, 0x1

    const/16 v19, 0x0

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

    move/from16 v15, p12

    move-object/from16 v17, p13

    invoke-static/range {v0 .. v20}, Landroid/provider/Telephony$Sms;->addMessageToUriEx(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIIJIII[BZLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
