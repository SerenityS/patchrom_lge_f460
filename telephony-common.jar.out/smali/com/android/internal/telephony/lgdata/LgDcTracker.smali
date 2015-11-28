.class public Lcom/android/internal/telephony/lgdata/LgDcTracker;
.super Landroid/os/Handler;
.source "LgDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/LgDcTracker$2;,
        Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;,
        Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;
    }
.end annotation


# static fields
.field public static final ACTION_GW_ROAMING_DATA_CONNECTION_LGU:Ljava/lang/String; = "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

.field public static final ACTION_LTE_ROAMING_DATA_CONNECTION_LGU:Ljava/lang/String; = "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

.field static final ApplyToprotectionVoiceInMobie:I = 0x1

.field public static final DATA_LTE_ROAMING:Ljava/lang/String; = "data_lte_roaming"

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][LGDCT] "

.field public static final sConnectionStatus:Ljava/lang/String; = "Connection_Status"

.field private static setTeardownRequested:[Z

.field private static voice_call_ing:Z


# instance fields
.field protected APN_ID_FOR_IMS:I

.field protected APN_ID_FOR_LTE_Roaming:I

.field public bConnectionStatus:Z

.field protected exist_ims_type_in_mpdn:Z

.field isGsm:Z

.field protected mConnMgr:Landroid/net/ConnectivityManager;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field final notificationId:I

.field private notification_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    .line 107
    const/16 v0, 0x12

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 12
    .param p1, "mmdct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 322
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->exist_ims_type_in_mpdn:Z

    .line 116
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->APN_ID_FOR_LTE_Roaming:I

    .line 126
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->APN_ID_FOR_IMS:I

    .line 134
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    .line 140
    const/16 v4, 0x9f6

    iput v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notificationId:I

    .line 143
    new-instance v4, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;-><init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1558
    new-instance v4, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    .line 324
    const-string v4, "[LGE_DATA][LGDCT] "

    const-string v7, "LgDcTracker() has created"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 326
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 328
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    if-eq v4, v11, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    const/4 v7, 0x6

    if-eq v4, v7, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    if-eq v4, v10, :cond_0

    .line 332
    const-string v4, "[LGE_DATA][LGDCT] "

    const-string v5, "other country do not use this function. so return."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-void

    .line 337
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v4, "lge.test.limit_data_usage"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v4, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v4, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v4, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v4, "com.skt.test_intent"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v4, "com.kt.CALL_PROTECTION_CALL_START"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v4, "com.kt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v4, "com.kt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v4, "com.lge.GprsAttachedIsTrue"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v4, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v4, "lge.android.telephony.dataflow"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v4, "ACTIVATE_SETUP_DATA_CALL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v4, "com.lge.callingsetmobile"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v7, 0x42001

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    const v7, 0x4280c

    invoke-virtual {v4, p0, v7, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    :cond_1
    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v7, 0x42004

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    const v7, 0x42008

    invoke-virtual {v4, p0, v7, v9}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    const v7, 0x42007

    invoke-virtual {v4, p0, v7, v9}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    :cond_2
    const v4, 0x42816

    invoke-virtual {p1, p0, v4, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDataConnectEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 379
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v7, 0x42021

    invoke-virtual {v4, p0, v7, v9}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v7, v1, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 382
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 386
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    if-ne v4, v5, :cond_3

    .line 387
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v7, 0x4280f

    invoke-interface {v4, p0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registorForPacketPaging(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "enable_call_protect_when_calling"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    const-string v4, "net.is_dropping_packet"

    const-string v7, "false"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 403
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 405
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v4, :cond_4

    .line 406
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 407
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    .line 414
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    if-ne v4, v5, :cond_5

    .line 415
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    .line 416
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v4, Landroid/app/Notification;->when:J

    .line 417
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 418
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v4, Landroid/app/Notification;->icon:I

    .line 419
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    .line 420
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-static {v7, v6, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 423
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x20d0355    # 1.036E-37f

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 424
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x20d0354    # 1.0359999E-37f

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 425
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    const/4 v7, 0x6

    if-ne v4, v7, :cond_6

    .line 428
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v5, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataEnabledSettingBootableSKT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    invoke-static {v5, v6, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 440
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 443
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 446
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "true"

    const-string v5, "persist.radio.isroaming"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 447
    const-string v4, "[LGE_DATA][LGDCT] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGEDataConnectionTracker]setNotification: put notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v4, 0x9f6

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 455
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->register(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 429
    .restart local v0    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    if-ne v4, v11, :cond_8

    .line 430
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupKT"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v8, "isRoaming"

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    move v4, v6

    goto :goto_2

    .line 432
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    if-ne v4, v10, :cond_9

    .line 433
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v5, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupLGT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 435
    :cond_9
    const-string v4, "[LGE_DATA][LGDCT] "

    const-string v5, "[LGEDataConnectionTracker] it\'s abnormal case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleLTEDataOnRoamingChange()V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1423
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1424
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 1426
    .local v2, "modemNetworkMode":I
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v1

    .line 1429
    .local v1, "curPreferMode":I
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeReponse: curPreferMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 1449
    :cond_0
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    if-eq v2, v1, :cond_1

    .line 1454
    const-string v3, "[LGE_DATA][LGDCT] "

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != curPreferMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: setPreferredNetworkMode set to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    .line 1467
    .end local v1    # "curPreferMode":I
    .end local v2    # "modemNetworkMode":I
    :cond_1
    :goto_0
    return-void

    .line 1463
    .restart local v1    # "curPreferMode":I
    .restart local v2    # "modemNetworkMode":I
    :cond_2
    const-string v3, "[LGE_DATA][LGDCT] "

    const-string v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleLTEDataOnRoamingChange()V
    .locals 4

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v0

    .line 1585
    .local v0, "enableDataLteRoaming":Z
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLTEDataOnRoamingChange(), enableDataLteRoaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApnForLteRoamingOfUplus(Z)V

    .line 1587
    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1472
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1473
    const-string v1, "[LGE_DATA][LGDCT] "

    const-string v2, "SetPreferredNetworkType is success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :goto_0
    return-void

    .line 1475
    :cond_0
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPreferredNetworkType is failed, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const v2, 0x42805

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1242
    const/4 v1, 0x1

    .line 1243
    .local v1, "retry":Z
    const-string v2, "persist.telephony.mpdn"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1244
    .local v0, "SUPPORT_MPDN":Z
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    const-string v2, "SinglePdnArbitration"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    :cond_0
    const/4 v1, 0x0

    .line 1248
    :cond_1
    return v1
.end method


# virtual methods
.method public changePreferrredNetworkMode(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    .prologue
    const v12, 0x42806

    const/4 v11, 0x1

    .line 1325
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v5, -0x1

    .line 1326
    .local v5, "newPreferMode":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v1

    .line 1327
    .local v1, "curPreferMode":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 1329
    .local v2, "curRadioTech":I
    const/4 v0, 0x0

    .line 1332
    .local v0, "Is_LWmode_selected":Z
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] enabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curPreferMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curRadioTech:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mobile_data"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1337
    .local v3, "dataNetwork":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "data_roaming"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1338
    .local v7, "roamingData":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lte_roaming"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1339
    .local v4, "lteRoaming":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v6

    .line 1341
    .local v6, "roaming":Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 1343
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[sehyun] dataNetwork = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", roamingData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lteRoaming = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    if-eqz v4, :cond_0

    if-nez v7, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 1417
    :cond_1
    :goto_0
    return-void

    .line 1348
    :cond_2
    if-eqz p1, :cond_4

    .line 1349
    sparse-switch v1, :sswitch_data_0

    .line 1399
    :cond_3
    :goto_1
    :sswitch_0
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] newPreferMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / curPreferMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    if-eq v5, v1, :cond_1

    .line 1403
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] change to newPreferMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    if-eqz v0, :cond_5

    .line 1408
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1353
    :sswitch_1
    const/16 v5, 0x9

    .line 1354
    goto :goto_1

    .line 1360
    :sswitch_2
    const/16 v5, 0xc

    .line 1361
    goto :goto_1

    .line 1368
    :cond_4
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 1372
    :sswitch_3
    const/4 v5, 0x3

    .line 1374
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Z

    if-eqz v8, :cond_3

    .line 1375
    const/4 v5, 0x0

    goto :goto_1

    .line 1383
    :sswitch_4
    const/4 v5, 0x2

    .line 1386
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    if-eqz v8, :cond_3

    .line 1388
    const/4 v0, 0x1

    .line 1389
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] Is_LWmode_selected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1413
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1414
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    goto/16 :goto_0

    .line 1349
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch

    .line 1368
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x9 -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1484
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1488
    const-string v0, "[LGE_DATA][LGDCT] "

    const-string v1, "other country do not use this function. so return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :goto_0
    return-void

    .line 1493
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    if-eqz v0, :cond_1

    .line 1494
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    if-eqz v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x3ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 1507
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregistorForPacketPaging(Landroid/os/Handler;)V

    .line 1511
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 1512
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1517
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->unregisterForDataConnectEvent(Landroid/os/Handler;)V

    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getLTEDataRoamingEnable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1551
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1552
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "data_lte_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1554
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1553
    :catch_0
    move-exception v1

    .line 1554
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    .prologue
    .line 1282
    const/4 v3, 0x0

    .line 1283
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    .line 1284
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    .line 1286
    .local v2, "isAnyEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1287
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1288
    const/4 v2, 0x1

    .line 1289
    sget-object v5, Lcom/android/internal/telephony/lgdata/LgDcTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1292
    :pswitch_0
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 1320
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    return-object v5

    .line 1296
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const/4 v3, 0x1

    .line 1297
    const/4 v4, 0x0

    .line 1298
    goto :goto_0

    .line 1301
    :pswitch_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1307
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    .line 1308
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1312
    :cond_2
    if-eqz v3, :cond_3

    .line 1313
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is CONNECTING"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1315
    :cond_3
    if-nez v4, :cond_4

    .line 1316
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1319
    :cond_4
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public handleCSProtection(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1194
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1195
    const-string v2, "[LGE_DATA][LGDCT] "

    const-string v3, "handleCSProtection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1198
    .local v0, "ModemInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1199
    const-string v2, "[LGE_DATA][LGDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSProtection ModemInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1202
    .local v1, "bEnabled":Z
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-eqz v2, :cond_0

    .line 1203
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v5, ""

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 1211
    .end local v0    # "ModemInfo":Ljava/lang/String;
    .end local v1    # "bEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 1203
    .restart local v0    # "ModemInfo":Ljava/lang/String;
    .restart local v1    # "bEnabled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1208
    .end local v0    # "ModemInfo":Ljava/lang/String;
    .end local v1    # "bEnabled":Z
    :cond_2
    const-string v2, "[LGE_DATA][LGDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSProtection, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 62
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 464
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "handleMessage msg="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v57, v0

    sparse-switch v57, :sswitch_data_0

    .line 1183
    :cond_0
    :goto_0
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "Unidentified event msg="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_1
    :goto_1
    return-void

    .line 468
    :sswitch_0
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_RADIO_AVAILABLE"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v57, "upgrade.mpdn.db"

    const/16 v58, 0x0

    invoke-static/range {v57 .. v58}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    if-eqz v57, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    if-nez v57, :cond_2

    .line 474
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "Netowrk mode change from gw to gwl when upgrade APN DB"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    const/16 v58, 0x9

    const/16 v59, 0x0

    invoke-virtual/range {v57 .. v59}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const/16 v58, 0x9

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    .line 478
    :cond_2
    const-string v57, "upgrade.mpdn.db"

    const-string v58, "false"

    invoke-static/range {v57 .. v58}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_1

    .line 483
    const-string v57, "net.Is_phone_booted"

    invoke-static/range {v57 .. v57}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    const-string v58, "true"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    .line 485
    .local v43, "mbooting_phone":Z
    if-eqz v43, :cond_1

    .line 486
    const-string v57, "ro.product.model"

    invoke-static/range {v57 .. v57}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 488
    .local v44, "model":Ljava/lang/String;
    const-string v57, "LG-F160S"

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_3

    const-string v57, "LG-F180S"

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_3

    const-string v57, "LG-F200S"

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_4

    .line 493
    :cond_3
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] NV model = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 496
    :cond_4
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] Non NV model = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v41

    .line 498
    .local v41, "mContext":Landroid/content/Context;
    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v57

    const-string v58, "multi_rab_setting"

    const/16 v59, 0x1

    invoke-static/range {v57 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    .line 502
    .local v20, "bEnabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    if-eqz v57, :cond_7

    .line 503
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] bEnabled = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v58, v0

    sget-object v59, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v60, ""

    if-eqz v20, :cond_6

    const/16 v57, 0x1

    :goto_3
    move-object/from16 v0, v58

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 498
    .end local v20    # "bEnabled":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    .line 504
    .restart local v20    # "bEnabled":Z
    :cond_6
    const/16 v57, 0x0

    goto :goto_3

    .line 507
    :cond_7
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA]dataMgr Null"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 517
    .end local v20    # "bEnabled":Z
    .end local v41    # "mContext":Landroid/content/Context;
    .end local v43    # "mbooting_phone":Z
    .end local v44    # "model":Ljava/lang/String;
    :sswitch_1
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_RADIO_REGISTERED_TO_NETWORK"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v58, v0

    const-string v58, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 527
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/os/AsyncResult;

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onLockStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 533
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v41

    .line 535
    .restart local v41    # "mContext":Landroid/content/Context;
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_PACKET_PAGING_RECEIVED"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "Packet Paing Drop"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 543
    .end local v41    # "mContext":Landroid/content/Context;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 545
    .local v19, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v49

    .line 547
    .local v49, "p":Landroid/net/LinkProperties;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/ArrayList;

    move-object/from16 v24, v57

    check-cast v24, Ljava/util/ArrayList;

    .line 549
    .local v24, "dataCallStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "EVENT_DATA_STATE_CHANGED = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v57, v0

    if-eqz v57, :cond_8

    .line 553
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "onDataStateChanged(ar): exception; likely radio not available, ignore"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 557
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v57, v0

    const-string v58, "default"

    invoke-virtual/range {v57 .. v58}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 560
    .local v10, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v10, :cond_9

    .line 561
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v57

    sget-object v58, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    if-ne v0, v1, :cond_9

    .line 562
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA_STATE]Default is connected"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_9
    const/16 v37, 0x0

    .line 568
    .local v37, "isAnyDataCallDormant":Z
    const/16 v36, 0x0

    .line 571
    .local v36, "isAnyDataCallActive":Z
    if-eqz v49, :cond_c

    if-eqz v24, :cond_c

    .line 573
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 574
    .local v46, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "newState = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "iface = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v49 .. v49}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v49 .. v49}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_a

    .line 576
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_b

    const/16 v36, 0x1

    .line 577
    :cond_b
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_a

    const/16 v37, 0x1

    goto :goto_4

    .line 585
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v46    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_c
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isAnyDataCallActive = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "  isAnyDataCallDormant = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-nez v36, :cond_1

    if-eqz v37, :cond_1

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_1

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const-string v58, "activity"

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 594
    .local v9, "am":Landroid/app/ActivityManager;
    const/16 v57, 0x1

    move/from16 v0, v57

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v52

    .line 595
    .local v52, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v52, :cond_1

    .line 598
    const/16 v57, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v55, v0

    .line 599
    .local v55, "topActivity":Landroid/content/ComponentName;
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v45

    .line 600
    .local v45, "name":Ljava/lang/String;
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v56

    .line 601
    .local v56, "topclassname":Ljava/lang/String;
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "topActivity.getPackageName(); = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "topActivity.getClassName(); = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "VOICE CALL\t::"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    sget-boolean v59, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v57, "com.android.incallui.InCallActivity"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_1

    sget-boolean v57, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    if-eqz v57, :cond_1

    .line 607
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "(InCallScreen) topActivity.getClassName(); = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v59, ""

    const/16 v60, 0x0

    invoke-virtual/range {v57 .. v60}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v57

    if-nez v57, :cond_1

    .line 611
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v57

    const/16 v58, 0x6

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_1

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    const/16 v58, 0x1

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 614
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "functionForPacketDrop is called"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 623
    .end local v9    # "am":Landroid/app/ActivityManager;
    .end local v10    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "dataCallStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    .end local v36    # "isAnyDataCallActive":Z
    .end local v37    # "isAnyDataCallDormant":Z
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "p":Landroid/net/LinkProperties;
    .end local v52    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v55    # "topActivity":Landroid/content/ComponentName;
    .end local v56    # "topclassname":Ljava/lang/String;
    :sswitch_5
    const/16 v57, 0x1

    sput-boolean v57, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    goto/16 :goto_1

    .line 629
    :sswitch_6
    const/16 v57, 0x0

    sput-boolean v57, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    .line 631
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_1

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/telephony/ServiceState;->getState()I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_d

    .line 635
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] functionForResetDrop for STATE_OUT_OF_SERVICE"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 640
    :cond_d
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] functionForPacketDrop for ACTION_VOICE_CALL_ENDED"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 649
    :sswitch_7
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY complete : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v57

    sget-object v58, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    if-ne v0, v1, :cond_1

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v58, v0

    const-string v58, "Added_APN_failed"

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 659
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v57, v0

    if-eqz v57, :cond_e

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_1

    .line 661
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v57, v0

    if-eqz v57, :cond_f

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/lang/String;

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 664
    :cond_f
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 671
    :sswitch_9
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_DATA_ERROR_FAIL_CAUSE"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->pdpreject_causecode(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 677
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleCSProtection(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 681
    :sswitch_b
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_ICC_CHANGED"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->updateIccAvailability()V

    goto/16 :goto_1

    .line 686
    :sswitch_c
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "EVENT_RECORDS_LOADED"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_1

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setApnID()V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v58, v0

    const-string v58, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 699
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 703
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 707
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/AsyncResult;

    .line 708
    .local v47, "new_ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;

    move-object/from16 v42, v57

    check-cast v42, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;

    .line 710
    .local v42, "mLgDataMsg":Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;
    if-eqz v42, :cond_1

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->valid:Z

    move/from16 v57, v0

    if-eqz v57, :cond_1

    .line 712
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] EVENT_FAKE_DATACONNECTION_EVENT  valid : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->what:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->what:I

    move/from16 v57, v0

    sparse-switch v57, :sswitch_data_1

    goto/16 :goto_0

    .line 825
    :sswitch_10
    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->success:Z

    move/from16 v40, v0

    .line 826
    .local v40, "issucess":Z
    move-object/from16 v0, v42

    iget-object v15, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->type:Ljava/lang/String;

    .line 828
    .local v15, "apnType":Ljava/lang/String;
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] apnType = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " valid ="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->valid:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/16 v17, 0x0

    .line 831
    .local v17, "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] EVENT_DATA_SETUP_COMPLETE apnType = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 835
    .restart local v10    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v10, :cond_15

    .line 836
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] EVENT_DATA_SETUP_COMPLETE apnContext is NULL!"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 717
    .end local v10    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v15    # "apnType":Ljava/lang/String;
    .end local v17    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v40    # "issucess":Z
    :sswitch_11
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->apntype_n:I

    move/from16 v18, v0

    .line 718
    .local v18, "apntype":I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->enable:I

    move/from16 v29, v0

    .line 720
    .local v29, "enable":I
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] EVENT_ENABLE_NEW_APN type =  "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " enable = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v57, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 723
    .local v13, "apnContext_new":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/16 v57, 0x1

    move/from16 v0, v29

    move/from16 v1, v57

    if-ne v0, v1, :cond_10

    .line 725
    sget-object v57, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    const/16 v58, 0x0

    aput-boolean v58, v57, v18

    goto/16 :goto_0

    .line 730
    :cond_10
    sget-object v57, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    const/16 v58, 0x1

    aput-boolean v58, v57, v18

    goto/16 :goto_0

    .line 735
    .end local v13    # "apnContext_new":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v18    # "apntype":I
    .end local v29    # "enable":I
    :sswitch_12
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] EVENT_TRY_SETUP_DATA = "

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->reason:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 737
    .local v50, "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 744
    .end local v50    # "reason":Ljava/lang/String;
    :sswitch_13
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] EVENT_ROAMING_OFF = "

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v57, "true"

    const-string v58, "persist.radio.isroaming"

    invoke-static/range {v58 .. v58}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_0

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const-string v58, "notification"

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/NotificationManager;

    .line 750
    .local v48, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const v58, 0x20d0355    # 1.036E-37f

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .line 751
    .local v27, "details":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const v58, 0x20d0354    # 1.0359999E-37f

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v53

    .line 752
    .local v53, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v57, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v57

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v58, v0

    const-string v59, "isRoaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    const/16 v60, 0x1

    move/from16 v0, v57

    move/from16 v1, v60

    if-ne v0, v1, :cond_11

    const/16 v57, 0x1

    :goto_5
    move-object/from16 v0, v58

    move-object/from16 v1, v59

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    invoke-static/range {v58 .. v61}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v59, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v53

    move-object/from16 v3, v27

    move-object/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v57

    const-string v58, "mobile_data"

    const/16 v59, 0x1

    invoke-static/range {v57 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 761
    .local v25, "dataNetwork":I
    const/16 v57, 0x1

    move/from16 v0, v25

    move/from16 v1, v57

    if-ne v0, v1, :cond_12

    .line 762
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[EVENT_ROAMING_OFF] clean Notification"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v57, 0x9f6

    move-object/from16 v0, v48

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 754
    .end local v25    # "dataNetwork":I
    :cond_11
    const/16 v57, 0x0

    goto/16 :goto_5

    .line 765
    .restart local v25    # "dataNetwork":I
    :cond_12
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[EVENT_ROAMING_OFF] put notification"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v57, 0x9f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v58, v0

    move-object/from16 v0, v48

    move/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 773
    .end local v25    # "dataNetwork":I
    .end local v27    # "details":Ljava/lang/CharSequence;
    .end local v48    # "notificationManager":Landroid/app/NotificationManager;
    .end local v53    # "title":Ljava/lang/CharSequence;
    :sswitch_14
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] EVENT_ROAMING_ON = "

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v38

    .line 776
    .local v38, "isRoaming":Z
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "onRoamingOn: setup data on roaming"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v38, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    move/from16 v57, v0

    if-eqz v57, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_13

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    if-eqz v57, :cond_13

    .line 781
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "onRoamingOn: sendModemProfile"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v57

    if-nez v57, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v57

    const/16 v58, 0x9

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_13

    .line 787
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "Roaming Disable and mode=NT_MODE_WCDMA_PREF"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const v59, 0x42806

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v59

    invoke-virtual/range {v57 .. v59}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v57

    const-string v58, "preferred_network_mode"

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 798
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    if-eqz v57, :cond_14

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_14

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const-string v58, "notification"

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/NotificationManager;

    .line 801
    .restart local v48    # "notificationManager":Landroid/app/NotificationManager;
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[EVENT_ROAMING_ON]this case is on roaming, so clean Notification"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/16 v57, 0x9f6

    move-object/from16 v0, v48

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 808
    .end local v48    # "notificationManager":Landroid/app/NotificationManager;
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_0

    if-eqz v38, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    move/from16 v57, v0

    if-eqz v57, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v26

    .line 812
    .local v26, "data_roaming":Z
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] KT LTE roaming = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " data roaming = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "supprot ModeChange For POAB"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->changePreferrredNetworkMode(Z)V

    goto/16 :goto_0

    .line 841
    .end local v26    # "data_roaming":Z
    .end local v38    # "isRoaming":Z
    .restart local v10    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v15    # "apnType":Ljava/lang/String;
    .restart local v17    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v40    # "issucess":Z
    :cond_15
    if-eqz v10, :cond_16

    .line 842
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v17

    .end local v17    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 844
    .restart local v17    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_16
    if-eqz v40, :cond_24

    .line 847
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    move/from16 v57, v0

    if-eqz v57, :cond_17

    .line 849
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    move/from16 v57, v0

    if-eqz v57, :cond_17

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v58, v0

    const/16 v58, 0x3ef

    const/16 v59, 0x0

    invoke-virtual/range {v57 .. v59}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 857
    :cond_17
    const-string v14, ""

    .line 858
    .local v14, "apnStr":Ljava/lang/String;
    if-eqz v17, :cond_18

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 861
    :cond_18
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] onDataSetupComplete: success apn name="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    move/from16 v57, v0

    if-eqz v57, :cond_1d

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "ims"

    invoke-static/range {v57 .. v58}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_1d

    .line 866
    const/16 v31, 0x0

    .line 868
    .local v31, "found_ims_pcscf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    if-eqz v57, :cond_1a

    .line 869
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v32

    move/from16 v1, v57

    if-ge v0, v1, :cond_1a

    const/16 v57, 0x2

    move/from16 v0, v32

    move/from16 v1, v57

    if-ge v0, v1, :cond_1a

    .line 870
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA][pcscf]4-2 getPcscfAddress"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "["

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v59, v0

    sget-object v60, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v60 .. v60}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v59

    aget-object v59, v59, v32

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "]"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    aget-object v57, v57, v32

    if-eqz v57, :cond_19

    .line 874
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA][pcscf] set v4 property["

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "]"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "net.pcscf"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    sget-object v59, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v59 .. v59}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v58

    aget-object v58, v58, v32

    invoke-static/range {v57 .. v58}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    or-int/lit8 v31, v31, 0x1

    .line 869
    :cond_19
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_6

    .line 882
    .end local v32    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    if-eqz v57, :cond_1c

    .line 883
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v32

    move/from16 v1, v57

    if-ge v0, v1, :cond_1c

    const/16 v57, 0x2

    move/from16 v0, v32

    move/from16 v1, v57

    if-ge v0, v1, :cond_1c

    .line 884
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA][pcscf]6-2 getPcscfAddress"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "["

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v59, v0

    sget-object v60, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v60 .. v60}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v59

    aget-object v59, v59, v32

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "]"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    sget-object v58, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    aget-object v57, v57, v32

    if-eqz v57, :cond_1b

    .line 888
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA][pcscf] set v6 property["

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "]"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "net.pcscf"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    sget-object v59, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual/range {v59 .. v59}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v58

    aget-object v58, v58, v32

    invoke-static/range {v57 .. v58}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    or-int/lit8 v31, v31, 0x1

    .line 883
    :cond_1b
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_7

    .line 895
    .end local v32    # "i":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const-string v58, "ims"

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v34

    .line 898
    .local v34, "imsLp":Landroid/net/LinkProperties;
    if-eqz v34, :cond_22

    .line 899
    :try_start_0
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] found_ims_pcscf = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "  dns = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v34 .. v34}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_8
    if-eqz v34, :cond_1d

    invoke-virtual/range {v34 .. v34}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->size()I

    move-result v57

    if-nez v57, :cond_1d

    if-nez v31, :cond_1d

    .line 907
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] cleanUpConnection ims pdn "

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v57, v0

    const-string v58, "ims"

    invoke-virtual/range {v57 .. v58}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 909
    .local v5, "ImsApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const/16 v58, 0x1

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .end local v5    # "ImsApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v31    # "found_ims_pcscf":I
    .end local v34    # "imsLp":Landroid/net/LinkProperties;
    :cond_1d
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_20

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "ims"

    invoke-static/range {v57 .. v58}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v57

    const-string v58, "mobile_data"

    const/16 v59, 0x1

    invoke-static/range {v57 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_20

    .line 922
    const/4 v8, 0x0

    .line 924
    .local v8, "alarmIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v57, v0

    const-string v58, "default"

    invoke-virtual/range {v57 .. v58}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 927
    .local v11, "apnContext_default":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v11, :cond_1e

    .line 928
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 931
    :cond_1e
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[onDataSetupComplete] : alarmIntent  :"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "  default  :"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-eqz v8, :cond_1f

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v57

    sget-object v58, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    if-eq v0, v1, :cond_1f

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    move-object/from16 v57, v0

    if-eqz v57, :cond_1f

    .line 938
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "onDataSetupComplete: cancel alarmIntent  :"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "\tdefault  :"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 941
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "onDataSetupComplete: fast reconnect Default with Intent "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    move-object/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 945
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    .line 951
    .end local v8    # "alarmIntent":Landroid/app/PendingIntent;
    .end local v11    # "apnContext_default":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    move/from16 v57, v0

    if-eqz v57, :cond_21

    .line 952
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "default"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_21

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    .line 954
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] Default PDN Connected, internetPDNconnected = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    move/from16 v57, v0

    if-eqz v57, :cond_0

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    if-eqz v57, :cond_0

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "default"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    .line 963
    .local v6, "aRadioTech":I
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v57

    if-eqz v57, :cond_23

    .line 967
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] send intent LTE_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " , RadioTechnology="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v35, Landroid/content/Intent;

    const-string v57, "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v35, "intentForRoaming":Landroid/content/Intent;
    const-string v57, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v58, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 902
    .end local v6    # "aRadioTech":I
    .end local v35    # "intentForRoaming":Landroid/content/Intent;
    .restart local v31    # "found_ims_pcscf":I
    .restart local v34    # "imsLp":Landroid/net/LinkProperties;
    :cond_22
    :try_start_1
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[LGE_DATA] Ims LinkProperties is null"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 911
    :catch_0
    move-exception v28

    .line 912
    .local v28, "e":Ljava/lang/Exception;
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "handleMessage : Exception has been occurred."

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 973
    .end local v28    # "e":Ljava/lang/Exception;
    .end local v31    # "found_ims_pcscf":I
    .end local v34    # "imsLp":Landroid/net/LinkProperties;
    .restart local v6    # "aRadioTech":I
    :cond_23
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] send intent GW_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " , RadioTechnology="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance v35, Landroid/content/Intent;

    const-string v57, "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .restart local v35    # "intentForRoaming":Landroid/content/Intent;
    const-string v57, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v58, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a

    .line 989
    .end local v6    # "aRadioTech":I
    .end local v14    # "apnStr":Ljava/lang/String;
    .end local v35    # "intentForRoaming":Landroid/content/Intent;
    :cond_24
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_25

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v57

    const/16 v58, 0x6

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_25

    .line 991
    const v57, 0x4280b

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->hasMessages(I)Z

    move-result v57

    if-eqz v57, :cond_25

    .line 993
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[onDataSetupComplete] : Remove EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const v57, 0x4280b

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->removeMessages(I)V

    .line 999
    :cond_25
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Z

    move/from16 v57, v0

    if-eqz v57, :cond_27

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v57, v0

    const v58, 0x42808

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v58

    invoke-interface/range {v57 .. v58}, Lcom/android/internal/telephony/CommandsInterface;->getLastPdpFailCause(Landroid/os/Message;)V

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    move/from16 v57, v0

    if-eqz v57, :cond_27

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v39

    .line 1004
    .local v39, "isRoamingValue":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v57

    const-string v58, "airplane_mode_on"

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1006
    .local v7, "airplaneMode":I
    sget-object v21, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1007
    .local v21, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/16 v22, 0x0

    .line 1009
    .local v22, "causeValue":Ljava/lang/String;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->cause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v57, v0

    if-eqz v57, :cond_26

    .line 1010
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->cause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v21, v0

    .line 1011
    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ") "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1014
    :cond_26
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "causeValue "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    if-eqz v10, :cond_27

    if-eqz v21, :cond_27

    sget-object v57, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_27

    .line 1016
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    const-string v58, "ims"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_2a

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    move-result v57

    if-eqz v57, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v57

    const/16 v58, 0x5

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_2a

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v58, v0

    const/16 v58, 0x3f0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v59

    invoke-virtual/range {v57 .. v59}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const-string v58, "connectivity"

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    .line 1025
    .local v23, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v58

    const v59, 0x20d0348

    invoke-virtual/range {v58 .. v59}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x1

    invoke-static/range {v57 .. v59}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v54

    .line 1026
    .local v54, "toast":Landroid/widget/Toast;
    const/16 v57, 0x50

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1027
    invoke-virtual/range {v54 .. v54}, Landroid/widget/Toast;->show()V

    .line 1042
    .end local v7    # "airplaneMode":I
    .end local v21    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v22    # "causeValue":Ljava/lang/String;
    .end local v23    # "cm":Landroid/net/ConnectivityManager;
    .end local v39    # "isRoamingValue":Z
    .end local v54    # "toast":Landroid/widget/Toast;
    :cond_27
    :goto_b
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_28

    .line 1044
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v57

    const/16 v58, 0x6

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_28

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v58, v0

    const-string v58, "Added_APN_failed"

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->APN_FAIL_Flag:Z

    .line 1053
    :cond_28
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    move/from16 v57, v0

    if-eqz v57, :cond_0

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    if-eqz v57, :cond_0

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "default"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    .line 1056
    .restart local v6    # "aRadioTech":I
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    .line 1060
    const/16 v57, 0x2

    move/from16 v0, v57

    if-eq v6, v0, :cond_29

    const/16 v57, 0x1

    move/from16 v0, v57

    if-ne v6, v0, :cond_0

    .line 1062
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v57

    if-eqz v57, :cond_2b

    .line 1063
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] send intent LTE_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " , RadioTechnology="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance v35, Landroid/content/Intent;

    const-string v57, "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .restart local v35    # "intentForRoaming":Landroid/content/Intent;
    const-string v57, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v58, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1075
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1028
    .end local v6    # "aRadioTech":I
    .end local v35    # "intentForRoaming":Landroid/content/Intent;
    .restart local v7    # "airplaneMode":I
    .restart local v21    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .restart local v22    # "causeValue":Ljava/lang/String;
    .restart local v39    # "isRoamingValue":Z
    :cond_2a
    if-eqz v39, :cond_27

    const/16 v57, 0x1

    move/from16 v0, v57

    if-eq v7, v0, :cond_27

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_27

    .line 1030
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v57

    if-eqz v57, :cond_27

    .line 1031
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[MIN]setNorification!!"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v58, v0

    const/16 v58, 0x3f0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v59

    invoke-virtual/range {v57 .. v59}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    goto/16 :goto_b

    .line 1069
    .end local v7    # "airplaneMode":I
    .end local v21    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v22    # "causeValue":Ljava/lang/String;
    .end local v39    # "isRoamingValue":Z
    .restart local v6    # "aRadioTech":I
    :cond_2b
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] send intent GW_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " , RadioTechnology="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v35, Landroid/content/Intent;

    const-string v57, "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .restart local v35    # "intentForRoaming":Landroid/content/Intent;
    const-string v57, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v58, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_c

    .line 1084
    .end local v6    # "aRadioTech":I
    .end local v10    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v15    # "apnType":Ljava/lang/String;
    .end local v17    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v35    # "intentForRoaming":Landroid/content/Intent;
    .end local v40    # "issucess":Z
    :sswitch_15
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1085
    .local v16, "apnType_done":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1088
    .local v12, "apnContext_done":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v12, :cond_0

    .line 1090
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] EVENT_DISCONNECT_DONE = type : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_2c

    .line 1095
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "default"

    invoke-static/range {v57 .. v58}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_2c

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 1102
    :cond_2c
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    move/from16 v57, v0

    if-eqz v57, :cond_0

    .line 1103
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v57

    const-string v58, "default"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    .line 1105
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] Default PDN Disonnected, internetPDNconnected = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1127
    .end local v12    # "apnContext_done":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v16    # "apnType_done":Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v57

    const-string v58, "mobile_data"

    const/16 v59, 0x1

    invoke-static/range {v57 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_2f

    const/16 v30, 0x1

    .line 1128
    .local v30, "enabled":Z
    :goto_d
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] CMD_SET_USER_DATA_ENABLE = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_2d

    .line 1132
    if-nez v30, :cond_2d

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v57 .. v58}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 1137
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v51

    .line 1138
    .local v51, "roaming":Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v57, v0

    if-eqz v57, :cond_2e

    if-eqz v51, :cond_2e

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    move/from16 v57, v0

    if-eqz v57, :cond_2e

    .line 1141
    const-string v57, "[LGE_DATA][LGDCT] "

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "[LGE_DATA] taegyu KT LTE Roaming roaming = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "supprot ModeChange For POAB"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->changePreferrredNetworkMode(Z)V

    .line 1147
    :cond_2e
    const-string v57, "true"

    const-string v58, "persist.radio.isroaming"

    invoke-static/range {v58 .. v58}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v57

    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    move/from16 v57, v0

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const-string v58, "notification"

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/NotificationManager;

    .line 1150
    .restart local v48    # "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const v58, 0x20d0355    # 1.036E-37f

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .line 1151
    .restart local v27    # "details":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v57

    const v58, 0x20d0354    # 1.0359999E-37f

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v53

    .line 1152
    .restart local v53    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v57, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v57

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v58, v0

    const-string v59, "isRoaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    const/16 v60, 0x1

    move/from16 v0, v57

    move/from16 v1, v60

    if-ne v0, v1, :cond_30

    const/16 v57, 0x1

    :goto_e
    move-object/from16 v0, v58

    move-object/from16 v1, v59

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    invoke-static/range {v58 .. v61}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v59, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v53

    move-object/from16 v3, v27

    move-object/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1159
    if-eqz v30, :cond_31

    .line 1160
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[CMD_SET_USER_DATA_ENABLE]clean Notification"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/16 v57, 0x9f6

    move-object/from16 v0, v48

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1127
    .end local v27    # "details":Ljava/lang/CharSequence;
    .end local v30    # "enabled":Z
    .end local v48    # "notificationManager":Landroid/app/NotificationManager;
    .end local v51    # "roaming":Z
    .end local v53    # "title":Ljava/lang/CharSequence;
    :cond_2f
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 1154
    .restart local v27    # "details":Ljava/lang/CharSequence;
    .restart local v30    # "enabled":Z
    .restart local v48    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v51    # "roaming":Z
    .restart local v53    # "title":Ljava/lang/CharSequence;
    :cond_30
    const/16 v57, 0x0

    goto :goto_e

    .line 1163
    :cond_31
    const-string v57, "[LGE_DATA][LGDCT] "

    const-string v58, "[CMD_SET_USER_DATA_ENABLE]setNotification: put notification"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/16 v57, 0x9f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v58, v0

    move-object/from16 v0, v48

    move/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x42001 -> :sswitch_0
        0x42002 -> :sswitch_c
        0x42004 -> :sswitch_4
        0x42007 -> :sswitch_5
        0x42008 -> :sswitch_6
        0x42021 -> :sswitch_b
        0x42805 -> :sswitch_d
        0x42806 -> :sswitch_e
        0x42808 -> :sswitch_9
        0x4280a -> :sswitch_a
        0x4280b -> :sswitch_7
        0x4280c -> :sswitch_1
        0x4280d -> :sswitch_2
        0x4280f -> :sswitch_3
        0x42816 -> :sswitch_f
        0x42817 -> :sswitch_8
    .end sparse-switch

    .line 714
    :sswitch_data_1
    .sparse-switch
        0x42000 -> :sswitch_10
        0x42003 -> :sswitch_12
        0x4200b -> :sswitch_14
        0x4200c -> :sswitch_13
        0x4200d -> :sswitch_11
        0x4200f -> :sswitch_15
        0x4201e -> :sswitch_16
    .end sparse-switch
