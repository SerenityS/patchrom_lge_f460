.class public final Landroid/provider/Telephony$Sms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Sms$Kpas;,
        Landroid/provider/Telephony$Sms$UrlCallback;,
        Landroid/provider/Telephony$Sms$PortAddress;,
        Landroid/provider/Telephony$Sms$Temp;,
        Landroid/provider/Telephony$Sms$Video;,
        Landroid/provider/Telephony$Sms$Voice;,
        Landroid/provider/Telephony$Sms$VoiceSave;,
        Landroid/provider/Telephony$Sms$CallBackUrlSave;,
        Landroid/provider/Telephony$Sms$Save;,
        Landroid/provider/Telephony$Sms$CallBackUrlSpam;,
        Landroid/provider/Telephony$Sms$Spam;,
        Landroid/provider/Telephony$Sms$MmsReplySendMessage;,
        Landroid/provider/Telephony$Sms$Reserved;,
        Landroid/provider/Telephony$Sms$Intents;,
        Landroid/provider/Telephony$Sms$Conversations;,
        Landroid/provider/Telephony$Sms$Outbox;,
        Landroid/provider/Telephony$Sms$Draft;,
        Landroid/provider/Telephony$Sms$Sent;,
        Landroid/provider/Telephony$Sms$Inbox;
    }
.end annotation


