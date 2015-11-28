.class Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;
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
    name = "IncompleteConcatDispatchTimer"
.end annotation


# instance fields
.field concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field private expireTimerValue:J

.field private inCompeteConcatAddr:Ljava/lang/String;

.field private inCompeteConcatFirstTime:J

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V
    .locals 2
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p3, "firstTime"    # J
    .param p5, "timerValue"    # J

    .prologue
    .line 3826
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3827
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    .line 3828
    iput-wide p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->expireTimerValue:J

    .line 3829
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3830
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->inCompeteConcatAddr:Ljava/lang/String;

    .line 3834
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 3835
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/InboundSmsTracker;->isExpiredByTimer:Z

    .line 3836
    return-void

    .line 3832
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Unkown sender"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->inCompeteConcatAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private dispatchIncompletedConcat()V
    .locals 21

    .prologue
    .line 3848
    const/4 v8, 0x0

    .line 3849
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 3850
    .local v5, "whereArgs":[Ljava/lang/String;
    const/16 v17, 0x0

    check-cast v17, [[B

    .line 3851
    .local v17, "pdus":[[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, [RED] concatTracker.getReferenceNumber()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 3852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, [RED] inCompeteConcatFirstTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 3853
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .line 3856
    .local v15, "missingSegIndex":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900()Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1000()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "reference_number=? AND time=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3862
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 3863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "concat_expired_time"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "reference_number=? AND time=?"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 3865
    .local v11, "deletedCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat(), [RED] CMCC LMS Expiry Timeout! deletedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3939
    if-eqz v8, :cond_0

    .line 3940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3943
    .end local v11    # "deletedCount":I
    :cond_0
    :goto_0
    return-void

    .line 3869
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 3870
    .local v9, "cursorCount":I
    const-string v1, "pdu"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 3871
    .local v16, "pduColumn":I
    const-string v1, "sequence"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3872
    .local v19, "sequenceColumn":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, [RED] cursorCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 3873
    const/16 v20, 0x0

    .line 3875
    .local v20, "stitchRefMsg":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    new-array v0, v1, [[B

    move-object/from16 v17, v0

    .line 3877
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3878
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-int v10, v1

    .line 3879
    .local v10, "cursorSequence":I
    add-int/lit8 v1, v10, -0x1

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v17, v1

    .line 3880
    if-nez v20, :cond_2

    .line 3881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, [RED] createFromPdu for stitchRefMsg index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3882
    add-int/lit8 v1, v10, -0x1

    aget-object v1, v17, v1

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v20

    goto :goto_1

    .line 3886
    .end local v10    # "cursorSequence":I
    :cond_3
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    if-ge v13, v1, :cond_6

    .line 3887
    aget-object v1, v17, v13

    if-eqz v1, :cond_5

    aget-object v1, v17, v13

    array-length v1, v1

    if-lez v1, :cond_5

    .line 3889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, [RED] fill pdu seg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 3886
    :cond_4
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3891
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, [RED] fill missing seg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 3892
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3893
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3894
    if-eqz v20, :cond_4

    .line 3895
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, v17, v13

    .line 3896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat, pdus["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = stitchRefMsg.getPdu()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 3932
    .end local v9    # "cursorCount":I
    .end local v13    # "i":I
    .end local v16    # "pduColumn":I
    .end local v19    # "sequenceColumn":I
    .end local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v12

    .line 3933
    .local v12, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "dispatchIncompletedConcat(), query exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3939
    if-eqz v8, :cond_0

    .line 3940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3900
    .end local v12    # "e":Landroid/database/SQLException;
    .restart local v9    # "cursorCount":I
    .restart local v13    # "i":I
    .restart local v16    # "pduColumn":I
    .restart local v19    # "sequenceColumn":I
    .restart local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :cond_6
    :try_start_3
    new-instance v18, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 3901
    .local v18, "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3902
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 3903
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_7

    .line 3904
    invoke-virtual {v14, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 3908
    :cond_7
    const-string v1, "pdus"

    move-object/from16 v0, v17

    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3909
    const-string v1, "format"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "seperate_processing_sms_uicc"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3912
    const-string v1, "indexOnIcc"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3917
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    .line 3918
    const-string v1, "ctreplace"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3919
    if-eqz v15, :cond_9

    .line 3920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIncompletedConcat(), [RED] missingSegIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3921
    const-string v1, "missingSegIndex"

    invoke-virtual {v14, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3926
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v1, v14, v2, v3, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3939
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "cursorCount":I
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "pduColumn":I
    .end local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v19    # "sequenceColumn":I
    .end local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :goto_6
    if-eqz v8, :cond_0

    .line 3940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3914
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "cursorCount":I
    .restart local v13    # "i":I
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v16    # "pduColumn":I
    .restart local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v19    # "sequenceColumn":I
    .restart local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :cond_a
    :try_start_4
    const-string v1, "indexOnIcc"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsTracker;->iccIndexSring:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 3934
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "cursorCount":I
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "pduColumn":I
    .end local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v19    # "sequenceColumn":I
    .end local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :catch_1
    move-exception v12

    .line 3935
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v1, "dispatchIncompletedConcat(), query IllegalArgumentException catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3939
    if-eqz v8, :cond_0

    .line 3940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3924
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "cursorCount":I
    .restart local v13    # "i":I
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v16    # "pduColumn":I
    .restart local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v19    # "sequenceColumn":I
    .restart local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :cond_b
    :try_start_6
    const-string v1, "ctreplace"

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 3936
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "cursorCount":I
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "pduColumn":I
    .end local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v19    # "sequenceColumn":I
    .end local v20    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :catch_2
    move-exception v12

    .line 3937
    .local v12, "e":Ljava/lang/NullPointerException;
    :try_start_7
    const-string v1, "dispatchIncompletedConcat(), null pointer exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3939
    if-eqz v8, :cond_0

    .line 3940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3929
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_c
    :try_start_8
    const-string v1, "dispatchIncompletedConcat(), cursorCount is null"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 3939
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_d

    .line 3940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3840
    :try_start_0
    iget-wide v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->expireTimerValue:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3844
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;->dispatchIncompletedConcat()V

    .line 3845
    return-void

    .line 3841
    :catch_0
    move-exception v0

    .line 3842
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "IncompleteConcatDispatchTimer:run(), Thread Interrupted exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