.end method

.method public isLTEDataRoamingAvailable()Z
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x0

    return v0
.end method

.method protected pdpreject_causecode(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x0

    .line 1216
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1217
    .local v4, "mContext":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1219
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v5, 0x0

    .line 1220
    .local v5, "rawPdpRejectCuase":I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1221
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v5, v6, v8

    .line 1224
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v3

    .line 1225
    .local v3, "isRoaming":Z
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1226
    .local v0, "airplaneMode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    .local v2, "causeValue":Ljava/lang/String;
    const-string v6, "[LGE_DATA][LGDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######## EVENT_DATA_ERROR_FAIL_CAUSE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->debugFileWrite:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 1232
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    if-eqz v6, :cond_1

    .line 1233
    const-string v6, "[LGE_DATA][LGDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE_DATA][PDP_reject] EVENT_DATA_ERROR_FAIL_CAUSE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/DataConnectionManager;->SendBroadcastPdpRejectCause(I)V

    .line 1238
    :cond_1
    return-void
.end method

.method public setApnID()V
    .locals 26

    .prologue
    .line 1594
    const-string v1, "[LGE_DATA][LGDCT] "

    const-string v2, "set APN ID start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 1596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 1597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 1599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1600
    .local v25, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 1601
    .local v24, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v24, :cond_1

    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1605
    .local v4, "selection":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and carrier_enabled = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1610
    .local v23, "cursor":Landroid/database/Cursor;
    if-eqz v23, :cond_1

    .line 1611
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1612
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1614
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v1, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "12345"

    const-string v8, "Name"

    const-string v1, "apn"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    const-string v20, ""

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-direct/range {v5 .. v22}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1620
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->findAllOperatorApnID(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    iget v1, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->APN_ID_FOR_LTE_Roaming:I

    .line 1625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    iget v1, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->APN_ID_FOR_IMS:I

    .line 1627
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1632
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v23    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 1600
    .end local v24    # "operator":Ljava/lang/String;
    :cond_2
    const-string v24, ""

    goto/16 :goto_0
.end method

.method public setLTEDataRoamingEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1543
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLTEDataRoamingEnable, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1545
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "data_lte_roaming"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1547
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 1545
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLTEDataRoamingEnableNotApplyObserver(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1528
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLTEDataRoamingEnableNotApplyObserver, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    .line 1531
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1532
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "data_lte_roaming"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1534
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 1535
    return-void

    .line 1532
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1255
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const-string v2, "[LGE_DATA][LGDCT] "

    const-string v3, "updateIccAvailability 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1261
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1264
    const-string v2, "[LGE_DATA][LGDCT] "

    const-string v3, "updateIccAvailability 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1266
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_0

    .line 1267
    if-eqz v1, :cond_2

    .line 1268
    const-string v2, "[LGE_DATA][LGDCT] "

    const-string v3, "Removing stale icc objects."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1270
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1272
    :cond_2
    if-eqz v0, :cond_0

    .line 1273
    const-string v2, "[LGE_DATA][LGDCT] "

    const-string v3, "New records found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1275
    const v2, 0x42002

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