# static fields
.field public static final APPDIRECT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final IS_41_EMAIL_NETWORK_ADDRESS:Ljava/lang/String; = "6245"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 795
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "directed_app"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms;->APPDIRECT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    return-void
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z

    .prologue
    .line 823
    const-wide/16 v8, -0x1

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZI)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "subId"    # I

    .prologue
    .line 846
    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J

    .prologue
    .line 868
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "subId"    # I

    .prologue
    .line 892
    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJII)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "subId"    # I
    .param p11, "priority"    # I

    .prologue
    .line 917
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 918
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony addMessageToUri sub id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v1, "sub_id"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    if-eqz p5, :cond_0

    .line 923
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 925
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    if-eqz p7, :cond_1

    .line 930
    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    .line 933
    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 935
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 925
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJJ)Landroid/net/Uri;
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "groupId"    # J

    .prologue
    .line 1047
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJJI)Landroid/net/Uri;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "groupId"    # J
    .param p12, "subId"    # I

    .prologue
    .line 988
    const-string v1, "sms_imsi_data"

    .line 989
    .local v1, "SMS_IMSI_DATA":Ljava/lang/String;
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 990
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v6

    move/from16 v0, p12

    invoke-virtual {v6, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "iccd":Ljava/lang/String;
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v6

    move/from16 v0, p12

    invoke-virtual {v6, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, "imsi":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 1002
    .local v4, "mIccImsi":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1003
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Telephony addMessageToUri sub id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v6, "sub_id"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 1006
    const/4 v6, 0x1

    move/from16 v0, p12

    if-ne v0, v6, :cond_6

    .line 1007
    const-string v4, "sim2"

    .line 1017
    :goto_1
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1019
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addMessageToUri mIccImsi2:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-virtual {v5, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    const-string v6, "address"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    if-eqz p5, :cond_1

    .line 1024
    const-string v6, "date"

    invoke-virtual {v5, v6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1026
    :cond_1
    const-string v7, "read"

    if-eqz p6, :cond_8

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string v6, "subject"

    invoke-virtual {v5, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v6, "body"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    if-eqz p7, :cond_2

    .line 1030
    const-string v6, "status"

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    :cond_2
    const-wide/16 v6, -0x1

    cmp-long v6, p8, v6

    if-eqz v6, :cond_3

    .line 1033
    const-string v6, "thread_id"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1036
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, p10, v6

    if-eqz v6, :cond_4

    .line 1037
    const-string v6, "group_id"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1039
    :cond_4
    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6

    .line 993
    .end local v2    # "iccd":Ljava/lang/String;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "mIccImsi":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 994
    .restart local v2    # "iccd":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "imsi":Ljava/lang/String;
    goto/16 :goto_0

    .line 1009
    .restart local v4    # "mIccImsi":Ljava/lang/String;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_6
    const-string v4, "sim1"

    goto/16 :goto_1

    .line 1012
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1026
    :cond_8
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2
.end method

.method public static addMessageToUriEx(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIIJIII[BZLjava/lang/String;I)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "protocol"    # I
    .param p11, "dcs"    # I
    .param p12, "groupid"    # J
    .param p14, "simcopy"    # I
    .param p15, "msg_boxtype"    # I
    .param p16, "save_call_type"    # I
    .param p17, "header"    # [B
    .param p18, "inMessage"    # Z
    .param p19, "extraData"    # Ljava/lang/String;
    .param p20, "replyOption"    # I

    .prologue
    .line 1057
    const/4 v3, 0x0

    .line 1058
    .local v3, "replyAddress":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1060
    .local v1, "confirm_read":I
    if-eqz p17, :cond_0

    .line 1061
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 1062
    new-instance v3, Ljava/lang/String;

    .end local v3    # "replyAddress":Ljava/lang/String;
    move-object/from16 v0, p17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1086
    .restart local v3    # "replyAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1088
    .local v7, "values":Landroid/content/ContentValues;
    const/4 v8, 0x1

    move/from16 v0, p18

    if-ne v0, v8, :cond_10

    .line 1093
    if-nez v3, :cond_f

    if-nez p2, :cond_e

    const-string v6, ""

    .line 1095
    .local v6, "uiAddress":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1096
    new-instance v6, Ljava/lang/String;

    .end local v6    # "uiAddress":Ljava/lang/String;
    const-string v8, "Unknown"

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1098
    .restart local v6    # "uiAddress":Ljava/lang/String;
    :cond_1
    const-string v8, "address"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_2
    const-string v8, "original_address"

    if-nez p2, :cond_2

    const-string p2, ""

    .end local p2    # "address":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    if-eqz v3, :cond_3

    .line 1111
    const-string v8, "reply_address"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_3
    const/4 v8, -0x1

    if-le v1, v8, :cond_4

    .line 1115
    const-string v8, "confirm_read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    :cond_4
    const-string v8, "simcopy"

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1132
    const-string v8, "save_call_type"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v8, "msg_boxtype"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    if-eqz p5, :cond_5

    .line 1137
    const-string v8, "date"

    move-object/from16 v0, p5

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1139
    :cond_5
    const-string v9, "read"

    if-eqz p6, :cond_12

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1140
    const-string v8, "subject"

    invoke-virtual {v7, v8, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v8, "body"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    if-eqz p7, :cond_6

    .line 1143
    const-string v8, "status"

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    :cond_6
    const-wide/16 v8, -0x1

    cmp-long v8, p8, v8

    if-eqz v8, :cond_7

    .line 1146
    const-string v8, "thread_id"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    :cond_7
    const-string v8, "protocol"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1149
    const/4 v8, -0x1

    move/from16 v0, p11

    if-eq v0, v8, :cond_8

    .line 1150
    const-string v8, "dcs"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    :cond_8
    const-wide/16 v8, -0x1

    cmp-long v8, p12, v8

    if-eqz v8, :cond_9

    .line 1153
    const-string v8, "group_id"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1155
    :cond_9
    invoke-static/range {p19 .. p19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1156
    const-string v8, "extra_data"

    move-object/from16 v0, p19

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content://sms/mmsreplysend"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_13

    .line 1161
    const-string v8, "typeex"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    :cond_b
    :goto_4
    invoke-virtual {p0, p1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 1064
    .end local v6    # "uiAddress":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local p2    # "address":Ljava/lang/String;
    :cond_c
    invoke-static/range {p17 .. p17}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 1065
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v5, :cond_d

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    if-eqz v8, :cond_d

    .line 1068
    :try_start_0
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->replyData:[B

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    add-int/lit8 v10, v10, 0x1

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-direct {v4, v8, v9, v10}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 1070
    .local v4, "replyAddressObj":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    if-eqz v4, :cond_d

    .line 1071
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1078
    .end local v4    # "replyAddressObj":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :cond_d
    :goto_5
    if-eqz v5, :cond_0

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    if-eqz v8, :cond_0

    .line 1079
    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v1, v8, 0xff

    goto/16 :goto_0

    .line 1073
    :catch_0
    move-exception v2

    .line 1075
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_5

    .end local v2    # "e":Ljava/text/ParseException;
    .end local v5    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_e
    move-object v6, p2

    .line 1093
    goto/16 :goto_1

    :cond_f
    move-object v6, v3

    goto/16 :goto_1

    .line 1101
    :cond_10
    move-object v6, p2

    .line 1103
    .restart local v6    # "uiAddress":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1104
    new-instance v6, Ljava/lang/String;

    .end local v6    # "uiAddress":Ljava/lang/String;
    const-string v8, "Unknown"

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1106
    .restart local v6    # "uiAddress":Ljava/lang/String;
    :cond_11
    const-string v8, "address"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1139
    .end local p2    # "address":Ljava/lang/String;
    :cond_12
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_3

    .line 1166
    :cond_13
    if-lez p20, :cond_b

    .line 1167
    const-string v8, "reply_option"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4
.end method

.method public static getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 763
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 764
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 767
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDraftSmsNumber(Landroid/content/Context;J)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread_Id"    # J

    .prologue
    .line 3164
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3165
    .local v13, "builder":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 3166
    .local v18, "recipientids":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/conversations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recipients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3167
    .local v4, "muri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "recipient_ids"

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 3169
    .local v19, "threadCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_4

    .line 3171
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3172
    const-string v2, "recipient_ids"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3173
    if-eqz v18, :cond_3

    .line 3174
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v17, v12, v15

    .line 3175
    .local v17, "number":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3176
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3177
    const-string v2, ", "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/canonical-address/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 3180
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 3182
    .local v14, "canonicalCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 3184
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3185
    const-string v2, "address"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3189
    :cond_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3174
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v14    # "canonicalCursor":Landroid/database/Cursor;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 3189
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v14    # "canonicalCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3197
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "canonicalCursor":Landroid/database/Cursor;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "number":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 3200
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isOutgoingFolder(I)Z
    .locals 1
    .param p0, "messageType"    # I

    .prologue
    .line 1239
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "error"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1184
    if-nez p1, :cond_0

    .line 1229
    :goto_0
    return v9

    .line 1188
    :cond_0
    const/4 v7, 0x0

    .line 1189
    .local v7, "markAsUnread":Z
    const/4 v6, 0x0

    .line 1190
    .local v6, "markAsRead":Z
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1219
    :goto_1
    :sswitch_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1221
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    if-eqz v7, :cond_2

    .line 1223
    const-string v0, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    :cond_1
    :goto_2
    const-string v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_3

    move v0, v8

    :goto_3
    move v9, v0

    goto :goto_0

    .line 1196
    .end local v3    # "values":Landroid/content/ContentValues;
    :sswitch_1
    const/4 v6, 0x1

    .line 1197
    goto :goto_1

    .line 1200
    :sswitch_2
    const/4 v7, 0x1

    .line 1201
    goto :goto_1

    .line 1204
    :sswitch_3
    const/4 v6, 0x1

    .line 1205
    goto :goto_1

    .line 1224
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    if-eqz v6, :cond_1

    .line 1225
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    move v0, v9

    .line 1229
    goto :goto_3

    .line 1190
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x34 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 775
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 784
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "date DESC"

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method

.method public static updateDeleteSmsToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3147
    const-string v0, "modified"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "modified_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3148
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3150
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
