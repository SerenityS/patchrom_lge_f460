.class Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMSSegmentExpirationRunnable"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private mFirstTime:J

.field private msgCount:I

.field private refNumber:I

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IIJ)V
    .locals 2
    .param p2, "mAddress"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # I
    .param p4, "messageCount"    # I
    .param p5, "firstTime"    # J

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1644
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->refNumber:I

    .line 1645
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->msgCount:I

    .line 1646
    iput-wide p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->mFirstTime:J

    .line 1648
    if-eqz p2, :cond_0

    .line 1649
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->address:Ljava/lang/String;

    .line 1654
    :goto_0
    return-void

    .line 1652
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Unkown sender"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendUncompletedEMS(Ljava/lang/String;)V
    .locals 14
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1675
    const/4 v6, 0x0

    .line 1676
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->address:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1677
    .local v4, "whereArgs":[Ljava/lang/String;
    check-cast v12, [[B

    .line 1680
    .local v12, "pdus":[[B
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1685
    if-eqz v6, :cond_0

    .line 1686
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1687
    .local v7, "cursorCount":I
    const-string v0, "pdu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1688
    .local v11, "pduColumn":I
    const-string v0, "sequence"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1690
    .local v13, "sequenceColumn":I
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->msgCount:I

    new-array v12, v0, [[B

    .line 1691
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 1692
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1693
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v8, v0

    .line 1694
    .local v8, "cursorSequence":I
    add-int/lit8 v0, v8, -0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 1691
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1698
    .end local v7    # "cursorCount":I
    .end local v8    # "cursorSequence":I
    .end local v10    # "i":I
    .end local v11    # "pduColumn":I
    .end local v13    # "sequenceColumn":I
    :cond_0
    const-string v0, "sendUncompletedEMS(), cursorCount is null"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1699
    const/4 v7, 0x0

    .line 1703
    .restart local v7    # "cursorCount":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    if-eqz v6, :cond_2

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1717
    .end local v7    # "cursorCount":I
    :cond_2
    :goto_1
    return-void

    .line 1704
    :catch_0
    move-exception v9

    .line 1705
    .local v9, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "sendUncompletedEMS(), send uncompleted EMS msg : query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    if-eqz v6, :cond_2

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1707
    .end local v9    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v9

    .line 1708
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v0, "sendUncompletedEMS(), send uncompleted EMS msg : query IllegalArgumentException catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1713
    if-eqz v6, :cond_2

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1710
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 1711
    .local v9, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v0, "sendUncompletedEMS(), send uncompleted EMS msg : null pointer exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1713
    if-eqz v6, :cond_2

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1713
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1659
    const-wide/32 v2, 0x493e0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v1, "where":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1667
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    const-string v2, "time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->mFirstTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;->sendUncompletedEMS(Ljava/lang/String;)V

    .line 1672
    return-void

    .line 1660
    .end local v1    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "EMSSegmentExpirationRunnable:run(), Thread Interrupted exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
