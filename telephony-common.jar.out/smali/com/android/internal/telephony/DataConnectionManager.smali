.class public Lcom/android/internal/telephony/DataConnectionManager;
.super Ljava/lang/Object;
.source "DataConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionManager$1;,
        Lcom/android/internal/telephony/DataConnectionManager$FunctionName;
    }
.end annotation


# static fields
.field public static final DATA_NOTI_BACKGROUND_SETTING_NOTIFICATION:I = 0xa

.field private static final DBG:Z = true

.field public static final DCM_MOBILE_NETWORK_IS_ALLOWED:I = 0x1

.field public static final DCM_MOBILE_NETWORK_IS_DISALLOWED:I = 0x2

.field public static final DCM_MOBILE_NETWORK_IS_NEED_POPUP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[LGE_DATA][DCM] "

.field public static alreadyAppUsedPacket:Z

.field public static blockPacketMenuFlag:Z

.field public static blockPakcetProcessFlag:Z

.field private static sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;


# instance fields
.field public final TOAST_DISABLE_MMS_INOUT:I

.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field protected mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

.field mNotification:Landroid/app/Notification;

.field mNotificationMgr:Landroid/app/NotificationManager;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 75
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    .line 76
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "myFeature"    # Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->TOAST_DISABLE_MMS_INOUT:I

    .line 122
    const-string v0, "[LGE_DATA][DCM] "

    const-string v1, "LgeDataManager() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    .line 126
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 131
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 134
    if-eqz p2, :cond_1

    .line 135
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 141
    const-string v0, "[LGE_DATA][DCM] "

    const-string v1, "mLgDataFeature : LGUPLUS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_1
    return-void

    .line 136
    :cond_1
    if-nez p2, :cond_0

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 143
    const-string v0, "[LGE_DATA][DCM] "

    const-string v1, "mLgDataFeature : SKT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 145
    const-string v0, "[LGE_DATA][DCM] "

    const-string v1, "mLgDataFeature : KT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    :cond_4
    const-string v0, "[LGE_DATA][DCM] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLgDataFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnectionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    .line 164
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)Lcom/android/internal/telephony/DataConnectionManager;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "myfeature"    # Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .prologue
    .line 153
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/DataConnectionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/lgdata/LgDataFeature;)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I
    .locals 57
    .param p1, "funcName"    # Lcom/android/internal/telephony/DataConnectionManager$FunctionName;
    .param p2, "strParam"    # Ljava/lang/String;
    .param p3, "intParam"    # I

    .prologue
    .line 278
    monitor-enter p0

    const/16 v54, 0x0

    .line 280
    .local v54, "voidReturn":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/DataConnectionManager$1;->$SwitchMap$com$android$internal$telephony$DataConnectionManager$FunctionName:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 851
    .end local v54    # "voidReturn":I
    :cond_0
    :goto_0
    monitor-exit p0

    return v54

    .line 285
    .restart local v54    # "voidReturn":I
    :pswitch_0
    :try_start_1
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "CallingSetMobileDataEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v49, p2

    .line 288
    .local v49, "sText":Ljava/lang/String;
    const-string v20, ""

    .line 290
    .local v20, "enabled":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 291
    const-string v20, "[Mobile Off]"

    .line 296
    :goto_1
    const/16 v29, 0x4

    .line 297
    .local v29, "inputFileSize":I
    const-string v23, "CallingSetMobileDataEnabled.txt"

    .line 298
    .local v23, "fileName":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v21, "file":Ljava/io/File;
    new-instance v42, Ljava/util/Date;

    invoke-direct/range {v42 .. v42}, Ljava/util/Date;-><init>()V

    .line 304
    .local v42, "now":Ljava/util/Date;
    new-instance v50, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd HH:mm:ss"

    move-object/from16 v0, v50

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 305
    .local v50, "simpleformat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 307
    .local v52, "time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PackagesName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 308
    const-string v2, "[LGE_DATA][DCM] "

    move-object/from16 v0, v49

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v2, "persist.service.logging_count"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v44

    .line 312
    .local v44, "prop_count":I
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. CallingSetMobileDataEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    const/16 v2, 0x1f4

    move/from16 v0, v44

    if-ge v0, v2, :cond_2

    .line 317
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v27

    .line 318
    .local v27, "fos":Ljava/io/FileOutputStream;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 319
    .local v14, "bText":[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 320
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V

    .line 322
    add-int/lit8 v44, v44, 0x1

    .line 323
    const-string v2, "persist.service.logging_count"

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    .end local v14    # "bText":[B
    .end local v27    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. CallingSetMobileDataEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 278
    .end local v20    # "enabled":Ljava/lang/String;
    .end local v21    # "file":Ljava/io/File;
    .end local v23    # "fileName":Ljava/lang/String;
    .end local v29    # "inputFileSize":I
    .end local v42    # "now":Ljava/util/Date;
    .end local v44    # "prop_count":I
    .end local v49    # "sText":Ljava/lang/String;
    .end local v50    # "simpleformat":Ljava/text/SimpleDateFormat;
    .end local v52    # "time":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 293
    .restart local v20    # "enabled":Ljava/lang/String;
    .restart local v49    # "sText":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v20, "[Mobile On]"

    goto/16 :goto_1

    .line 324
    .restart local v21    # "file":Ljava/io/File;
    .restart local v23    # "fileName":Ljava/lang/String;
    .restart local v29    # "inputFileSize":I
    .restart local v42    # "now":Ljava/util/Date;
    .restart local v44    # "prop_count":I
    .restart local v50    # "simpleformat":Ljava/text/SimpleDateFormat;
    .restart local v52    # "time":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 325
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 329
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v27

    .line 330
    .restart local v27    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 331
    .restart local v14    # "bText":[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 332
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 333
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V

    .line 334
    const/16 v44, 0x0

    .line 335
    const-string v2, "persist.service.logging_count"

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 336
    .end local v14    # "bText":[B
    .end local v27    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v19

    .line 337
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 350
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v20    # "enabled":Ljava/lang/String;
    .end local v21    # "file":Ljava/io/File;
    .end local v23    # "fileName":Ljava/lang/String;
    .end local v29    # "inputFileSize":I
    .end local v42    # "now":Ljava/util/Date;
    .end local v44    # "prop_count":I
    .end local v49    # "sText":Ljava/lang/String;
    .end local v50    # "simpleformat":Ljava/text/SimpleDateFormat;
    .end local v52    # "time":Ljava/lang/String;
    :pswitch_1
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getBlockPacketMenuProcess()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <getBlockPacketMenuProcess()> blockPacketMenuFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    move/from16 v54, v2

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 360
    :pswitch_2
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getAlreadyAppUsedPacket()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <getAlreadyAppUsedPacket()> alreadyAppUsedPacket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    move/from16 v54, v2

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 369
    :pswitch_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v34

    .line 370
    .local v34, "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const/16 v31, 0x0

    .line 372
    .local v31, "isRoaming":I
    if-eqz v34, :cond_5

    .line 374
    :try_start_7
    const-string v2, "isRoamingOOS"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v31

    .line 379
    :cond_5
    :goto_5
    :try_start_8
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getDataNetworkMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    const/4 v13, 0x1

    .line 382
    .local v13, "addPopupResult":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_data_network_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v35

    .line 383
    .local v35, "mode":I
    const/16 v39, 0x0

    .line 390
    .local v39, "network_mode":I
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    const/16 v30, 0x1

    .line 394
    .local v30, "isDataRoaming":Z
    :goto_7
    :try_start_a
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For KT Roaming isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isDataRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "boot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 404
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_9

    if-eqz v13, :cond_9

    .line 405
    const/16 v39, 0x3

    .line 451
    :cond_6
    :goto_8
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v54, v39

    .line 453
    goto/16 :goto_0

    .line 380
    .end local v13    # "addPopupResult":Z
    .end local v30    # "isDataRoaming":Z
    .end local v35    # "mode":I
    .end local v39    # "network_mode":I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 390
    .restart local v13    # "addPopupResult":Z
    .restart local v35    # "mode":I
    .restart local v39    # "network_mode":I
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_7

    .line 391
    :catch_2
    move-exception v51

    .line 392
    .local v51, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v54, 0x0

    goto/16 :goto_0

    .line 408
    .end local v51    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v30    # "isDataRoaming":Z
    :cond_9
    const/16 v39, 0x1

    goto :goto_8

    .line 411
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_b

    if-eqz v13, :cond_b

    .line 412
    const/16 v39, 0x3

    goto :goto_8

    .line 415
    :cond_b
    const/16 v39, 0x2

    goto :goto_8

    .line 418
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 422
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_d

    if-nez v30, :cond_d

    .line 423
    const-string v2, "DATA"

    const-string v3, "return DCM_MOBILE_NETWORK_IS_DISALLOWED for kt roaming network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v39, 0x2

    goto :goto_8

    .line 426
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_e

    .line 427
    const/16 v39, 0x3

    goto :goto_8

    .line 429
    :cond_e
    const/16 v39, 0x1

    goto :goto_8

    .line 435
    :cond_f
    const/16 v39, 0x2

    goto :goto_8

    .line 437
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 440
    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_11

    const v2, 0x10001

    move/from16 v0, v35

    if-ne v0, v2, :cond_12

    .line 441
    :cond_11
    const/16 v39, 0x3

    goto/16 :goto_8

    .line 443
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 444
    const/16 v39, 0x1

    goto/16 :goto_8

    .line 446
    :cond_13
    const/16 v39, 0x2

    goto/16 :goto_8

    .line 461
    .end local v13    # "addPopupResult":Z
    .end local v30    # "isDataRoaming":Z
    .end local v31    # "isRoaming":I
    .end local v34    # "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    .end local v35    # "mode":I
    .end local v39    # "network_mode":I
    :pswitch_4
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "setBlockPacketMenuProcess()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_14

    const/16 v16, 0x1

    .line 463
    .local v16, "block":Z
    :goto_9
    sput-boolean v16, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 464
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <setBlockPacketMenuProcess()> blockPacketMenuFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 462
    .end local v16    # "block":Z
    :cond_14
    const/16 v16, 0x0

    goto :goto_9

    .line 470
    :pswitch_5
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "setAlreadyAppUsedPacket()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_15

    const/16 v53, 0x1

    .line 472
    .local v53, "used":Z
    :goto_a
    sput-boolean v53, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    .line 473
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <setAlreadyAppUsedPacket()> alreadyAppUsedPacket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    .end local v53    # "used":Z
    :cond_15
    const/16 v53, 0x0

    goto :goto_a

    .line 479
    :pswitch_6
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "functionForPacketList()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_16

    .line 482
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA] return ~~~~ !!! for not SKT "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    :cond_16
    const/16 v48, 0x0

    .line 488
    .local v48, "ret_value":Z
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v38

    .line 489
    .local v38, "network_b":Landroid/os/IBinder;
    invoke-static/range {v38 .. v38}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v40

    .line 491
    .local v40, "network_service":Landroid/os/INetworkManagementService;
    if-eqz v40, :cond_0

    .line 494
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "functionForPacketList  :::: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 498
    :try_start_b
    invoke-interface/range {v40 .. v40}, Landroid/os/INetworkManagementService;->packetList_Indrop()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v48

    .line 504
    :goto_b
    :try_start_c
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "functionForPacketList  ret_value :: :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 499
    :catch_3
    move-exception v19

    .line 500
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_service.resetPacketDrop exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 511
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v38    # "network_b":Landroid/os/IBinder;
    .end local v40    # "network_service":Landroid/os/INetworkManagementService;
    .end local v48    # "ret_value":Z
    :pswitch_7
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getRouteList_debug()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v48, 0x0

    .line 520
    .restart local v48    # "ret_value":Z
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v38

    .line 521
    .restart local v38    # "network_b":Landroid/os/IBinder;
    invoke-static/range {v38 .. v38}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v40

    .line 522
    .restart local v40    # "network_service":Landroid/os/INetworkManagementService;
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 523
    .local v15, "bc":Landroid/os/IBinder;
    invoke-static {v15}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v17

    .line 525
    .local v17, "cm":Landroid/net/IConnectivityManager;
    if-eqz v40, :cond_0

    if-eqz v17, :cond_0

    .line 528
    const/16 v28, 0x0

    .line 529
    .local v28, "ifacename":Ljava/lang/String;
    const/16 v45, 0x0

    .line 532
    .local v45, "props":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    :try_start_d
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v45

    .line 533
    invoke-virtual/range {v45 .. v45}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v28

    .line 538
    :goto_c
    :try_start_e
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getRouteList_debug\t:::: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 542
    :try_start_f
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getRouteList_debug(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 549
    :goto_d
    :try_start_10
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRouteList_debug\tret_value :: :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 544
    :catch_4
    move-exception v19

    .line 545
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRouteList_debug exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 555
    .end local v15    # "bc":Landroid/os/IBinder;
    .end local v17    # "cm":Landroid/net/IConnectivityManager;
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v28    # "ifacename":Ljava/lang/String;
    .end local v38    # "network_b":Landroid/os/IBinder;
    .end local v40    # "network_service":Landroid/os/INetworkManagementService;
    .end local v45    # "props":Landroid/net/LinkProperties;
    .end local v48    # "ret_value":Z
    :pswitch_8
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "handleSKT_QA()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move/from16 v47, p3

    .line 559
    .local v47, "releaseCause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/ConnectivityManager;

    .line 562
    .local v17, "cm":Landroid/net/ConnectivityManager;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSKT_QA :  releaseCause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v11, Landroid/content/Intent;

    const-string v2, "com.lge.skt.intent.action.USER_BACKG_SETTING"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v11, "DataDisabledIntent":Landroid/content/Intent;
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 582
    .local v36, "networkOperator":Ljava/lang/String;
    const/16 v33, 0x0

    .line 583
    .local v33, "krNetwork":Z
    if-eqz v36, :cond_17

    const-string v2, "45005"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 585
    const/16 v33, 0x1

    .line 588
    :cond_17
    const/4 v2, 0x2

    move/from16 v0, v47

    if-ne v0, v2, :cond_18

    if-eqz v33, :cond_18

    .line 591
    const-string v2, "on_off"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "handleSKT_QA : Limit_Background_data_Notification."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v10, "mintent":Landroid/content/Intent;
    new-instance v2, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const v4, 0x108008a

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20d0336

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v56, 0x20d0337

    move/from16 v0, v56

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v10}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 612
    .end local v10    # "mintent":Landroid/content/Intent;
    :cond_18
    const/16 v20, 0x0

    .line 613
    .local v20, "enabled":Z
    const/4 v12, 0x0

    .line 627
    .local v12, "IsBackgroundRestricted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_network_user_background_setting_data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_19

    .line 628
    const/16 v20, 0x1

    .line 632
    :goto_e
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSKT_QA : enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v2, "on_off"

    move/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 630
    :cond_19
    const/16 v20, 0x0

    goto :goto_e

    .line 647
    .end local v11    # "DataDisabledIntent":Landroid/content/Intent;
    .end local v12    # "IsBackgroundRestricted":Z
    .end local v17    # "cm":Landroid/net/ConnectivityManager;
    .end local v20    # "enabled":Z
    .end local v33    # "krNetwork":Z
    .end local v36    # "networkOperator":Ljava/lang/String;
    .end local v47    # "releaseCause":I
    :pswitch_9
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "debugFileWrite()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v23, "DebugFile.txt"

    .line 650
    .restart local v23    # "fileName":Ljava/lang/String;
    new-instance v49, Ljava/lang/StringBuffer;

    const-string v2, ""

    move-object/from16 v0, v49

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 651
    .local v49, "sText":Ljava/lang/StringBuffer;
    move/from16 v29, p3

    .line 653
    .restart local v29    # "inputFileSize":I
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v21    # "file":Ljava/io/File;
    new-instance v42, Ljava/util/Date;

    invoke-direct/range {v42 .. v42}, Ljava/util/Date;-><init>()V

    .line 659
    .restart local v42    # "now":Ljava/util/Date;
    new-instance v50, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd HH:mm:ss"

    move-object/from16 v0, v50

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 660
    .restart local v50    # "simpleformat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 662
    .restart local v52    # "time":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 666
    const-wide/16 v24, 0x0

    .line 670
    .local v24, "fileSize":J
    :try_start_11
    new-instance v46, Ljava/io/File;

    const-string v2, "data/data/com.android.phone/files/DebugFile.txt"

    move-object/from16 v0, v46

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v46, "readFile":Ljava/io/File;
    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->length()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-wide v24

    .line 681
    .end local v46    # "readFile":Ljava/io/File;
    :goto_f
    :try_start_12
    new-instance v22, Ljava/lang/StringBuffer;

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 682
    .local v22, "fileContent":Ljava/lang/StringBuffer;
    new-instance v55, Ljava/lang/StringBuffer;

    const-string v2, ""

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 685
    .local v55, "writeString":Ljava/lang/StringBuffer;
    move/from16 v0, v29

    mul-int/lit16 v2, v0, 0x400

    int-to-long v2, v2

    cmp-long v2, v24, v2

    if-lez v2, :cond_1c

    .line 687
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v26

    .line 689
    .local v26, "fis":Ljava/io/FileInputStream;
    :cond_1a
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->read()I

    move-result v43

    .local v43, "ouputByte":I
    const/16 v2, 0xa

    move/from16 v0, v43

    if-ne v0, v2, :cond_1a

    .line 693
    :goto_10
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->read()I

    move-result v43

    const/4 v2, -0x1

    move/from16 v0, v43

    if-eq v0, v2, :cond_1b

    .line 694
    move/from16 v0, v43

    int-to-char v2, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_10

    .line 697
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v43    # "ouputByte":I
    :catch_5
    move-exception v19

    .line 699
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_14
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 701
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_11
    move-object/from16 v55, v22

    .line 723
    :goto_12
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v27

    .line 725
    .restart local v27    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 726
    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 727
    .restart local v14    # "bText":[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 728
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 729
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0

    .line 730
    .end local v14    # "bText":[B
    .end local v27    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v19

    .line 733
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_16
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 674
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v22    # "fileContent":Ljava/lang/StringBuffer;
    .end local v55    # "writeString":Ljava/lang/StringBuffer;
    :catch_7
    move-exception v19

    .line 675
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_f

    .line 696
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v22    # "fileContent":Ljava/lang/StringBuffer;
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    .restart local v43    # "ouputByte":I
    .restart local v55    # "writeString":Ljava/lang/StringBuffer;
    :cond_1b
    :try_start_17
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_11

    .line 707
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v43    # "ouputByte":I
    :cond_1c
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v26

    .line 709
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    :goto_13
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->read()I

    move-result v43

    .restart local v43    # "ouputByte":I
    const/4 v2, -0x1

    move/from16 v0, v43

    if-eq v0, v2, :cond_1d

    .line 710
    move/from16 v0, v43

    int-to-char v2, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_13

    .line 713
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v43    # "ouputByte":I
    :catch_8
    move-exception v19

    .line 715
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_19
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 718
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_14
    move-object/from16 v55, v22

    goto :goto_12

    .line 712
    .restart local v26    # "fis":Ljava/io/FileInputStream;
    .restart local v43    # "ouputByte":I
    :cond_1d
    :try_start_1a
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_14

    .line 742
    .end local v21    # "file":Ljava/io/File;
    .end local v22    # "fileContent":Ljava/lang/StringBuffer;
    .end local v23    # "fileName":Ljava/lang/String;
    .end local v24    # "fileSize":J
    .end local v26    # "fis":Ljava/io/FileInputStream;
    .end local v29    # "inputFileSize":I
    .end local v42    # "now":Ljava/util/Date;
    .end local v43    # "ouputByte":I
    .end local v49    # "sText":Ljava/lang/StringBuffer;
    .end local v50    # "simpleformat":Ljava/text/SimpleDateFormat;
    .end local v52    # "time":Ljava/lang/String;
    .end local v55    # "writeString":Ljava/lang/StringBuffer;
    :pswitch_a
    :try_start_1b
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-result-object v34

    .line 743
    .restart local v34    # "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const/16 v31, 0x0

    .line 745
    .restart local v31    # "isRoaming":I
    if-eqz v34, :cond_1e

    .line 747
    :try_start_1c
    const-string v2, "isRoamingOOS"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-result v31

    .line 753
    :cond_1e
    :goto_15
    move/from16 v37, p3

    .line 754
    .local v37, "networkType":I
    :try_start_1d
    const-string v2, "true"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result v32

    .line 758
    .local v32, "isTeardownRequested":Z
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-result v18

    .line 763
    .local v18, "data_roaming":I
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v41

    .line 765
    .local v41, "ni":Landroid/net/NetworkInfo;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] data_roaming ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] isRoaming ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] data_restrict_mode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v5, ""

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-eqz v41, :cond_1f

    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] ni.isAvailable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v41 .. v41}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_20

    .line 777
    if-gtz v18, :cond_21

    .line 778
    const/16 v54, -0x3

    goto/16 :goto_0

    .line 759
    .end local v18    # "data_roaming":I
    .end local v41    # "ni":Landroid/net/NetworkInfo;
    :catch_9
    move-exception v51

    .line 761
    .restart local v51    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v54, -0x1

    goto/16 :goto_0

    .line 782
    .end local v51    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v18    # "data_roaming":I
    .restart local v41    # "ni":Landroid/net/NetworkInfo;
    :cond_20
    sget-object v2, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 783
    const/16 v54, -0x2

    goto/16 :goto_0

    .line 787
    :cond_21
    if-eqz v41, :cond_24

    .line 788
    invoke-virtual/range {v41 .. v41}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_22

    .line 789
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/16 v54, -0x1

    goto/16 :goto_0

    .line 793
    :cond_22
    invoke-virtual/range {v41 .. v41}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    if-nez v32, :cond_24

    .line 794
    invoke-virtual/range {v41 .. v41}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 795
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network already active"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v54, 0x0

    goto/16 :goto_0

    .line 799
    :cond_23
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network already connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v54, 0x1

    goto/16 :goto_0

    .line 804
    :cond_24
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network is not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/16 v54, -0x1

    goto/16 :goto_0

    .line 814
    .end local v18    # "data_roaming":I
    .end local v31    # "isRoaming":I
    .end local v32    # "isTeardownRequested":Z
    .end local v34    # "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    .end local v37    # "networkType":I
    .end local v41    # "ni":Landroid/net/NetworkInfo;
    :pswitch_b
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v34

    .line 815
    .restart local v34    # "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const/16 v31, 0x0

    .line 817
    .restart local v31    # "isRoaming":I
    if-eqz v34, :cond_25

    .line 819
    :try_start_20
    const-string v2, "isRoamingOOS"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->handleDataInterface(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    move-result v31

    .line 824
    :cond_25
    :goto_16
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_26

    .line 826
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isAllowRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA_U] <startUsingNetworkFeatureId()> Roaming : return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/16 v54, 0x2

    goto/16 :goto_0

    .line 835
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x14

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 840
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA_U] <startUsingNetworkFeatureId()> KOR : return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 841
    const/16 v54, 0x2

    goto/16 :goto_0

    .line 822
    :catch_a
    move-exception v2

    goto :goto_16

    .line 750
    :catch_b
    move-exception v2

    goto/16 :goto_15

    .line 535
    .end local v31    # "isRoaming":I
    .end local v34    # "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    .restart local v15    # "bc":Landroid/os/IBinder;
    .local v17, "cm":Landroid/net/IConnectivityManager;
    .restart local v28    # "ifacename":Ljava/lang/String;
    .restart local v38    # "network_b":Landroid/os/IBinder;
    .restart local v40    # "network_service":Landroid/os/INetworkManagementService;
    .restart local v45    # "props":Landroid/net/LinkProperties;
    .restart local v48    # "ret_value":Z
    :catch_c
    move-exception v2

    goto/16 :goto_c

    .line 377
    .end local v15    # "bc":Landroid/os/IBinder;
    .end local v17    # "cm":Landroid/net/IConnectivityManager;
    .end local v28    # "ifacename":Ljava/lang/String;
    .end local v38    # "network_b":Landroid/os/IBinder;
    .end local v40    # "network_service":Landroid/os/INetworkManagementService;
    .end local v45    # "props":Landroid/net/LinkProperties;
    .end local v48    # "ret_value":Z
    .restart local v31    # "isRoaming":I
    .restart local v34    # "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v2

    goto/16 :goto_5

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public SendBroadcastPdpRejectCause(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    .line 248
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA][PDP_reject] SendBroadcastPdpRejectCause, intent = android.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cause"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "intentLge":Landroid/content/Intent;
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public declared-synchronized functionForPacketDrop(Z)V
    .locals 12
    .param p1, "ok"    # Z

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    if-nez v9, :cond_1

    .line 169
    const-string v9, "[LGE_DATA][DCM] "

    const-string v10, "[LGE_DATA] return ~~~~ !!! not defined feature "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 174
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 175
    .local v0, "b":Landroid/os/IBinder;
    const-string v9, "connectivity"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 176
    .local v1, "bc":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 178
    .local v2, "cm":Landroid/net/IConnectivityManager;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 179
    .local v7, "service":Landroid/os/INetworkManagementService;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "networkOperator":Ljava/lang/String;
    const/4 v4, 0x0

    .line 181
    .local v4, "ifacename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "props":Landroid/net/LinkProperties;
    if-eqz v2, :cond_2

    if-nez v7, :cond_3

    .line 184
    :cond_2
    const-string v9, "[LGE_DATA][DCM] "

    const-string v10, " <functionForPacketDrop()> cm == null || service == null, so return!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "bc":Landroid/os/IBinder;
    .end local v2    # "cm":Landroid/net/IConnectivityManager;
    .end local v4    # "ifacename":Ljava/lang/String;
    .end local v5    # "networkOperator":Ljava/lang/String;
    .end local v6    # "props":Landroid/net/LinkProperties;
    .end local v7    # "service":Landroid/os/INetworkManagementService;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 189
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "bc":Landroid/os/IBinder;
    .restart local v2    # "cm":Landroid/net/IConnectivityManager;
    .restart local v4    # "ifacename":Ljava/lang/String;
    .restart local v5    # "networkOperator":Ljava/lang/String;
    .restart local v6    # "props":Landroid/net/LinkProperties;
    .restart local v7    # "service":Landroid/os/INetworkManagementService;
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v2, v9}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 190
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 196
    :goto_1
    :try_start_3
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> blockPacketMenuFlag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / blockPakcetProcessFlag :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / ok : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    if-nez v9, :cond_5

    .line 200
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_4

    .line 201
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :try_start_4
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 204
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    :cond_4
    :goto_2
    :try_start_5
    const-string v9, "[LGE_DATA][DCM] "

    const-string v10, " <functionForPacketDrop()> return!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 205
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 206
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 214
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz p1, :cond_8

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-nez v9, :cond_8

    .line 215
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    .line 217
    if-eqz v5, :cond_0

    const-string v9, "45005"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_7

    :cond_6
    const-string v9, "45008"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    .line 222
    :cond_7
    :try_start_6
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->dropPacket(Ljava/lang/String;)V

    .line 224
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> dropPacket_SKT  ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 225
    :catch_2
    move-exception v3

    .line 226
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.dropPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    if-nez p1, :cond_0

    .line 232
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 236
    :try_start_8
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 238
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 239
    :catch_3
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 192
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto/16 :goto_1
.end method

.method public isAllowRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 264
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
