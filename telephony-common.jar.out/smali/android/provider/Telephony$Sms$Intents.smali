.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_RETRY_TOBE_ENABLE_CBMI:Ljava/lang/String; = "android.intent.action.ENABLE_CBMI"

.field public static final CALLBACKURLSPAM_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURLSPAM_KT_RECEIVED"

.field public static final CALLBACKURLSPAM_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURLSPAM_SKT_RECEIVED"

.field public static final CALLBACKURL_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURL_KT_RECEIVED"

.field public static final CALLBACKURL_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURL_SKT_RECEIVED"

.field public static final CB_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SMS_RECEIVED"

.field public static final COMMONPUSH_SKT_RECEIVED_ACTION:Ljava/lang/String; = "com.skt.push.SMS_PUSH"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DELETE_SIM_MESSAGE_ACTION:Ljava/lang/String; = "android.provider.Telephony.DELETE_SIM_MESSAGE"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EXTRA_NET_MODE:Ljava/lang/String; = "netmode"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.FOTA_RECEIVED"

.field public static final LGE_CMAS_RECEIVED_ACTION:Ljava/lang/String; = "com.lge.provider.Telephony.LGE_CMAS_RECEIVED"

.field public static final LGE_MMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_RECEIVED"

.field public static final LMS_PULL_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPULL_RECEIVED"

.field public static final LMS_PULL_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPULL_SPAM_RECEIVED"

.field public static final LMS_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPUSH_RECEIVED"

.field public static final LMS_PUSH_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPUSH_SPAM_RECEIVED"

.field public static final NETMODE_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.NETMODE_UPDATED"

.field public static final PORTADDRESS_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.PORTADDRESS_KT_RECEIVED"

.field public static final PORTADDRESS_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.PORTADDRESS_SKT_RECEIVED"

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_NOT_HANDLED:I = 0xb

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SELF_REGI_CONFIRM_RECEIVED_ACTION:Ljava/lang/String; = "com.lge.intent.action.SELF_REGI_SMS_RECEIVED"

.field public static final SEND_SMS_REQUST_BACKGROUND_ACTION:Ljava/lang/String; = "android.provider.Telephony.SEND_SMS_REQUST_BACKGROUND"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SKAF_MMS_RECEIVED_ACTION:Ljava/lang/String; = "com.skt.skaf.ACTION.MMS_RECEIVED"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CDMA_DAN_OK:Ljava/lang/String; = "com.lge.kddi.intent.action.DAN_SENT_OK"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_OVER_IMS_REGI_INFO:Ljava/lang/String; = "com.lge.kddi.intent.action.IMS_REGI_INFO"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final SMS_WIFI_OFF:Ljava/lang/String; = "android.intent.action.SMS_WIFI_OFF"

.field public static final SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPAM_RECEIVED"

.field public static final VIDEO_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.VIDEO_RECEIVED"

.field public static final VOICE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.VOICE_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final WAP_PUSH_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_SPAM_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1727
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 21
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2289
    const-string v18, "pdus"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v10, v18

    check-cast v10, [Ljava/lang/Object;

    .line 2290
    .local v10, "messages":[Ljava/lang/Object;
    const-string v18, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2292
    .local v4, "format":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2293
    .local v12, "missingSegIndexArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2294
    .local v8, "isReplaceConcat":Z
    const/4 v11, 0x0

    .line 2295
    .local v11, "missingSegIndex":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "concat_stitching"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2296
    const-string v18, "ctreplace"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2297
    const-string v18, "tag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[Red] isReplaceConcat : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    if-eqz v8, :cond_0

    .line 2299
    const-string v18, "missingSegIndex"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2300
    const-string v18, "tag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[Red] missingSegIndex : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2302
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2307
    :cond_0
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v15, v0, [[B

    .line 2308
    .local v15, "pduObjs":[[B
    const-string v18, "subscription"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2310
    .local v17, "subId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_1

    .line 2311
    aget-object v18, v10, v5

    check-cast v18, [B

    check-cast v18, [B

    aput-object v18, v15, v5

    .line 2310
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2313
    :cond_1
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 2314
    .local v16, "pdus":[[B
    move-object/from16 v0, v16

    array-length v14, v0

    .line 2315
    .local v14, "pduCount":I
    new-array v13, v14, [Landroid/telephony/SmsMessage;

    .line 2316
    .local v13, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_6

    .line 2317
    aget-object v18, v15, v5

    aput-object v18, v16, v5

    .line 2319
    const/16 v18, 0x0

    const-string v19, "parse_pdu_twice"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 2321
    aget-object v18, v16, v5

    invoke-static/range {v18 .. v18}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v18

    aput-object v18, v13, v5

    .line 2329
    :goto_2
    aget-object v18, v13, v5

    if-eqz v18, :cond_2

    .line 2330
    aget-object v18, v13, v5

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 2333
    :cond_2
    const/16 v18, 0x0

    const-string v19, "concat_stitching"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2334
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 2335
    if-eqz v12, :cond_3

    .line 2336
    move-object v3, v12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v9, :cond_3

    aget-object v7, v3, v6

    .line 2337
    .local v7, "index":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2338
    const-string v18, "tag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " [RED] missing seg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    aget-object v18, v13, v5

    const-string v19, "(...)"

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsMessage;->setMessageBodyWithSpecificString(Ljava/lang/String;)V

    .line 2340
    const-string v18, "tag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " [RED] After msgs[i].getMessageBody : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v13, v5

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "index":Ljava/lang/String;
    .end local v9    # "len$":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2325
    :cond_4
    aget-object v18, v16, v5

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v18

    aput-object v18, v13, v5

    goto :goto_2

    .line 2336
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "index":Ljava/lang/String;
    .restart local v9    # "len$":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2349
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "index":Ljava/lang/String;
    .end local v9    # "len$":I
    :cond_6
    return-object v13
.end method
