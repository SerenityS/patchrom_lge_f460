.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 75
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getValidWapPduIndex()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v1, "support_sprint_lock_and_wipe"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "getValidWapPduIndex(),[SPR] get normal index"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x4

    .line 107
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v1, "kddi_cdma_wap_push"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 101
    const-string v0, "dispatchWapPdu(),[KDDI] get normal index"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x7

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "reparseValidWapPduIndex(), Received non-PUSH WAP PDU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 107
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 36
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "smscAddress"    # Ljava/lang/String;
    .param p5, "originatingAddress"    # Ljava/lang/String;

    .prologue
    .line 126
    const/16 v29, 0x0

    .line 128
    .local v29, "thisIsSpam":Z
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Rx: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v16, 0x0

    .line 132
    .local v16, "index":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "index":I
    .local v17, "index":I
    :try_start_0
    aget-byte v33, p1, v16
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    .line 133
    .local v30, "transactionId":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "index":I
    .restart local v16    # "index":I
    :try_start_1
    aget-byte v33, p1, v17

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 135
    .local v23, "pduType":I
    const/16 v33, 0x6

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    const/16 v33, 0x7

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "reparse_wap_push_index"

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/WapPushOverSms;->getValidWapPduIndex()I

    move-result v16

    move/from16 v17, v16

    .line 147
    .end local v16    # "index":I
    .restart local v17    # "index":I
    :goto_0
    const/16 v33, -0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 148
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "index":I
    .restart local v16    # "index":I
    aget-byte v33, p1, v17
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    .line 149
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "index":I
    .restart local v17    # "index":I
    :try_start_2
    aget-byte v33, p1, v16

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 150
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "dispatchWapPdu(), index = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " PDU Type = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " transactionID = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 153
    const/16 v33, 0x6

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    const/16 v33, 0x7

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 155
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "dispatchWapPdu(), Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    const/16 v33, 0x1

    .line 378
    .end local v17    # "index":I
    .end local v23    # "pduType":I
    .end local v30    # "transactionId":I
    :goto_1
    return v33

    .line 142
    .restart local v16    # "index":I
    .restart local v23    # "pduType":I
    .restart local v30    # "transactionId":I
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10e004a

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v16

    move/from16 v17, v16

    .end local v16    # "index":I
    .restart local v17    # "index":I
    goto/16 :goto_0

    .line 159
    :cond_1
    :try_start_4
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 160
    const/16 v33, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v17

    .line 164
    .end local v17    # "index":I
    .restart local v16    # "index":I
    :cond_3
    :try_start_5
    new-instance v22, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 172
    .local v22, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v33

    if-nez v33, :cond_4

    .line 173
    const-string v33, "WAP PUSH"

    const-string v34, "Received PDU. Header Length error."

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v33, 0x2

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v14, v0

    .line 177
    .local v14, "headerLength":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v16, v16, v33

    .line 179
    move/from16 v15, v16

    .line 193
    .local v15, "headerStartIndex":I
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v33

    if-nez v33, :cond_5

    .line 194
    const-string v33, "WAP PUSH"

    const-string v34, "Received PDU. Header Content-Type error."

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v33, 0x2

    goto :goto_1

    .line 198
    :cond_5
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    .line 199
    .local v21, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    .line 200
    .local v6, "binaryContentType":J
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v16, v16, v33

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "support_sprint_lock_and_wipe"

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 204
    if-nez v21, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "OMADM_LOCK_STATE"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 207
    .local v11, "dmLockState":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v11, v0, :cond_7

    long-to-int v0, v6

    move/from16 v33, v0

    const/16 v34, 0x45

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    long-to-int v0, v6

    move/from16 v33, v0

    const/16 v34, 0x44

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    .line 209
    const-string v33, "dispatchWapPdu: -Lock and Wipe - enabled -Block Inbound WAP push"

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 210
    const/16 v33, 0x2

    goto/16 :goto_1

    .line 214
    .end local v11    # "dmLockState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "OMADM_LOCK_STATE"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 215
    .restart local v11    # "dmLockState":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v11, v0, :cond_7

    .line 216
    const-string v33, "dispatchWapPdu: -Lock and Wipe - enabled -Block Inbound WAP push"

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 217
    const/16 v33, 0x2

    goto/16 :goto_1

    .line 223
    .end local v11    # "dmLockState":I
    :cond_7
    new-array v13, v14, [B

    .line 224
    .local v13, "header":[B
    const/16 v33, 0x0

    array-length v0, v13

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v15, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    if-eqz v21, :cond_c

    const-string v33, "application/vnd.wap.coc"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 229
    move-object/from16 v20, p1

    .line 242
    .local v20, "intentData":[B
    :goto_2
    add-int v33, v16, v14

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 243
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v16, v0

    .line 244
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 245
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v31

    .line 246
    .local v31, "wapAppId":Ljava/lang/String;
    if-nez v31, :cond_8

    .line 247
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 250
    :cond_8
    if-nez v21, :cond_d

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "contentType":Ljava/lang/String;
    :goto_3
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "appid found: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ":"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "support_sprint_lock_and_wipe"

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 256
    const-wide/16 v33, 0x45

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 258
    const-string v33, "OMADM NIA - mimeType = application/vnd.syncml.notification"

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 259
    const-string v21, "application/vnd.syncml.notification"

    .line 265
    :cond_9
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mimeType = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "KRWapPushWithSpam"

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 267
    if-eqz v21, :cond_a

    const-string v33, "application/vnd.wap.mms-message"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 268
    add-int v10, v15, v14

    .line 271
    .local v10, "dataIndex":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    sub-int v33, v33, v10

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 272
    .local v28, "spamcheckdata":[B
    const/16 v33, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorSpamMessage([BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v27

    .line 275
    .local v27, "spamMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v27, :cond_a

    .line 276
    invoke-interface/range {v27 .. v27}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v18

    .line 277
    .local v18, "info":Landroid/os/Bundle;
    if-eqz v18, :cond_a

    .line 278
    const-string v33, "spam_result"

    const/16 v34, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v29

    .line 286
    .end local v10    # "dataIndex":I
    .end local v18    # "info":Landroid/os/Bundle;
    .end local v27    # "spamMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    .end local v28    # "spamcheckdata":[B
    :cond_a
    const/16 v26, 0x1

    .line 287
    .local v26, "processFurther":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v32, v0

    .line 289
    .local v32, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v32, :cond_e

    .line 290
    const-string v33, "WAP PUSH"

    const-string v34, "wap push manager not found!"

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 309
    :cond_b
    :goto_4
    if-nez v26, :cond_f

    .line 310
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 231
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v20    # "intentData":[B
    .end local v26    # "processFurther":Z
    .end local v31    # "wapAppId":Ljava/lang/String;
    .end local v32    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_c
    add-int v10, v15, v14

    .line 232
    .restart local v10    # "dataIndex":I
    :try_start_7
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    sub-int v33, v33, v10

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 233
    .restart local v20    # "intentData":[B
    const/16 v33, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 374
    .end local v6    # "binaryContentType":J
    .end local v10    # "dataIndex":I
    .end local v13    # "header":[B
    .end local v14    # "headerLength":I
    .end local v15    # "headerStartIndex":I
    .end local v20    # "intentData":[B
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v22    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v23    # "pduType":I
    :catch_0
    move-exception v4

    .line 377
    .end local v30    # "transactionId":I
    .local v4, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v33, 0x2

    goto/16 :goto_1

    .end local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "binaryContentType":J
    .restart local v13    # "header":[B
    .restart local v14    # "headerLength":I
    .restart local v15    # "headerStartIndex":I
    .restart local v20    # "intentData":[B
    .restart local v21    # "mimeType":Ljava/lang/String;
    .restart local v22    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v23    # "pduType":I
    .restart local v30    # "transactionId":I
    .restart local v31    # "wapAppId":Ljava/lang/String;
    :cond_d
    move-object/from16 v9, v21

    .line 250
    goto/16 :goto_3

    .line 292
    .restart local v9    # "contentType":Ljava/lang/String;
    .restart local v26    # "processFurther":Z
    .restart local v32    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_e
    :try_start_8
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v19, "intent":Landroid/content/Intent;
    const-string v33, "transactionId"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v33, "pduType"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v33, "header"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 296
    const-string v33, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 297
    const-string v33, "contentTypeParameters"

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 299
    const-string v33, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v9, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v25

    .line 303
    .local v25, "procRet":I
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "procRet:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    .line 304
    and-int/lit8 v33, v25, 0x1

    if-lez v33, :cond_b

    const v33, 0x8000

    and-int v33, v33, v25

    if-nez v33, :cond_b

    .line 306
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 312
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v25    # "procRet":I
    .end local v32    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v12

    .line 313
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v33, "WAP PUSH"

    const-string v34, "remote func failed..."

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v26    # "processFurther":Z
    .end local v31    # "wapAppId":Ljava/lang/String;
    :cond_f
    const-string v33, "WAP PUSH"

    const-string v34, "fall back to existing handler"

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-nez v21, :cond_10

    .line 319
    const-string v33, "WAP PUSH"

    const-string v34, "Header Content-Type error."

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v33, 0x2

    goto/16 :goto_1

    .line 326
    :cond_10
    const-string v33, "application/vnd.wap.mms-message"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 327
    const-string v24, "android.permission.RECEIVE_MMS"

    .line 328
    .local v24, "permission":Ljava/lang/String;
    const/16 v5, 0x12

    .line 334
    .local v5, "appOp":I
    :goto_6
    new-instance v19, Landroid/content/Intent;

    const-string v33, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .restart local v19    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "KRWapPushWithSpam"

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 339
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "intent":Landroid/content/Intent;
    const-string v33, "android.provider.Telephony.WAP_PUSH_SPAM_RECEIVED"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v33, "transactionId"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v33, "pduType"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v33, "header"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 346
    const-string v33, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 347
    const-string v33, "contentTypeParameters"

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 348
    const-string v33, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v33, "application/vnd.wap.sic"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_12

    const-string v33, "application/vnd.wap.slc"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 351
    :cond_12
    const-string v33, "smscAdd"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v33, "originAdd"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "KRWapPushWithSpam"

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 358
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 359
    const/16 v33, -0x1

    goto/16 :goto_1

    .line 330
    .end local v5    # "appOp":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v24    # "permission":Ljava/lang/String;
    :cond_14
    const-string v24, "android.permission.RECEIVE_WAP_PUSH"

    .line 331
    .restart local v24    # "permission":Ljava/lang/String;
    const/16 v5, 0x13

    .restart local v5    # "appOp":I
    goto/16 :goto_6

    .line 364
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v8

    .line 365
    .local v8, "componentName":Landroid/content/ComponentName;
    if-eqz v8, :cond_16

    .line 367
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Delivering MMS to: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_16
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    .line 373
    const/16 v33, -0x1

    goto/16 :goto_1

    .line 374
    .end local v5    # "appOp":I
    .end local v6    # "binaryContentType":J
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "header":[B
    .end local v14    # "headerLength":I
    .end local v15    # "headerStartIndex":I
    .end local v16    # "index":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "intentData":[B
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v22    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v23    # "pduType":I
    .end local v24    # "permission":Ljava/lang/String;
    .end local v30    # "transactionId":I
    .restart local v17    # "index":I
    :catch_2
    move-exception v4

    move/from16 v16, v17

    .end local v17    # "index":I
    .restart local v16    # "index":I
    goto/16 :goto_5
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 61
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 62
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 68
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
