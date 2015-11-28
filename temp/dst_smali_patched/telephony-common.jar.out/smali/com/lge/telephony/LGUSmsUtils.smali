.class public Lcom/lge/telephony/LGUSmsUtils;
.super Ljava/lang/Object;
.source "LGUSmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field private static final CBS_SESSION_MAX:I = 0xa

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DATE:Ljava/lang/String; = "date"

.field private static final DELIMETER:I = 0x1d

.field private static final EMERGENCY_MSG:I = 0x2be

.field private static final EMERGENCY_MSG_START_SEQ:I = 0x0

.field private static final END_DELIMETER:I = 0x3

.field private static final IMS_MSG:I = 0x7000

.field private static final LGE_SMS_CBS_ENABLED:I = 0x1

.field public static final LMS_MAX_COUNT:I = 0x32

.field public static final LMS_MAX_SEGMENT:I = 0x3

.field public static final LMS_URI:Landroid/net/Uri;

.field public static final PDU:Ljava/lang/String; = "pdu"

.field public static final REFERENCE_NUMBER:Ljava/lang/String; = "reference_number"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final SEQ_EOS:I = 0x1

.field public static final SOURCE_MIN:Ljava/lang/String; = "source_min"

.field public static final TID:Ljava/lang/String; = "tid"

.field private static final URL_DELIMETER:I = 0x1d

.field private static sSessionIdLink:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGUSmsUtils;->sSessionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGUSmsUtils;->sSessionIdLink:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/lge/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    return-void
.end method

.method private checkCompleteMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[B)I
    .locals 30
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B
    .param p7, "pdus"    # [[B

    .prologue
    const-string v2, "deleteAllExpiredMsg()"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    const/16 v19, 0x0

    .local v19, "cursor":Landroid/database/Cursor;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .local v29, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .local v28, "where":Ljava/lang/StringBuilder;
    const-string v2, "source_min = ? "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " AND reference_number = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " AND count = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " AND tid = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, " AND address = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "source_min"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "reference_number"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "count"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "sequence"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "pdu"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "address"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "date"

    aput-object v3, v4, v2

    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .local v25, "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v21, 0x0

    .local v21, "expiredMsgCount":I
    const/4 v13, 0x0

    .local v13, "sameMsgCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "date"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-nez v19, :cond_2

    const-string v2, "checkCompleteMsg(), cursor is null"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v13    # "sameMsgCount":I
    .end local v21    # "expiredMsgCount":I
    .end local v25    # "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_1
    return v2

    .end local v4    # "projection":[Ljava/lang/String;
    :cond_1
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v13    # "sameMsgCount":I
    .restart local v21    # "expiredMsgCount":I
    .restart local v25    # "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompleteMsg(), sameMsgCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    if-gtz v13, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v13}, Lcom/lge/telephony/LGUSmsUtils;->completeOrInsertLms(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BI)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "checkCompleteMsg(), cursor moveToFirst error"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    :try_start_3
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .local v23, "rowId":J
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "sequence"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, "currSegment":I
    const-string v2, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v26, v2, v5

    .local v26, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v17, v2, v5

    .local v17, "currentTime":J
    const-string v2, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "callback":Ljava/lang/String;
    const-string v2, "pdu"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .local v15, "currPdu":[B
    add-int/lit8 v2, v16, -0x1

    aput-object v15, p7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompleteMsg(), rowId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompleteMsg(), time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompleteMsg(), currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompleteMsg(), text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompleteMsg(), callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    sub-long v2, v17, v26

    const-wide/16 v5, 0x258

    cmp-long v2, v2, v5

    if-lez v2, :cond_5

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    if-lez v21, :cond_7

    const/16 v22, 0x0

    .local v22, "loop":I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v22    # "loop":I
    :cond_7
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    :try_start_4
    invoke-direct/range {v5 .. v13}, Lcom/lge/telephony/LGUSmsUtils;->completeOrInsertLms(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BI)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v13    # "sameMsgCount":I
    .end local v14    # "callback":Ljava/lang/String;
    .end local v15    # "currPdu":[B
    .end local v16    # "currSegment":I
    .end local v17    # "currentTime":J
    .end local v21    # "expiredMsgCount":I
    .end local v23    # "rowId":J
    .end local v25    # "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v26    # "time":J
    :catch_0
    move-exception v20

    .local v20, "e":Landroid/database/SQLException;
    :try_start_5
    const-string v2, "checkCompleteMsg(), SQLException occurs"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x1

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v20    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method private checkLmsDuplicated(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)Z
    .locals 22
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "totalSegment"    # I
    .param p5, "currentSegment"    # I
    .param p6, "pdu"    # [B

    .prologue
    const-string v2, "checkLmsDuplicated()"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v16

    .local v16, "pduStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLmsDuplicated(), pduStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "bRet":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .local v20, "where":Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "source_min = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, " AND reference_number = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " AND count = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " AND sequence = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, " AND address = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v2, " AND tid = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v2, :cond_5

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLmsDuplicated(), where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", whereArgs.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "pdu"

    aput-object v3, v4, v2

    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    .local v12, "different":Z
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "body":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .local v10, "body_cursor":[B
    invoke-static {v10}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .local v17, "sm":Landroid/telephony/SmsMessage;
    if-nez v17, :cond_6

    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v12, :cond_9

    const-string v2, "checkLmsDuplicated(), pduStr not equals pduStr_cursor"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "body_cursor":[B
    .end local v12    # "different":Z
    .end local v17    # "sm":Landroid/telephony/SmsMessage;
    :cond_1
    :goto_4
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_5
    return v8

    .end local v4    # "projection":[Ljava/lang/String;
    :cond_3
    const-string v2, "source_min is null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const-string v2, " AND address is null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v9    # "body":Ljava/lang/String;
    .restart local v10    # "body_cursor":[B
    .restart local v12    # "different":Z
    .restart local v17    # "sm":Landroid/telephony/SmsMessage;
    :cond_6
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v18

    .local v18, "ud":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v19

    .local v19, "ud_curr":[B
    move-object/from16 v0, v18

    array-length v15, v0

    .local v15, "len":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v15, :cond_7

    aget-byte v2, v19, v14

    aget-byte v3, v18, v14

    if-eq v2, v3, :cond_8

    const/4 v12, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLmsDuplicated(), pduStr_cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLmsDuplicated(), userdata1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLmsDuplicated(), userdata2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "body_cursor":[B
    .end local v12    # "different":Z
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "sm":Landroid/telephony/SmsMessage;
    .end local v18    # "ud":[B
    .end local v19    # "ud_curr":[B
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v2, "checkLmsDuplicated(), SQLException occurs"

    invoke-static {v2, v13}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .end local v13    # "e":Landroid/database/SQLException;
    .restart local v9    # "body":Ljava/lang/String;
    .restart local v10    # "body_cursor":[B
    .restart local v12    # "different":Z
    .restart local v14    # "i":I
    .restart local v15    # "len":I
    .restart local v17    # "sm":Landroid/telephony/SmsMessage;
    .restart local v18    # "ud":[B
    .restart local v19    # "ud_curr":[B
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v18    # "ud":[B
    .end local v19    # "ud_curr":[B
    :cond_9
    :try_start_3
    const-string v2, "checkLmsDuplicated(), pduStr equals pduStr_cursor "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x1

    goto/16 :goto_4

    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "body_cursor":[B
    .end local v12    # "different":Z
    .end local v17    # "sm":Landroid/telephony/SmsMessage;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method public static checkValidLmsMessage(I)Z
    .locals 1
    .param p0, "teleService"    # I

    .prologue
    const v0, 0xf6fe

    if-eq v0, p0, :cond_0

    const v0, 0xc256

    if-eq v0, p0, :cond_0

    const v0, 0xc264

    if-eq v0, p0, :cond_0

    const v0, 0xc266

    if-eq v0, p0, :cond_0

    const v0, 0xc268

    if-eq v0, p0, :cond_0

    const v0, 0xc006

    if-eq v0, p0, :cond_0

    const v0, 0xc00b

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSession(), CBS Cleared Session ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    return-void
.end method

.method private clearSession(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSession(), CBS Cleared Session ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    return-void
.end method

.method private completeOrInsertLms(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BI)I
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B
    .param p7, "pdus"    # [[B
    .param p8, "sameMsgCount"    # I

    .prologue
    add-int/lit8 v1, p8, 0x1

    if-ne v1, p5, :cond_1

    add-int/lit8 v1, p4, -0x1

    aput-object p6, p7, v1

    move v0, p5

    .local v0, "loop":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/lge/telephony/LGUSmsUtils;->deleteCompleteLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V

    const/4 v1, -0x1

    .end local v0    # "loop":I
    :goto_1
    return v1

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/lge/telephony/LGUSmsUtils;->insertLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private deleteAllExpiredMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I

    .prologue
    const-string v0, "deleteAllExpiredMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "deleteAllExpiredMsg(), cursor is null or moveToFirst error"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v6, v0, v3

    .local v6, "currentTime":J
    :cond_3
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, "rowId":J
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v12, v0, v3

    .local v12, "time":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllExpiredMsg(), rowId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllExpiredMsg(), time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllExpiredMsg(), currentTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    sub-long v0, v6, v12

    const-wide/16 v3, 0x258

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "currentTime":J
    .end local v10    # "rowId":J
    .end local v12    # "time":J
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "deleteAllExpiredMsg(), SQLException occurs"

    invoke-static {v0, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private deleteCompleteLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V
    .locals 12
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I

    .prologue
    const-string v0, "deleteCompleteLmsMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "source_min = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, " AND reference_number = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, " AND count = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, " AND tid = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v0, " AND address = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "deleteCompleteLmsMsg(), cursor is null or moveToFirst error"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    .end local v2    # "projection":[Ljava/lang/String;
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .local v8, "rowId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteCompleteLmsMsg(), rowId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "rowId":J
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "deleteCompleteLmsMsg(), SQLException occurs"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getSessionIdLink()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/lge/telephony/LGUSmsUtils;->sSessionIdLink:Ljava/util/LinkedList;

    return-object v0
.end method

.method private getSessionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/lge/telephony/LGUSmsUtils;->sSessionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private insertLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)V
    .locals 12
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B

    .prologue
    const-string v0, "insertLmsMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "insertLmsMsg(), cursor is null"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_6

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v8, v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "projection":[Ljava/lang/String;
    .local v8, "projection":[Ljava/lang/String;
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "insertLmsMsg(), cursor moveToLast error"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_0

    .end local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .local v9, "rowId":J
    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    const-string v0, "insertLmsMsg(), oldest lms delete fail"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_0

    .end local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    :cond_5
    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .end local v9    # "rowId":J
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "value":Landroid/content/ContentValues;
    const-string v0, "source_min"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reference_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "pdu"

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_9

    const-string v0, "tid"

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "insertLmsMsg(), lms insert fail"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v11    # "value":Landroid/content/ContentValues;
    .restart local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/database/SQLException;
    :goto_2
    :try_start_4
    const-string v0, "insertLmsMsg(), SQLException occurs"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .restart local v11    # "value":Landroid/content/ContentValues;
    :cond_9
    const-string v0, "tid"

    check-cast p1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .end local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v11    # "value":Landroid/content/ContentValues;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :catchall_1
    move-exception v0

    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_3

    .end local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_2
.end method

.method private isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    move-object v2, v4

    check-cast v2, Ljava/util/TreeMap;

    .local v2, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/4 v3, 0x0

    .local v3, "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "nkey":Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    check-cast v3, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;

    .restart local v3    # "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    if-nez v3, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    iget v4, v3, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    if-ne v4, v6, :cond_1

    move v4, v6

    goto :goto_0

    .end local v1    # "nkey":Ljava/lang/Integer;
    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public static isMessageProcessTid(I)Z
    .locals 1
    .param p0, "tid"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_0
        0xc005 -> :sswitch_0
        0xc006 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc263 -> :sswitch_0
        0xc264 -> :sswitch_0
        0xc265 -> :sswitch_0
        0xc266 -> :sswitch_0
        0xc267 -> :sswitch_0
        0xc268 -> :sswitch_0
        0xf6fe -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method private isMsgEnd(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/telephony/LGUSmsUtils;->isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/lge/telephony/LGUSmsUtils;->isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 9
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeMap;

    move-object v3, v5

    check-cast v3, Ljava/util/TreeMap;

    .local v3, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v3, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "nkey":Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    check-cast v4, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;

    .restart local v4    # "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    if-nez v4, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    iget v5, v4, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "nkey":Ljava/lang/Integer;
    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method private makeCompleteText(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)V
    .locals 6
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "pdus"    # [[B

    .prologue
    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    move-object v2, v4

    check-cast v2, Ljava/util/TreeMap;

    .local v2, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    .local v3, "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "nKey":Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    check-cast v3, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;

    .restart local v3    # "tmpMsgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mPdu:[B

    aput-object v5, p2, v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    if-eqz v4, :cond_0

    if-eqz v3, :cond_2

    iget v4, v3, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0
.end method

.method private parseImsMsg([B)I
    .locals 8
    .param p1, "userData"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseImsMsg(), CBS IMS_MSG userData[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    aget-byte v2, p1, v4

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    const-string v2, "order"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.lge.ims.enable"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parseImsMsg(), CBS 0x30 "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "contentfield"

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    const-string v6, "KSC5601"

    invoke-direct {v3, p1, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parseImsMsg(), CBS try "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/lge/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "parseImsMsg(), CBS     context.sendBroadcast "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    return v7

    :cond_1
    aget-byte v2, p1, v4

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    const-string v2, "order"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.lge.ims.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parseImsMsg(), CBS 0x31 "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, "parseImsMsg(), CBS Exception "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processCbsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I
    .locals 12
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "pdus"    # [[B

    .prologue
    const/4 v10, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS parse star = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "pdu":[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    .local v8, "userData":[B
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    const/16 v9, 0x2be

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v9, v11, :cond_1

    const-string v9, "deleteCompleteLmsMsg(), CBS EMERGENCY_MSG "

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    :cond_0
    if-nez v4, :cond_2

    move v9, v10

    :goto_1
    return v9

    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_1
    const/16 v9, 0x7000

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v9, v11, :cond_0

    invoke-direct {p0, v8}, Lcom/lge/telephony/LGUSmsUtils;->parseImsMsg([B)I

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .local v2, "loop":I
    :goto_2
    array-length v9, v8

    if-ge v2, v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), userData["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "] = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v11, v8, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS session = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS eos = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->endOfSession:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS sessionSeq = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessionSeq:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS Session Map = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v9

    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    .local v0, "cbsSid":I
    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/TreeMap;

    move-object v7, v9

    check-cast v7, Ljava/util/TreeMap;

    :goto_3
    if-nez v7, :cond_4

    new-instance v7, Ljava/util/TreeMap;

    .end local v7    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .restart local v7    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_4
    new-instance v3, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v9

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->endOfSession:I

    invoke-direct {v3, p0, v9, v4}, Lcom/lge/telephony/LGUSmsUtils$MsgSequence;-><init>(Lcom/lge/telephony/LGUSmsUtils;I[B)V

    .local v3, "msgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v9

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessionSeq:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS Session Map put ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCompleteLmsMsg(), CBS isEos()= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/lge/telephony/LGUSmsUtils;->isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", isSeqFull()="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/lge/telephony/LGUSmsUtils;->isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/lge/telephony/LGUSmsUtils;->isMsgEnd(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v10

    goto/16 :goto_1

    .end local v3    # "msgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    :cond_5
    invoke-direct {p0}, Lcom/lge/telephony/LGUSmsUtils;->getSessionIdLink()Ljava/util/LinkedList;

    move-result-object v6

    .local v6, "sessionLink":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Object;>;"
    :cond_6
    :goto_4
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v11, 0x9

    if-le v9, v11, :cond_7

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "session":Ljava/lang/Integer;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/lge/telephony/LGUSmsUtils;->clearSession(I)V

    goto :goto_4

    .end local v5    # "session":Ljava/lang/Integer;
    :cond_7
    new-instance v7, Ljava/util/TreeMap;

    .end local v7    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .restart local v7    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .end local v6    # "sessionLink":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Object;>;"
    .restart local v3    # "msgSeq":Lcom/lge/telephony/LGUSmsUtils$MsgSequence;
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/lge/telephony/LGUSmsUtils;->makeCompleteText(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)V

    invoke-direct {p0, p1}, Lcom/lge/telephony/LGUSmsUtils;->clearSession(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v9, -0x1

    goto/16 :goto_1
.end method

.method private processLmsMessage(Lcom/android/internal/telephony/SmsMessageBase;[[B)I
    .locals 17
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "pdus"    # [[B

    .prologue
    const-string v1, "processLmsMessage()"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v7

    .local v7, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v16

    .local v16, "userData":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .local v3, "sourceMin":Ljava/lang/String;
    const/4 v1, 0x0

    aget-byte v4, v16, v1

    .local v4, "sessionId":I
    const/4 v1, 0x1

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v5, v1, 0x4

    .local v5, "totalSegment":I
    const/4 v1, 0x1

    aget-byte v1, v16, v1

    and-int/lit8 v6, v1, 0xf

    .local v6, "currentSegment":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), sourceMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), totalSegment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), currentSegment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    if-gt v5, v1, :cond_0

    const/4 v1, 0x3

    if-le v6, v1, :cond_4

    :cond_0
    const-string v1, "processLmsMessage(), invalid LMS"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/4 v1, 0x3

    if-gt v5, v1, :cond_3

    const/4 v1, 0x3

    if-le v6, v1, :cond_4

    :cond_3
    const-string v1, "processLmsMessage(), invalid LMS"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/lge/telephony/LGUSmsUtils;->checkLmsDuplicated(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)Z

    move-result v1

    if-ne v8, v1, :cond_5

    const-string v1, "processLmsMessage(), LMS ???"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v3

    move v11, v4

    move v12, v6

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/lge/telephony/LGUSmsUtils;->deleteAllExpiredMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v3

    move v11, v4

    move v12, v6

    move v13, v5

    move-object v14, v7

    move-object/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/lge/telephony/LGUSmsUtils;->checkCompleteMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[B)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public handleCBSMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 13
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0xa

    const/4 v12, 0x1

    new-array v4, v12, [[B

    .local v4, "pdus":[[B
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v11

    .local v11, "tid":I
    new-array v4, v2, [[B

    invoke-direct {p0, p1, v4}, Lcom/lge/telephony/LGUSmsUtils;->processCbsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I

    move-result v10

    .local v10, "ret":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    .end local v10    # "ret":I
    :goto_0
    return v10

    .restart local v10    # "ret":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "loop":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_1

    aget-object v0, v4, v7

    if-nez v0, :cond_2

    :cond_1
    move v6, v7

    new-array v8, v6, [[B

    .local v8, "newPuds":[[B
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v0, v4, v7

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v8    # "newPuds":[[B
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .restart local v8    # "newPuds":[[B
    :cond_3
    new-array v4, v6, [[B

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v0, v8, v7

    aput-object v0, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const-string v0, "CdmaSmsLGUMessage"

    iget-object v1, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/lge/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    if-nez v0, :cond_5

    move v10, v12

    goto :goto_0

    :cond_5
    const-string v0, "CdmaSmsLGUMessage"

    iget-object v1, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/lge/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v9

    .local v9, "operatorMsg":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-interface {v9, v0}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    :cond_6
    move v10, v12

    goto :goto_0
.end method

.method public handleLMSMessage(Lcom/android/internal/telephony/SmsMessageBase;Z)I
    .locals 12
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "isGsm"    # Z

    .prologue
    const/4 v1, 0x1

    new-array v4, v1, [[B

    .local v4, "pdus":[[B
    const/4 v11, -0x1

    .local v11, "tid":I
    const/4 v3, 0x0

    .local v3, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v11, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 v1, 0x0

    check-cast p1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .end local p1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v4, v1

    :goto_0
    const/4 v1, 0x1

    invoke-static {v11}, Lcom/lge/telephony/LGUSmsUtils;->checkValidLmsMessage(I)Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    new-array v4, v1, [[B

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 v2, 0x0

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, v4, v2

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/LGUSmsUtils;->processLmsMessage(Lcom/android/internal/telephony/SmsMessageBase;[[B)I

    move-result v10

    .local v10, "ret":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_2

    .end local v10    # "ret":I
    :goto_2
    return v10

    .restart local p1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v11

    const/4 v1, 0x0

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v4, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, v4, v2

    goto :goto_1

    .restart local v10    # "ret":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "loop":I
    const/4 v7, 0x0

    :goto_3
    const/4 v1, 0x3

    if-ge v7, v1, :cond_3

    aget-object v1, v4, v7

    if-nez v1, :cond_4

    :cond_3
    move v6, v7

    new-array v8, v6, [[B

    .local v8, "newPuds":[[B
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_5

    aget-object v1, v4, v7

    aput-object v1, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v8    # "newPuds":[[B
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .restart local v8    # "newPuds":[[B
    :cond_5
    new-array v4, v6, [[B

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_6

    aget-object v1, v8, v7

    aput-object v1, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v6    # "count":I
    .end local v7    # "loop":I
    .end local v8    # "newPuds":[[B
    .end local v10    # "ret":I
    :cond_6
    const/4 v1, 0x1

    if-ne p2, v1, :cond_7

    const-string v0, "GsmSmsLGUMessage"

    .local v0, "operator":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/lge/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    .end local v0    # "operator":Ljava/lang/String;
    :cond_7
    const-string v0, "CdmaSmsLGUMessage"

    goto :goto_6

    .restart local v0    # "operator":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/lge/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v9

    .local v9, "operatorMsg":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v9, :cond_9

    iget-object v1, p0, Lcom/lge/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-interface {v9, v1}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    :cond_9
    const/4 v10, 0x1

    goto :goto_2
.end method
