.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;,
        Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;,
        Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;,
        Lcom/android/internal/telephony/InboundSmsHandler$Segment;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field static final ADDRESS_COLUMN:I = 0x6

.field protected static final APP_DIRECTED_SMS_FORMATTED:I = 0x0

.field protected static final APP_DIRECTED_SMS_NORMAL:I = -0x1

.field protected static final APP_DIRECTED_SMS_PROCESSED:I = 0x1

.field protected static final APP_DIRECTED_SMS_VZWLBSROVER:I = -0x2

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field private static final DUPLICATE_PROJECTION:[Ljava/lang/String;

.field public static final EMS_EXPIRATION_TIME:I = 0x493e0

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field protected static final EVNET_DAN_SMS_COMPLETE:I = 0x8

.field static final ID_COLUMN:I = 0x7

.field static final INCOMPLETE_SELECT:Ljava/lang/String; = "reference_number=? AND time=?"

.field static final KEYWORD_MOBILEBOX_PRO:Ljava/lang/String; = "Mobilbox Pro"

.field private static final KIZON_PACKAGE:Ljava/lang/String; = "com.lge.band"

.field private static final KIZON_PREFIX:Ljava/lang/String; = "^KizON.*\\[[0-9a-zA-Z+/=]{6}\\]"

.field private static final KTLBS_SPECIALNUMBER_STRING:Ljava/lang/String; = "##30"

.field private static final MCAFEE_PACKAGE:Ljava/lang/String; = "com.wsandroid.suite.lge"

.field private static final MCAFEE_PREFIX:Ljava/lang/String; = "service.wsandroid.lge.token"

.field private static final MEM_THRESHOLD:I = 0x2000

.field public static final MISSING_CONCAT_CHAR:Ljava/lang/String; = "(...)"

.field private static final MOBILEBOX_PRO_SERVER:Ljava/lang/String; = "3311"

.field private static final NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field public static RECEIVE_DAN_SUCCESS:Z = false

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final SMS_INBOX_CONSTRAINT:Ljava/lang/String; = "(type = 1)"

.field private static final SMS_INBOX_MAX_COUNT:I = 0x32

.field private static final SPTS_ADDRESS:Ljava/lang/String; = "00000000000"

.field public static final STITCHING_WAIT_TIME:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "Mms Testbed"

.field private static final VDBG:Z = false

.field private static final VVMApp:Ljava/lang/String; = "com.coremobility.app.vnotes"

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static excutedSegmentExpirationAfterBootUp:Z = false

.field protected static final mRawUri:Landroid/net/Uri;

.field private static final prefixVZW:Ljava/lang/String; = "//VZW"

.field private static final sRawUri:Landroid/net/Uri;

.field private static segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public final APPLICATION_PERMISSION:Ljava/lang/String;

.field public final METADATA_NAME:Ljava/lang/String;

.field private SIGNATURES:[Landroid/content/pm/Signature;

.field private VZWSignature:[Landroid/content/pm/Signature;

.field protected lgu:Lcom/lge/telephony/LGUSmsUtils;

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mResolver:Landroid/content/ContentResolver;

.field protected final mSegmentUri:Landroid/net/Uri;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field protected m_bMessageReassembly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    .line 158
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 163
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 171
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    const-string v1, "icc_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    .line 183
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    const-string v1, "icc_index"

    aput-object v1, v0, v5

    const-string v1, "time"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date_sent"

    aput-object v1, v0, v4

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->DUPLICATE_PROJECTION:[Ljava/lang/String;

    .line 261
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 292
    sput-boolean v2, Lcom/android/internal/telephony/InboundSmsHandler;->RECEIVE_DAN_SUCCESS:Z

    .line 316
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.provider.Telephony.VOICE_RECEIVED"

    aput-object v1, v0, v2

    const-string v1, "android.provider.Telephony.VIDEO_RECEIVED"

    aput-object v1, v0, v3

    const-string v1, "android.provider.Telephony.CALLBACKURL_SKT_RECEIVED"

    aput-object v1, v0, v4

    const-string v1, "android.provider.Telephony.CALLBACKURL_KT_RECEIVED"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

    .line 2997
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3029
    sput-boolean v2, Lcom/android/internal/telephony/InboundSmsHandler;->excutedSegmentExpirationAfterBootUp:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 357
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 276
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 279
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 282
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 285
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 305
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "segment"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    .line 306
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->m_bMessageReassembly:Z

    .line 308
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1878
    const-string v4, "com.verizon.permissions.appdirectedsms"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->APPLICATION_PERMISSION:Ljava/lang/String;

    .line 1879
    const-string v4, "com.verizon.directedAppSMS"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->METADATA_NAME:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 360
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 361
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 362
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 363
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 364
    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 366
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 368
    .local v1, "smsCapable":Z
    const-string v4, "telephony.sms.receive"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 371
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 372
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 373
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 375
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 382
    const-string v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "lgu_dispatch"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 385
    new-instance v2, Lcom/lge/telephony/LGUSmsUtils;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, p0}, Lcom/lge/telephony/LGUSmsUtils;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->lgu:Lcom/lge/telephony/LGUSmsUtils;

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "sprint_reassembly_sms"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->regReassemblyBroadcastReceiver()V

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "force_write_mode_allowed"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->allowOpWriteSmsForPhone()V

    .line 401
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendSavedPdusIndividually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->trySegmentExpirationAfterBootUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addGsmOperatorMessages([[BZZLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V
    .locals 7
    .param p1, "pdus"    # [[B
    .param p2, "isConcat"    # Z
    .param p3, "existsPortAddrs"    # Z
    .param p4, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BZZ",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;",
            "Landroid/content/BroadcastReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v6, 0x1

    .line 2338
    if-ne p3, v6, :cond_6

    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "KTPortMessage"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2341
    const-string v0, "GsmSmsKTPortMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "SKTCommonPush"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_1

    .line 2345
    const-string v0, "GsmSmsSKTPortMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2348
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "SKTUrlCallback"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_2

    .line 2349
    const-string v0, "GsmSmsSKTUrlCallback"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2352
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "lgu_gsm_operator_message"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2353
    invoke-virtual {p4}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_3

    .line 2354
    const-string v0, "GsmSmsLGUMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    :cond_3
    if-nez p2, :cond_5

    .line 2359
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "specialMessage"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_4

    .line 2360
    const-string v0, "GsmSmsKRSpecialMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2363
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "KTFotaMessage"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2364
    const-string v0, "GsmSmsKTFotaMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    :cond_5
    :goto_0
    return-void

    .line 2369
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "KTUrlCallback"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_7

    .line 2370
    const-string v0, "GsmSmsKTUrlCallback"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2373
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "spam"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_8

    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p4, p1, p6}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorSpamMessage(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "LGUspam"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_9

    .line 2377
    const-string v0, "GsmSmsKTSpamMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    :cond_9
    if-nez p2, :cond_5

    .line 2381
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "specialMessage"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2382
    const-string v0, "GsmSmsKRSpecialMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 50
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1465
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v47

    .line 1466
    .local v47, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1469
    .local v10, "firstTime":J
    const/16 v35, 0x0

    .line 1472
    .local v35, "isFirtMTconcat":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 1474
    const/16 v31, 0x0

    .line 1477
    .local v31, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v45

    .line 1480
    .local v45, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v28

    .line 1481
    .local v28, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    .line 1482
    .local v41, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    .line 1484
    .local v30, "count":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    .line 1487
    .local v44, "seqNumber":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v2, 0x0

    aput-object v28, v33, v2

    const/4 v2, 0x1

    aput-object v41, v33, v2

    const/4 v2, 0x2

    aput-object v30, v33, v2

    .line 1488
    .local v33, "deleteWhereArgs":[Ljava/lang/String;
    const-string v2, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "ConcatMTCheckTimestamp_kddi"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v2

    const-wide/32 v4, 0x3e800

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    .line 1493
    .local v29, "comparingTime":Ljava/lang/String;
    const-string v49, "reference_number=? AND date<?"

    .line 1494
    .local v49, "whereEx":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/4 v2, 0x0

    aput-object v41, v48, v2

    const/4 v2, 0x1

    aput-object v29, v48, v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    .local v48, "whereArgsEx":[Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    .line 1498
    .local v32, "deleteCnt":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart(), [KDDI] duplicated reference number & more than 256 secs earlier timestamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    .end local v29    # "comparingTime":Ljava/lang/String;
    .end local v32    # "deleteCnt":I
    .end local v48    # "whereArgsEx":[Ljava/lang/String;
    .end local v49    # "whereEx":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "ConcatMTCheckTimestamp"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    .line 1511
    .restart local v29    # "comparingTime":Ljava/lang/String;
    const-string v49, "address=? AND reference_number=? AND date<?"

    .line 1512
    .restart local v49    # "whereEx":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/4 v2, 0x0

    aput-object v28, v48, v2

    const/4 v2, 0x1

    aput-object v41, v48, v2

    const/4 v2, 0x2

    aput-object v29, v48, v2
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1515
    .restart local v48    # "whereArgsEx":[Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    .line 1516
    .restart local v32    # "deleteCnt":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart(), [KRSMS] duplicated reference number & more than 10 minutes earlier timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1526
    .end local v29    # "comparingTime":Ljava/lang/String;
    .end local v32    # "deleteCnt":I
    .end local v48    # "whereArgsEx":[Ljava/lang/String;
    .end local v49    # "whereEx":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    const/4 v7, 0x1

    aput-object v41, v6, v7

    const/4 v7, 0x2

    aput-object v30, v6, v7

    const/4 v7, 0x3

    aput-object v44, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1531
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1534
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1535
    .local v39, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v40

    .line 1536
    .local v40, "pdu":[B
    invoke-static/range {v39 .. v39}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v38

    .line 1537
    .local v38, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    move-object/from16 v0, v38

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v40

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v38

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1541
    :cond_2
    const/4 v2, 0x5

    .line 1576
    if-eqz v31, :cond_3

    .line 1577
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1632
    .end local v28    # "address":Ljava/lang/String;
    .end local v30    # "count":Ljava/lang/String;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .end local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v38    # "oldPdu":[B
    .end local v39    # "oldPduString":Ljava/lang/String;
    .end local v40    # "pdu":[B
    .end local v41    # "refNumber":Ljava/lang/String;
    .end local v44    # "seqNumber":Ljava/lang/String;
    .end local v45    # "sequence":I
    :cond_3
    :goto_2
    return v2

    .line 1499
    .restart local v28    # "address":Ljava/lang/String;
    .restart local v29    # "comparingTime":Ljava/lang/String;
    .restart local v30    # "count":Ljava/lang/String;
    .restart local v31    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v41    # "refNumber":Ljava/lang/String;
    .restart local v44    # "seqNumber":Ljava/lang/String;
    .restart local v45    # "sequence":I
    .restart local v48    # "whereArgsEx":[Ljava/lang/String;
    .restart local v49    # "whereEx":Ljava/lang/String;
    :catch_0
    move-exception v34

    .line 1500
    .local v34, "e":Landroid/database/SQLException;
    :try_start_5
    const-string v2, "processMessagePart(), Can\'t access multipart SMS database"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1572
    .end local v28    # "address":Ljava/lang/String;
    .end local v29    # "comparingTime":Ljava/lang/String;
    .end local v30    # "count":Ljava/lang/String;
    .end local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v34    # "e":Landroid/database/SQLException;
    .end local v41    # "refNumber":Ljava/lang/String;
    .end local v44    # "seqNumber":Ljava/lang/String;
    .end local v45    # "sequence":I
    .end local v48    # "whereArgsEx":[Ljava/lang/String;
    .end local v49    # "whereEx":Ljava/lang/String;
    :catch_1
    move-exception v34

    .line 1573
    .restart local v34    # "e":Landroid/database/SQLException;
    :try_start_6
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1574
    const/4 v2, 0x2

    .line 1576
    if-eqz v31, :cond_3

    .line 1577
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1501
    .end local v34    # "e":Landroid/database/SQLException;
    .restart local v28    # "address":Ljava/lang/String;
    .restart local v29    # "comparingTime":Ljava/lang/String;
    .restart local v30    # "count":Ljava/lang/String;
    .restart local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v41    # "refNumber":Ljava/lang/String;
    .restart local v44    # "seqNumber":Ljava/lang/String;
    .restart local v45    # "sequence":I
    .restart local v48    # "whereArgsEx":[Ljava/lang/String;
    .restart local v49    # "whereEx":Ljava/lang/String;
    :catch_2
    move-exception v34

    .line 1502
    .local v34, "e":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v2, "processMessagePart(), Runtime Exception: maybe concat reference is mixed"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1576
    .end local v28    # "address":Ljava/lang/String;
    .end local v29    # "comparingTime":Ljava/lang/String;
    .end local v30    # "count":Ljava/lang/String;
    .end local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v34    # "e":Ljava/lang/RuntimeException;
    .end local v41    # "refNumber":Ljava/lang/String;
    .end local v44    # "seqNumber":Ljava/lang/String;
    .end local v45    # "sequence":I
    .end local v48    # "whereArgsEx":[Ljava/lang/String;
    .end local v49    # "whereEx":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v31, :cond_4

    .line 1577
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 1517
    .restart local v28    # "address":Ljava/lang/String;
    .restart local v29    # "comparingTime":Ljava/lang/String;
    .restart local v30    # "count":Ljava/lang/String;
    .restart local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v41    # "refNumber":Ljava/lang/String;
    .restart local v44    # "seqNumber":Ljava/lang/String;
    .restart local v45    # "sequence":I
    .restart local v48    # "whereArgsEx":[Ljava/lang/String;
    .restart local v49    # "whereEx":Ljava/lang/String;
    :catch_3
    move-exception v34

    .line 1518
    .local v34, "e":Landroid/database/SQLException;
    :try_start_8
    const-string v2, "processMessagePart(), Can\'t access multipart SMS database"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1519
    .end local v34    # "e":Landroid/database/SQLException;
    :catch_4
    move-exception v34

    .line 1520
    .local v34, "e":Ljava/lang/RuntimeException;
    const-string v2, "processMessagePart(), Runtime Exception: maybe concat reference is mixed"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1543
    .end local v29    # "comparingTime":Ljava/lang/String;
    .end local v34    # "e":Ljava/lang/RuntimeException;
    .end local v48    # "whereArgsEx":[Ljava/lang/String;
    .end local v49    # "whereEx":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "ems_segment_timer"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1549
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v28, v6, v2

    const/4 v2, 0x1

    aput-object v41, v6, v2

    const/4 v2, 0x2

    aput-object v30, v6, v2

    .line 1550
    .local v6, "whereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] refNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1555
    if-eqz v31, :cond_b

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 1556
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1557
    const-string v2, "time"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 1558
    .local v46, "timeColumn":I
    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1560
    .end local v46    # "timeColumn":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] NOT new mt seg firstTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1569
    :goto_3
    const-string v2, "time"

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1576
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-eqz v31, :cond_8

    .line 1577
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1583
    .end local v28    # "address":Ljava/lang/String;
    .end local v30    # "count":Ljava/lang/String;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .end local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v41    # "refNumber":Ljava/lang/String;
    .end local v44    # "seqNumber":Ljava/lang/String;
    .end local v45    # "sequence":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v47

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v37

    .line 1584
    .local v37, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v36

    .line 1589
    .local v36, "mMessageCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "ems_segment_timer"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt] tracker.getMessageCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1591
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "concat_stitching"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1594
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_9

    .line 1595
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x14

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v12, v2

    .line 1597
    .local v12, "dispatchTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] create first timer. dispatchTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1598
    new-instance v2, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V

    invoke-direct {v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1624
    .end local v12    # "dispatchTime":J
    :cond_9
    :goto_4
    :try_start_9
    invoke-static/range {v37 .. v37}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v42

    .line 1625
    .local v42, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1627
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1629
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1565
    .end local v36    # "mMessageCount":I
    .end local v37    # "newUri":Landroid/net/Uri;
    .end local v42    # "rowId":J
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v28    # "address":Ljava/lang/String;
    .restart local v30    # "count":Ljava/lang/String;
    .restart local v31    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v41    # "refNumber":Ljava/lang/String;
    .restart local v44    # "seqNumber":Ljava/lang/String;
    .restart local v45    # "sequence":I
    :cond_b
    const/16 v35, 0x1

    .line 1566
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] new mt seg. firstTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 1605
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v28    # "address":Ljava/lang/String;
    .end local v30    # "count":Ljava/lang/String;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .end local v33    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v41    # "refNumber":Ljava/lang/String;
    .end local v44    # "seqNumber":Ljava/lang/String;
    .end local v45    # "sequence":I
    .restart local v36    # "mMessageCount":I
    .restart local v37    # "newUri":Landroid/net/Uri;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "concat_expired_time"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1606
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_9

    .line 1607
    const-wide/32 v19, 0x5265c00

    .line 1608
    .local v19, "expiryTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] CMCC create first timer. expiryTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1609
    new-instance v2, Ljava/lang/Thread;

    new-instance v14, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v17, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/InboundSmsHandler$IncompleteConcatDispatchTimer;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V

    invoke-direct {v2, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 1615
    .end local v19    # "expiryTime":J
    :cond_d
    const-string v2, "[sms.mt] calls EMSSegmentExpirationRunnable"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1616
    new-instance v2, Ljava/lang/Thread;

    new-instance v21, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v25

    move-object/from16 v22, p0

    move-wide/from16 v26, v10

    invoke-direct/range {v21 .. v27}, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IIJ)V

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    .line 1630
    :catch_5
    move-exception v34

    .line 1631
    .local v34, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1632
    const/4 v2, 0x2

    goto/16 :goto_2
.end method

.method private allowOpWriteSmsForPhone()V
    .locals 9

    .prologue
    .line 3190
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3191
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.phone"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3192
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3193
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0xf

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "com.android.phone"

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    .line 3194
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 3195
    const-string v5, "addTrackerToRawTable, OP_WRITE_SMS : !MODE_ALLOWED -> MODE_ALLOWED "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 3196
    const/16 v5, 0xf

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "com.android.phone"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 3205
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 3199
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "mode":I
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v5, "addTrackerToRawTable, OP_WRITE_SMS : MODE_ALLOWED "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3201
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 3203
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Phone package not found: com.android.phone"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private completeProcessMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 24
    .param p1, "lastSms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 3060
    const/4 v8, 0x0

    .line 3061
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    check-cast v18, [[B

    .line 3062
    .local v18, "pdus":[[B
    const/4 v13, 0x0

    .line 3063
    .local v13, "index":I
    const/16 v16, 0x0

    .line 3065
    .local v16, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3066
    const/4 v2, 0x2

    .line 3141
    :cond_0
    :goto_0
    return v2

    .line 3068
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v2, "address ="

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3070
    .local v23, "where":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;

    move-result-object v19

    .line 3071
    .local v19, "pi":Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;
    if-nez v19, :cond_2

    .line 3072
    const/4 v2, 0x2

    goto :goto_0

    .line 3075
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getSequence()I

    move-result v20

    .line 3076
    .local v20, "sequence":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getTotalCount()I

    move-result v22

    .line 3078
    .local v22, "totalCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    const-string v2, " AND ( totalCount ="

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "sequence"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 3084
    if-nez v8, :cond_3

    .line 3085
    const/4 v2, 0x2

    .line 3116
    if-eqz v8, :cond_0

    .line 3117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3087
    :cond_3
    :try_start_1
    const-string v2, "pdu"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 3088
    .local v17, "pduColumn":I
    const-string v2, "time"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 3089
    .local v21, "timeColumn":I
    const-wide/16 v10, -0x1

    .line 3091
    .local v10, "firstTime":J
    move/from16 v0, v22

    new-array v0, v0, [[B

    move-object/from16 v18, v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3093
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 3094
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v18, v13

    .line 3096
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3097
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_5

    .line 3098
    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3100
    :cond_5
    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    cmp-long v2, v2, v10

    if-nez v2, :cond_4

    .line 3101
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    :try_start_3
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v18, v14
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3102
    add-int/lit8 v2, v13, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 3103
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v18, v13
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3112
    :catch_0
    move-exception v9

    move v13, v14

    .line 3113
    .end local v10    # "firstTime":J
    .end local v14    # "index":I
    .end local v17    # "pduColumn":I
    .end local v21    # "timeColumn":I
    .local v9, "e":Landroid/database/SQLException;
    .restart local v13    # "index":I
    :goto_2
    :try_start_5
    const-string v2, "completeProcessMessageSegment(), query exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3114
    const/4 v2, 0x2

    .line 3116
    if-eqz v8, :cond_0

    .line 3117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3107
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v13    # "index":I
    .restart local v10    # "firstTime":J
    .restart local v14    # "index":I
    .restart local v17    # "pduColumn":I
    .restart local v21    # "timeColumn":I
    :cond_6
    :try_start_6
    const-string v2, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    const-string v2, "time ="

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3116
    if-eqz v8, :cond_7

    .line 3117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3121
    :cond_7
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v0, v22

    if-ge v12, v0, :cond_c

    .line 3122
    aget-object v2, v18, v12

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 3123
    if-nez v16, :cond_9

    .line 3124
    const-string v2, "completeProcessMessageSegment(), some PDU is broken."

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 3125
    const/4 v2, 0x2

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_0

    .line 3116
    .end local v10    # "firstTime":J
    .end local v12    # "i":I
    .end local v17    # "pduColumn":I
    .end local v21    # "timeColumn":I
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v8, :cond_8

    .line 3117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 3128
    .end local v13    # "index":I
    .restart local v10    # "firstTime":J
    .restart local v12    # "i":I
    .restart local v14    # "index":I
    .restart local v17    # "pduColumn":I
    .restart local v21    # "timeColumn":I
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;

    move-result-object v19

    .line 3129
    if-nez v19, :cond_a

    .line 3130
    const/4 v2, 0x2

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_0

    .line 3133
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 3134
    .local v15, "messageBody":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/telephony/SmsMessage;->replaceMessageBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3135
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v18, v12

    .line 3121
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3138
    .end local v15    # "messageBody":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusForSprintSegment([[B)V

    .line 3139
    const-string v2, "completeProcessMessageSegment(), All segments are reassembled"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3141
    const/4 v2, 0x1

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_0

    .line 3116
    .end local v12    # "i":I
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :catchall_1
    move-exception v2

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_4

    .line 3112
    .end local v10    # "firstTime":J
    .end local v17    # "pduColumn":I
    .end local v21    # "timeColumn":I
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .restart local v10    # "firstTime":J
    .restart local v17    # "pduColumn":I
    .restart local v21    # "timeColumn":I
    :cond_d
    move v14, v13

    .end local v13    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_1
.end method

.method private dispatchVVM3Pdu([B)V
    .locals 4
    .param p1, "vvm3pduToDispatch"    # [B

    .prologue
    .line 3561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3562
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.vvm3] intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3564
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 3566
    const-string v1, "[sms.mt.vvm3] dispatchVVM3Pdu end]"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3567
    return-void
.end method

.method private getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;
    .locals 12
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x4

    const/16 v9, 0x14

    const/16 v8, 0xb

    const/16 v7, 0x13

    .line 2608
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2609
    :cond_0
    const/4 v5, 0x0

    .line 2865
    :goto_0
    return-object v5

    .line 2611
    :cond_1
    const/4 v0, 0x0

    .line 2612
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2613
    .local v1, "length":I
    const/4 v3, 0x0

    .line 2614
    .local v3, "state":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 2615
    .local v2, "sequence":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 2617
    .local v4, "totalCount":Ljava/lang/String;
    const/16 v5, 0xc

    if-le v1, v5, :cond_2

    .line 2618
    const/16 v1, 0xc

    .line 2621
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_58

    .line 2622
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 2834
    if-ne v3, v8, :cond_54

    .line 2835
    const/16 v3, 0x15

    .line 2845
    :cond_3
    :goto_2
    const/4 v5, -0x1

    if-ne v3, v5, :cond_57

    .line 2846
    const/4 v5, 0x0

    goto :goto_0

    .line 2624
    :sswitch_0
    if-nez v3, :cond_4

    .line 2625
    const/4 v3, 0x1

    goto :goto_2

    .line 2626
    :cond_4
    if-ne v3, v8, :cond_5

    .line 2627
    const/16 v3, 0x15

    goto :goto_2

    .line 2628
    :cond_5
    if-ne v3, v7, :cond_6

    .line 2629
    const/16 v3, 0x15

    goto :goto_2

    .line 2630
    :cond_6
    if-ne v3, v9, :cond_7

    .line 2631
    const/16 v3, 0x15

    goto :goto_2

    .line 2633
    :cond_7
    const/4 v3, -0x1

    .line 2634
    goto :goto_2

    .line 2636
    :sswitch_1
    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 2637
    const/4 v3, 0x2

    goto :goto_2

    .line 2638
    :cond_8
    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    .line 2639
    const/4 v3, 0x2

    goto :goto_2

    .line 2640
    :cond_9
    if-ne v3, v10, :cond_a

    .line 2641
    const/4 v3, 0x5

    goto :goto_2

    .line 2642
    :cond_a
    const/4 v5, 0x5

    if-ne v3, v5, :cond_b

    .line 2643
    const/4 v3, 0x5

    goto :goto_2

    .line 2644
    :cond_b
    const/4 v5, 0x6

    if-ne v3, v5, :cond_c

    .line 2645
    const/4 v3, 0x7

    goto :goto_2

    .line 2646
    :cond_c
    const/4 v5, 0x7

    if-ne v3, v5, :cond_d

    .line 2647
    const/4 v3, 0x7

    goto :goto_2

    .line 2648
    :cond_d
    if-ne v3, v11, :cond_e

    .line 2649
    const/16 v3, 0xa

    goto :goto_2

    .line 2650
    :cond_e
    const/16 v5, 0xa

    if-ne v3, v5, :cond_f

    .line 2651
    const/16 v3, 0xa

    goto :goto_2

    .line 2653
    :cond_f
    const/16 v5, 0xd

    if-ne v3, v5, :cond_10

    .line 2654
    const/16 v3, 0xe

    goto :goto_2

    .line 2655
    :cond_10
    const/16 v5, 0xe

    if-ne v3, v5, :cond_11

    .line 2656
    const/16 v3, 0xe

    goto :goto_2

    .line 2657
    :cond_11
    const/16 v5, 0x10

    if-ne v3, v5, :cond_12

    .line 2658
    const/16 v3, 0x11

    goto :goto_2

    .line 2659
    :cond_12
    const/16 v5, 0x11

    if-ne v3, v5, :cond_13

    .line 2660
    const/16 v3, 0x11

    goto :goto_2

    .line 2662
    :cond_13
    if-ne v3, v8, :cond_14

    .line 2663
    const/16 v3, 0x14

    goto :goto_2

    .line 2664
    :cond_14
    if-ne v3, v7, :cond_15

    .line 2665
    const/16 v3, 0x14

    goto :goto_2

    .line 2666
    :cond_15
    if-ne v3, v9, :cond_16

    .line 2667
    const/16 v3, 0x15

    goto :goto_2

    .line 2669
    :cond_16
    const/16 v5, 0x16

    if-ne v3, v5, :cond_17

    .line 2670
    const/16 v3, 0x11

    goto :goto_2

    .line 2672
    :cond_17
    const/4 v3, -0x1

    .line 2673
    goto :goto_2

    .line 2675
    :sswitch_2
    const/4 v5, 0x1

    if-ne v3, v5, :cond_19

    .line 2676
    const/4 v3, 0x3

    .line 2717
    :goto_3
    if-ne v3, v10, :cond_18

    .line 2718
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2719
    :cond_18
    if-ne v3, v11, :cond_3

    .line 2720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 2677
    :cond_19
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1a

    .line 2678
    const/4 v3, 0x3

    goto :goto_3

    .line 2679
    :cond_1a
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1b

    .line 2680
    const/4 v3, 0x3

    goto :goto_3

    .line 2681
    :cond_1b
    const/4 v5, 0x6

    if-ne v3, v5, :cond_1c

    .line 2682
    const/16 v3, 0x8

    goto :goto_3

    .line 2683
    :cond_1c
    const/4 v5, 0x7

    if-ne v3, v5, :cond_1d

    .line 2684
    const/16 v3, 0x8

    goto :goto_3

    .line 2685
    :cond_1d
    const/16 v5, 0x8

    if-ne v3, v5, :cond_1e

    .line 2686
    const/16 v3, 0x8

    goto :goto_3

    .line 2688
    :cond_1e
    if-ne v3, v10, :cond_1f

    .line 2689
    const/4 v3, 0x4

    goto :goto_3

    .line 2690
    :cond_1f
    if-ne v3, v11, :cond_20

    .line 2691
    const/16 v3, 0x9

    goto :goto_3

    .line 2693
    :cond_20
    if-nez v3, :cond_21

    .line 2694
    const/16 v3, 0xc

    goto :goto_3

    .line 2695
    :cond_21
    const/16 v5, 0xc

    if-ne v3, v5, :cond_22

    .line 2696
    const/16 v3, 0xc

    goto :goto_3

    .line 2697
    :cond_22
    const/16 v5, 0x10

    if-ne v3, v5, :cond_23

    .line 2698
    const/16 v3, 0x12

    goto :goto_3

    .line 2699
    :cond_23
    const/16 v5, 0x11

    if-ne v3, v5, :cond_24

    .line 2700
    const/16 v3, 0x12

    goto :goto_3

    .line 2701
    :cond_24
    const/16 v5, 0x12

    if-ne v3, v5, :cond_25

    .line 2702
    const/16 v3, 0x12

    goto :goto_3

    .line 2704
    :cond_25
    if-ne v3, v8, :cond_26

    .line 2705
    const/16 v3, 0x15

    goto :goto_3

    .line 2706
    :cond_26
    if-ne v3, v7, :cond_27

    .line 2707
    const/16 v3, 0x15

    goto :goto_3

    .line 2708
    :cond_27
    if-ne v3, v9, :cond_28

    .line 2709
    const/16 v3, 0x15

    goto/16 :goto_3

    .line 2711
    :cond_28
    const/16 v5, 0x16

    if-ne v3, v5, :cond_29

    .line 2712
    const/16 v3, 0x12

    goto/16 :goto_3

    .line 2714
    :cond_29
    const/4 v3, -0x1

    goto/16 :goto_3

    .line 2723
    :sswitch_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2b

    .line 2724
    const/4 v3, 0x4

    .line 2766
    :goto_4
    if-eq v3, v10, :cond_2a

    const/16 v5, 0xd

    if-ne v3, v5, :cond_3d

    .line 2767
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 2725
    :cond_2b
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2c

    .line 2726
    const/4 v3, 0x4

    goto :goto_4

    .line 2727
    :cond_2c
    const/4 v5, 0x3

    if-ne v3, v5, :cond_2d

    .line 2728
    const/4 v3, 0x4

    goto :goto_4

    .line 2729
    :cond_2d
    if-ne v3, v10, :cond_2e

    .line 2730
    const/4 v3, 0x4

    goto :goto_4

    .line 2731
    :cond_2e
    const/4 v5, 0x6

    if-ne v3, v5, :cond_2f

    .line 2732
    const/16 v3, 0x9

    goto :goto_4

    .line 2733
    :cond_2f
    const/4 v5, 0x7

    if-ne v3, v5, :cond_30

    .line 2734
    const/16 v3, 0x9

    goto :goto_4

    .line 2735
    :cond_30
    const/16 v5, 0x8

    if-ne v3, v5, :cond_31

    .line 2736
    const/16 v3, 0x9

    goto :goto_4

    .line 2737
    :cond_31
    if-ne v3, v11, :cond_32

    .line 2738
    const/16 v3, 0x9

    goto :goto_4

    .line 2740
    :cond_32
    if-nez v3, :cond_33

    .line 2741
    const/16 v3, 0xd

    goto :goto_4

    .line 2742
    :cond_33
    const/16 v5, 0xc

    if-ne v3, v5, :cond_34

    .line 2743
    const/16 v3, 0xd

    goto :goto_4

    .line 2744
    :cond_34
    const/16 v5, 0xd

    if-ne v3, v5, :cond_35

    .line 2745
    const/16 v3, 0xd

    goto :goto_4

    .line 2746
    :cond_35
    const/16 v5, 0x10

    if-ne v3, v5, :cond_36

    .line 2747
    const/16 v3, 0x13

    goto :goto_4

    .line 2748
    :cond_36
    const/16 v5, 0x11

    if-ne v3, v5, :cond_37

    .line 2749
    const/16 v3, 0x13

    goto :goto_4

    .line 2750
    :cond_37
    const/16 v5, 0x12

    if-ne v3, v5, :cond_38

    .line 2751
    const/16 v3, 0x13

    goto :goto_4

    .line 2752
    :cond_38
    if-ne v3, v7, :cond_39

    .line 2753
    const/16 v3, 0x13

    goto :goto_4

    .line 2755
    :cond_39
    if-ne v3, v8, :cond_3a

    .line 2756
    const/16 v3, 0x15

    goto :goto_4

    .line 2757
    :cond_3a
    if-ne v3, v9, :cond_3b

    .line 2758
    const/16 v3, 0x15

    goto :goto_4

    .line 2760
    :cond_3b
    const/16 v5, 0x16

    if-ne v3, v5, :cond_3c

    .line 2761
    const/16 v3, 0x13

    goto :goto_4

    .line 2763
    :cond_3c
    const/4 v3, -0x1

    goto/16 :goto_4

    .line 2768
    :cond_3d
    if-eq v3, v11, :cond_3e

    if-ne v3, v7, :cond_3

    .line 2769
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 2772
    :sswitch_4
    if-ne v3, v10, :cond_3f

    .line 2773
    const/4 v3, 0x6

    goto/16 :goto_2

    .line 2774
    :cond_3f
    const/4 v5, 0x5

    if-ne v3, v5, :cond_40

    .line 2775
    const/4 v3, 0x6

    goto/16 :goto_2

    .line 2776
    :cond_40
    if-ne v3, v8, :cond_41

    .line 2777
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2778
    :cond_41
    if-ne v3, v7, :cond_42

    .line 2779
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2780
    :cond_42
    if-ne v3, v9, :cond_43

    .line 2781
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2783
    :cond_43
    const/16 v5, 0xd

    if-ne v3, v5, :cond_44

    .line 2784
    const/16 v3, 0x16

    goto/16 :goto_2

    .line 2786
    :cond_44
    const/16 v5, 0xe

    if-ne v3, v5, :cond_45

    .line 2787
    const/16 v3, 0x16

    goto/16 :goto_2

    .line 2789
    :cond_45
    const/4 v3, -0x1

    .line 2790
    goto/16 :goto_2

    .line 2792
    :sswitch_5
    if-ne v3, v11, :cond_46

    .line 2793
    const/16 v3, 0xb

    goto/16 :goto_2

    .line 2794
    :cond_46
    const/16 v5, 0xa

    if-ne v3, v5, :cond_47

    .line 2795
    const/16 v3, 0xb

    goto/16 :goto_2

    .line 2796
    :cond_47
    if-ne v3, v8, :cond_48

    .line 2797
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2798
    :cond_48
    if-ne v3, v7, :cond_49

    .line 2799
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2800
    :cond_49
    if-ne v3, v9, :cond_4a

    .line 2801
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2803
    :cond_4a
    const/4 v3, -0x1

    .line 2804
    goto/16 :goto_2

    .line 2807
    :sswitch_6
    const/16 v5, 0xd

    if-ne v3, v5, :cond_4b

    .line 2808
    const/16 v3, 0xf

    goto/16 :goto_2

    .line 2809
    :cond_4b
    const/16 v5, 0xe

    if-ne v3, v5, :cond_4c

    .line 2810
    const/16 v3, 0xf

    goto/16 :goto_2

    .line 2811
    :cond_4c
    if-ne v3, v8, :cond_4d

    .line 2812
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2813
    :cond_4d
    if-ne v3, v7, :cond_4e

    .line 2814
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2815
    :cond_4e
    if-ne v3, v9, :cond_4f

    .line 2816
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2818
    :cond_4f
    const/4 v3, -0x1

    .line 2819
    goto/16 :goto_2

    .line 2822
    :sswitch_7
    const/16 v5, 0xf

    if-ne v3, v5, :cond_50

    .line 2823
    const/16 v3, 0x10

    goto/16 :goto_2

    .line 2824
    :cond_50
    if-ne v3, v8, :cond_51

    .line 2825
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2826
    :cond_51
    if-ne v3, v7, :cond_52

    .line 2827
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2828
    :cond_52
    if-ne v3, v9, :cond_53

    .line 2829
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2831
    :cond_53
    const/4 v3, -0x1

    .line 2832
    goto/16 :goto_2

    .line 2836
    :cond_54
    if-ne v3, v7, :cond_55

    .line 2837
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2838
    :cond_55
    if-ne v3, v9, :cond_56

    .line 2839
    const/16 v3, 0x15

    goto/16 :goto_2

    .line 2841
    :cond_56
    const/4 v3, -0x1

    goto/16 :goto_2

    .line 2849
    :cond_57
    const/16 v5, 0x15

    if-ne v3, v5, :cond_5b

    .line 2856
    :cond_58
    if-eq v3, v8, :cond_59

    if-eq v3, v7, :cond_59

    if-ne v3, v9, :cond_5a

    .line 2857
    :cond_59
    const/16 v3, 0x15

    .line 2860
    :cond_5a
    const/16 v5, 0x15

    if-ne v3, v5, :cond_5c

    .line 2862
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;-><init>(III)V

    goto/16 :goto_0

    .line 2853
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2865
    :cond_5c
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2622
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
        0x29 -> :sswitch_5
        0x2f -> :sswitch_4
        0x30 -> :sswitch_2
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x46 -> :sswitch_7
        0x4f -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_5
        0x66 -> :sswitch_7
        0x6f -> :sswitch_6
        0x7b -> :sswitch_0
        0x7d -> :sswitch_5
    .end sparse-switch
.end method

.method private getSMSInboxMessageCount()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 3211
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3212
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(type = 1)"

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3216
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 3217
    const/4 v7, 0x0

    .line 3222
    :goto_0
    return v7

    .line 3220
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3221
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getStrMsgWhat(I)Ljava/lang/String;
    .locals 3
    .param p0, "nMsg"    # I

    .prologue
    .line 3782
    const/4 v0, 0x0

    .line 3783
    .local v0, "strRet":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 3811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3814
    :goto_0
    return-object v0

    .line 3785
    :pswitch_0
    const-string v0, "EVENT_NEW_SMS"

    .line 3786
    goto :goto_0

    .line 3788
    :pswitch_1
    const-string v0, "EVENT_BROADCAST_SMS"

    .line 3789
    goto :goto_0

    .line 3791
    :pswitch_2
    const-string v0, "EVENT_BROADCAST_COMPLETE"

    .line 3792
    goto :goto_0

    .line 3794
    :pswitch_3
    const-string v0, "EVENT_RETURN_TO_IDLE"

    .line 3795
    goto :goto_0

    .line 3797
    :pswitch_4
    const-string v0, "EVENT_RELEASE_WAKELOCK"

    .line 3798
    goto :goto_0

    .line 3800
    :pswitch_5
    const-string v0, "EVENT_START_ACCEPTING_SMS"

    .line 3801
    goto :goto_0

    .line 3803
    :pswitch_6
    const-string v0, "EVENT_UPDATE_PHONE_OBJECT"

    .line 3804
    goto :goto_0

    .line 3807
    :pswitch_7
    const-string v0, "EVNET_DAN_SMS_COMPLETE"

    .line 3808
    goto :goto_0

    .line 3783
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
    .end packed-switch
.end method

.method private getVZWSignatures(Landroid/content/pm/PackageManager;)Z
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v7, 0x0

    .line 1919
    :try_start_0
    const-string v8, "com.verizon.permissions.appdirectedsms"

    const/16 v9, 0x40

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1925
    .local v5, "permissionPkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 1926
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->VZWSignature:[Landroid/content/pm/Signature;

    .line 1928
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->VZWSignature:[Landroid/content/pm/Signature;

    if-nez v8, :cond_0

    .line 1929
    const-string v8, "getVZWSignatures(), Can\'t find permission package signatures"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1939
    .end local v5    # "permissionPkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v7

    .line 1920
    :catch_0
    move-exception v1

    .line 1921
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "getVZWSignatures(), Can\'t find permission package: com.verizon.permissions.appdirectedsms"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1932
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "permissionPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v3, 0x0

    .line 1933
    .local v3, "index":I
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->VZWSignature:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 1934
    .local v6, "signature":Landroid/content/pm/Signature;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVZWSignatures(), VZWSignature: index = [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1935
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVZWSignatures(), VZWSignature : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1936
    add-int/lit8 v3, v3, 0x1

    .line 1933
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1939
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "index":I
    .end local v4    # "len$":I
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private insertMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)J
    .locals 19
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 2909
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2910
    .local v17, "values":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 2911
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 2913
    .local v9, "firstTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;

    move-result-object v13

    .line 2914
    .local v13, "pi":Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;
    if-nez v13, :cond_0

    move-wide v11, v9

    .line 2960
    .end local v9    # "firstTime":J
    .local v11, "firstTime":J
    :goto_0
    return-wide v11

    .line 2918
    .end local v11    # "firstTime":J
    .restart local v9    # "firstTime":J
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getSequence()I

    move-result v14

    .line 2919
    .local v14, "sequence":I
    invoke-virtual {v13}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getTotalCount()I

    move-result v16

    .line 2921
    .local v16, "totalCount":I
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v1, "address ="

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2922
    .local v18, "where":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    const-string v1, " AND ( totalCount ="

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "sequence"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2928
    if-nez v7, :cond_2

    .line 2941
    if-eqz v7, :cond_1

    .line 2942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v11, v9

    .end local v9    # "firstTime":J
    .restart local v11    # "firstTime":J
    goto :goto_0

    .line 2931
    .end local v11    # "firstTime":J
    .restart local v9    # "firstTime":J
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 2932
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2933
    const-string v1, "time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2934
    .local v15, "timeColumn":I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 2941
    .end local v15    # "timeColumn":I
    :cond_3
    if-eqz v7, :cond_4

    .line 2942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2946
    :cond_4
    const-string v1, "time"

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2947
    const-string v1, "sequence"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2948
    const-string v1, "totalCount"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2949
    const-string v1, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    const-string v1, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2954
    const-string v1, "insertMessageSegment(), trying to insert a segment"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-wide v11, v9

    .line 2960
    .end local v9    # "firstTime":J
    .restart local v11    # "firstTime":J
    goto/16 :goto_0

    .line 2937
    .end local v11    # "firstTime":J
    .restart local v9    # "firstTime":J
    :catch_0
    move-exception v8

    .line 2938
    .local v8, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "insertMessageSegment(), query exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2941
    if-eqz v7, :cond_5

    .line 2942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v11, v9

    .end local v9    # "firstTime":J
    .restart local v11    # "firstTime":J
    goto/16 :goto_0

    .line 2941
    .end local v8    # "e":Landroid/database/SQLException;
    .end local v11    # "firstTime":J
    .restart local v9    # "firstTime":J
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 2942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 2955
    :catch_1
    move-exception v8

    .line 2956
    .restart local v8    # "e":Landroid/database/SQLException;
    :try_start_4
    const-string v1, "insertMessageSegment(), query exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2957
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v1

    throw v1
.end method

.method private beforeDispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const-string v10, "InboundSmsHandler"

    const-string v11, "before_dispatchIntent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "smsBlocked":Z
    const-string v10, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "pdus"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .local v6, "pdusArray":[Ljava/lang/Object;
    array-length v10, v6

    new-array v5, v10, [[B

    .local v5, "pdus":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v6

    if-ge v3, v10, :cond_0

    aget-object v10, v6, v3

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v4, v0

    .local v4, "part":[B
    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4    # "part":[B
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->checkSmsCmd([[B)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "InboundSmsHandler"

    const-string v11, "checkSmsCmd is true, intercept this sms."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    .end local v3    # "i":I
    .end local v5    # "pdus":[[B
    .end local v6    # "pdusArray":[Ljava/lang/Object;
    :cond_1
    :goto_1
    if-nez v9, :cond_2

    :try_start_1
    const-string v10, "security"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v8

    .local v8, "securityManager":Lmiui/security/ISecurityManager;
    invoke-interface {v8, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    .end local v8    # "securityManager":Lmiui/security/ISecurityManager;
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    :try_start_2
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object v7, v0

    .local v7, "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access_mDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v10

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access_mDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v10, 0x1

    .end local v7    # "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    :goto_3
    return v10

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "InboundSmsHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception before InboundSmsDispatcher: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private checkSmsCmd([[B)Z
    .locals 8
    .param p1, "pdus"    # [[B

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    aget-object v6, p1, v5

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    :try_start_0
    aget-object v6, p1, v3

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v6, "InboundSmsHandler"

    const-string v7, "NPE in checkSmsCmd: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1726
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1728
    .local v0, "activePhone":I
    const/4 v3, 0x0

    const-string v4, "create_pdu_by_sms_format"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentFormat3gpp2(), format = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1730
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "format":Ljava/lang/String;
    const-string v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1732
    const-string v2, "3gpp2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1736
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDirectedToMailboxPro(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageBody"    # Ljava/lang/String;
    .param p2, "originatingAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3949
    if-nez p1, :cond_1

    .line 3958
    :cond_0
    :goto_0
    return v0

    .line 3954
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDirectedToMailboxPro: messageBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "originatingAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 3958
    const-string v1, "Mobilbox Pro"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3311"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isItSignedByVZW(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1945
    const-string v9, "isItSignedByVZW(), Non-system app"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1948
    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1954
    .local v7, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_0

    .line 1978
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v8

    .line 1949
    :catch_0
    move-exception v3

    .line 1950
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isItSignedByVZW(), Can\'t find applicaiton: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1959
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1961
    .local v1, "appSignatures":[Landroid/content/pm/Signature;
    if-nez v1, :cond_1

    .line 1962
    const-string v9, "isItSignedByVZW(), Can\'t find signatures"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto :goto_0

    .line 1966
    :cond_1
    move-object v2, v1

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v0, v2, v5

    .line 1967
    .local v0, "appSignature":Landroid/content/pm/Signature;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isItSignedByVZW(), application Signature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1968
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->VZWSignature:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_3

    .line 1969
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->VZWSignature:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-ge v4, v9, :cond_3

    .line 1970
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->VZWSignature:[Landroid/content/pm/Signature;

    aget-object v9, v9, v4

    invoke-virtual {v9, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1971
    const-string v8, "isItSignedByVZW(), signature Match"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1972
    const/4 v8, 0x1

    goto :goto_0

    .line 1969
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1966
    .end local v4    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1977
    .end local v0    # "appSignature":Landroid/content/pm/Signature;
    :cond_4
    const-string v9, "isItSignedByVZW(), not signature Match"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isLastSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2870
    const/4 v8, 0x0

    .line 2871
    .local v8, "nCount":I
    const/4 v6, 0x0

    .line 2872
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v0, "address ="

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2874
    .local v11, "where":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v12

    .line 2905
    :goto_0
    return v0

    .line 2879
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;

    move-result-object v9

    .line 2880
    .local v9, "pi":Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;
    if-nez v9, :cond_1

    move v0, v12

    .line 2881
    goto :goto_0

    .line 2884
    :cond_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getTotalCount()I

    move-result v10

    .line 2886
    .local v10, "totalCount":I
    const-string v0, " AND ( totalCount ="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2891
    if-eqz v6, :cond_2

    .line 2892
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2898
    :cond_2
    if-eqz v6, :cond_3

    .line 2899
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2902
    :cond_3
    if-le v10, v13, :cond_6

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_6

    move v0, v13

    .line 2903
    goto :goto_0

    .line 2894
    :catch_0
    move-exception v7

    .line 2895
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "isLastSegmentedPDU(), query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2898
    if-eqz v6, :cond_4

    .line 2899
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 2898
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2899
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move v0, v12

    .line 2905
    goto :goto_0
.end method

.method private isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .locals 10
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    const/4 v5, 0x1

    .line 3767
    instance-of v6, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v6, :cond_1

    .line 3777
    :cond_0
    :goto_0
    return v5

    .line 3769
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "no transaction is active"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3770
    new-instance v4, Landroid/os/StatFs;

    const-string v6, "/data"

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3771
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 3772
    .local v0, "availBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 3773
    .local v2, "blockSize":J
    mul-long v6, v0, v2

    const-wide/16 v8, 0x2000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 3777
    .end local v0    # "availBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private processDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    .line 2168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sms.mt] processMessagePart messageCount =["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2170
    const/4 v5, 0x0

    .line 2171
    .local v5, "msg":Landroid/telephony/SmsMessage;
    const-string v4, ""

    .line 2172
    .local v4, "messageBody":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 2173
    aget-object v8, p3, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "3gpp2"

    :goto_1
    invoke-static {v8, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 2176
    if-nez v5, :cond_1

    .line 2172
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2173
    :cond_0
    const-string v6, "3gpp"

    goto :goto_1

    .line 2181
    :cond_1
    if-nez v2, :cond_2

    .line 2182
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2184
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2189
    :cond_3
    if-nez v5, :cond_4

    .line 2190
    const-string v6, "[sms.mt] application directed sms null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 2193
    const/4 v6, 0x2

    .line 2238
    :goto_3
    return v6

    .line 2197
    :cond_4
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 2198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[processMessagePart] msg.mWrappedSmsMessage.messageBody = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2201
    const/4 v1, -0x1

    .line 2202
    .local v1, "directedSmsStatus":I
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v6, :cond_5

    .line 2203
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->parseDirectedSMS(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/BroadcastReceiver;)I

    move-result v1

    .line 2206
    :cond_5
    if-ne v7, v1, :cond_6

    .line 2207
    const-string v6, "[processMessagePart] return parseDirectedSMS = true"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2208
    const-string v6, "[sms.mt] app directed sms has been processed."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v6, v7

    .line 2211
    goto :goto_3

    .line 2212
    :cond_6
    if-nez v1, :cond_7

    .line 2213
    const-string v6, "[processMessagePart] Discard!! there is no application for Application Directed SMS"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2214
    const-string v6, "[sms.mt] app directed sms has been discarded."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v6, v7

    .line 2217
    goto :goto_3

    .line 2220
    :cond_7
    const/4 v6, -0x2

    if-ne v6, v1, :cond_8

    .line 2222
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2223
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.lge.vzwsmsfilter"

    const-string v8, "com.lge.vzwsmsfilter.SmsFilterReceiver"

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering SMS to: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2227
    const-string v6, "pdus"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2228
    const-string v6, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2229
    const-string v6, "android.permission.RECEIVE_SMS"

    const/16 v8, 0x10

    invoke-virtual {p0, v3, v6, v8, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    move v6, v7

    .line 2232
    goto/16 :goto_3

    .line 2236
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[processMessagePart] directedSmsStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2238
    const/16 v6, 0xb

    goto/16 :goto_3
.end method

.method private processLegacyVVM(Lcom/android/internal/telephony/InboundSmsTracker;I[[B)I
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B

    .prologue
    const/4 v5, 0x2

    .line 2244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.legacyVVM] processLegacyVVM messageCount =["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2246
    const/4 v3, 0x0

    .line 2247
    .local v3, "msg":Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2248
    aget-object v6, p3, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "3gpp2"

    :goto_1
    invoke-static {v6, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 2247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2248
    :cond_0
    const-string v4, "3gpp"

    goto :goto_1

    .line 2251
    :cond_1
    if-nez v3, :cond_2

    .line 2252
    const-string v4, "[sms.mt.legacyVVM] sms is null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2254
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v4, v5

    .line 2278
    :goto_2
    return v4

    .line 2258
    :cond_2
    const/4 v2, 0x0

    .line 2260
    .local v2, "legacyVoiceMailNumber":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 2261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is =["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2263
    if-nez v2, :cond_3

    .line 2264
    const-string v4, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is null"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move v4, v5

    .line 2265
    goto :goto_2

    .line 2268
    :cond_3
    const-string v4, "900080002021"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2269
    const-string v4, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is 900080002021"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2271
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2273
    const-string v4, "pdus"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2274
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2275
    const/4 v4, 0x1

    goto :goto_2

    .line 2278
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v4, 0xb

    goto :goto_2
.end method

.method private processMobileboxProDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/16 v8, 0xb

    const/4 v10, 0x3

    .line 3965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[sms.mbp] processMessagePart messageCount =["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 3967
    const/4 v1, 0x0

    .line 3968
    .local v1, "bIsDTAG":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 3970
    .local v4, "mccmnc":Ljava/lang/String;
    const-string v7, "26201"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3972
    if-nez v1, :cond_0

    move v7, v8

    .line 4021
    :goto_0
    return v7

    .line 3977
    :cond_0
    const/4 v6, 0x0

    .line 3978
    .local v6, "msg":Landroid/telephony/SmsMessage;
    const-string v5, ""

    .line 3979
    .local v5, "messageBody":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_4

    .line 3980
    aget-object v9, p3, v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "3gpp2"

    :goto_2
    invoke-static {v9, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 3982
    if-nez v6, :cond_2

    .line 3979
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3980
    :cond_1
    const-string v7, "3gpp"

    goto :goto_2

    .line 3986
    :cond_2
    if-nez v3, :cond_3

    .line 3987
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 3989
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 3993
    :cond_4
    if-nez v6, :cond_5

    .line 3994
    const-string v7, "[sms.mbp] application directed sms null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 3995
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3996
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 3997
    const/4 v7, 0x2

    goto :goto_0

    .line 4000
    :cond_5
    iget-object v7, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v5, v7, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 4001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[processMessagePart] msg.mWrappedSmsMessage.messageBody = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 4004
    const/4 v2, -0x1

    .line 4005
    .local v2, "directedSmsStatus":I
    iget-object v7, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v7, :cond_6

    .line 4006
    iget-object v7, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->isDirectedToMailboxPro(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4007
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4009
    .local v0, "MBPintent":Landroid/content/Intent;
    const-string v7, "de.telekom.mds.mbp"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4010
    const-string v7, "pdus"

    invoke-virtual {v0, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4012
    const-string v7, "android.permission.RECEIVE_SMS"

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {p0, v0, v7, v8, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 4015
    const-string v7, "[processMessagePart] return processMobileboxProDirectedSMS = true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 4016
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4017
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 4018
    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "MBPintent":Landroid/content/Intent;
    :cond_6
    move v7, v8

    .line 4021
    goto/16 :goto_0
.end method

.method private regReassemblyBroadcastReceiver()V
    .locals 3

    .prologue
    .line 3170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3171
    .local v0, "Reassemblyfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3173
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$2;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3183
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3184
    return-void
.end method

.method private sendSavedPdusIndividually(Ljava/lang/String;)V
    .locals 10
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2964
    const/4 v6, 0x0

    .line 2965
    .local v6, "cursor":Landroid/database/Cursor;
    check-cast v9, [[B

    .line 2967
    .local v9, "pdus":[[B
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSavedPdusIndividually(), where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2972
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler$Segment;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2974
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 2990
    :cond_0
    if-eqz v6, :cond_1

    .line 2991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2993
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2995
    :goto_0
    return-void

    .line 2978
    :cond_2
    :try_start_1
    const-string v0, "pdu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2979
    .local v8, "pduColumn":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2980
    const/4 v0, 0x1

    new-array v9, v0, [[B

    .line 2981
    const/4 v0, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v9, v0

    .line 2982
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusForSprintSegment([[B)V

    .line 2983
    const-string v0, "sendSavedPdusIndividually(), One segment is sent individually."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2987
    .end local v8    # "pduColumn":I
    :catch_0
    move-exception v7

    .line 2988
    .local v7, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "sendSavedPdusIndividually(), query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2990
    if-eqz v6, :cond_3

    .line 2991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2993
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2986
    .end local v7    # "e":Landroid/database/SQLException;
    .restart local v8    # "pduColumn":I
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2990
    if-eqz v6, :cond_5

    .line 2991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2993
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2990
    .end local v8    # "pduColumn":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 2991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2993
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private trySegmentExpirationAfterBootUp()V
    .locals 2

    .prologue
    .line 3032
    sget-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->excutedSegmentExpirationAfterBootUp:Z

    if-eqz v0, :cond_0

    .line 3056
    :goto_0
    return-void

    .line 3035
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->excutedSegmentExpirationAfterBootUp:Z

    .line 3037
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 984
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 994
    :goto_0
    :sswitch_0
    return v0

    .line 986
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 984
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkDuplicateKddiMessage(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "messageId"    # I
    .param p2, "sent_date"    # Ljava/lang/Long;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 3663
    const/4 v12, 0x0

    .line 3665
    .local v12, "isDuplicated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDuplicateKddiMessage(), [KDDI] check duplicate ? : originAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "// timeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " // Message ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->DUPLICATE_PROJECTION:[Ljava/lang/String;

    const-string v4, "address = ? AND date_sent = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3673
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 3674
    const-string v1, "checkDuplicateKddiMessage(), [KDDI] Duplicate Error"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 3675
    const/4 v12, 0x0

    move v1, v12

    .line 3759
    :cond_0
    :goto_0
    return v1

    .line 3679
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 3680
    .local v9, "cursorCount":I
    if-nez v9, :cond_3

    .line 3681
    const-string v1, "checkDuplicateKddiMessage(), [KDDI]  Not duplicated message "

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 3682
    const/4 v12, 0x0

    .line 3695
    :goto_1
    if-eqz v8, :cond_2

    .line 3696
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3701
    :cond_2
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 3702
    .local v13, "vals":Landroid/content/ContentValues;
    const-string v1, "address"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    const-string v1, "date_sent"

    new-instance v2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3704
    const-string v1, "body"

    move-object/from16 v0, p4

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3705
    const-string v1, "person"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3706
    const-string v1, "thread_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3707
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "thread_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    const-string v6, "date_sent asc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3713
    if-nez v8, :cond_5

    .line 3714
    const-string v1, "checkDuplicateKddiMessage(), [KDDI] Duplicate.. Delete Error"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 3715
    const/4 v12, 0x0

    move v1, v12

    .line 3716
    goto :goto_0

    .line 3685
    .end local v13    # "vals":Landroid/content/ContentValues;
    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDuplicateKddiMessage(), [KDDI] Stored message data: _id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  address ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mcTimeStamp= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_2

    .line 3691
    :cond_4
    const-string v1, "checkDuplicateKddiMessage(), [KDDI] Duplicated message "

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3692
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 3719
    .restart local v13    # "vals":Landroid/content/ContentValues;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDuplicateKddiMessage(), [KDDI] getCount(), before delete the Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3721
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_6

    .line 3722
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 3723
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3725
    .local v7, "_id":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 3726
    .local v10, "dup_delete_MessageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "_id =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDuplicateKddiMessage(), [KDDI] delete old one in duplicate SMS database  _id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3734
    if-eqz v8, :cond_6

    .line 3735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3740
    .end local v7    # "_id":Ljava/lang/String;
    .end local v10    # "dup_delete_MessageUri":Landroid/net/Uri;
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 3741
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3745
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3757
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDuplicateKddiMessage(), [KDDI] is duplicate Message? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    move v1, v12

    .line 3759
    goto/16 :goto_0

    .line 3728
    .restart local v7    # "_id":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 3729
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3730
    const-string v1, "checkDuplicateKddiMessage(), [KDDI]  Can\'t access duplicate SMS database"

    invoke-static {v1, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3731
    const/4 v1, 0x0

    .line 3734
    if-eqz v8, :cond_0

    .line 3735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3734
    :cond_9
    if-eqz v8, :cond_6

    .line 3735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 3734
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_a

    .line 3735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 3746
    .end local v7    # "_id":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 3747
    .restart local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3748
    const-string v1, "checkDuplicateKddiMessage(), [KDDI] Can\'t access duplicate SMS database"

    invoke-static {v1, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3749
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3751
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v11

    .line 3752
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "checkDuplicateKddiMessage(), [KDDI] Fail to duplicate SMS"

    invoke-static {v1, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3753
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3754
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v1

    throw v1
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1445
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 1446
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1450
    :goto_0
    return-void

    .line 1448
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchDirectedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "applicationPrefix"    # Ljava/lang/String;
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1884
    new-instance v0, Landroid/content/Intent;

    const-string v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    const-string v1, "parameters"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1888
    const-string v1, "originator"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    const-string v1, "prefix"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1893
    return-void
.end method

.method protected dispatchDirectedVVM([[B)V
    .locals 5
    .param p1, "pdus"    # [[B

    .prologue
    .line 3598
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3600
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "3gpp2"

    .line 3601
    .local v1, "strFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3602
    const-string v1, "3gpp"

    .line 3604
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchDirectedVVM(), strFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3606
    const-string v2, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3607
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3608
    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3609
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 3611
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 2448
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 2449
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2453
    const-string v1, "format"

    move-object v0, p3

    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2456
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->setDeliverIntentIfNeeded(Landroid/content/Intent;)V

    .line 2458
    const/16 v0, 0x10

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 2459
    return-void
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->beforeDispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)Z

    move-result v0

    .local v0, "handled":Z
    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1438
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 3
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v1, 0x2

    .line 763
    const-string v2, "[sms.mt] dispatchMessage start ["

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 765
    if-nez p1, :cond_0

    .line 766
    const-string v2, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 786
    :goto_0
    return v1

    .line 770
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v2, :cond_1

    .line 772
    const-string v1, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 774
    const/4 v1, 0x1

    goto :goto_0

    .line 777
    :cond_1
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    const-string v2, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 781
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 782
    const-string v2, "Device encrypted - only parsing core apps"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 786
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 23
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v21

    .line 859
    .local v21, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const-string v3, "[sms.mt] dispatchNormalMessage start ["

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 860
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_c

    .line 862
    :cond_0
    const/4 v6, -0x1

    .line 863
    .local v6, "destPort":I
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_3

    .line 865
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 951
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZI)V

    .line 973
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v15

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_2
    :goto_1
    return v15

    .line 869
    :cond_3
    const/4 v3, 0x0

    const-string v4, "wifi_off_emergency_received"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 870
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_5

    .line 871
    const-string v3, "dispatchNormalMessage(), [KDDI] WIFI OFF SmsMessage is cdma instance "

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move-object/from16 v22, p1

    .line 872
    check-cast v22, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 873
    .local v22, "wifi_off_sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    move/from16 v20, v0

    .line 874
    .local v20, "serviceCategory":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), [KDDI] Service category is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 875
    const/4 v3, 0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_4

    const/16 v3, 0x26

    move/from16 v0, v20

    if-eq v0, v3, :cond_4

    const/16 v3, 0x28

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    .line 876
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), [KDDI] Service category  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " broadcast to WIFI!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 877
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMS_WIFI_OFF"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v17, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 884
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "serviceCategory":I
    .end local v22    # "wifi_off_sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "support_sprint_vvm"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "1"

    const-string v4, "ro.chameleon.vvm"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 886
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->parseDirectedVVM(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v15

    .line 887
    .local v15, "directedVvmApp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), directedVvmApp result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 888
    const/4 v3, 0x1

    if-eq v15, v3, :cond_2

    .line 895
    .end local v15    # "directedVvmApp":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "sprint_reassembly_sms"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 897
    const/4 v3, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 898
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->m_bMessageReassembly:Z

    .line 902
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "sprint_not_support_reassembly_sms_setting_menu"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 903
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->m_bMessageReassembly:Z

    .line 907
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), MessageReassembly setting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->m_bMessageReassembly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 909
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->m_bMessageReassembly:Z

    if-eqz v3, :cond_9

    .line 912
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v19

    .line 913
    .local v19, "segmentResult":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), processMessageSegment result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 914
    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_9

    move/from16 v15, v19

    .line 915
    goto/16 :goto_1

    .line 921
    .end local v19    # "segmentResult":I
    :cond_9
    const/4 v3, 0x0

    const-string v4, "kddi_message_duplicate_check"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 923
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_a

    move-object/from16 v3, p1

    .line 924
    check-cast v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 927
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 928
    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 929
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 933
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_a
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->checkDuplicateKddiMessage(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 934
    .local v16, "discard":Z
    if-eqz v16, :cond_b

    .line 936
    const-string v3, "dispatchNormalMessage(), [KDDI] discard duplicate Message "

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 937
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 939
    :cond_b
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 940
    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v15

    goto/16 :goto_1

    .line 956
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    .end local v16    # "discard":Z
    :cond_c
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 957
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v18, v0

    .line 958
    .local v18, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 966
    .restart local v6    # "destPort":I
    :goto_2
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v10, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v11, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZI)V

    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto/16 :goto_0

    .line 958
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_d
    const/4 v6, -0x1

    goto :goto_2
.end method

.method protected dispatchOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;)I
    .locals 9
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v8, 0x3

    const/4 v5, 0x1

    .line 2390
    const-string v6, "dispatchOperatorMessage"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2391
    if-nez p2, :cond_1

    .line 2392
    const-string v5, "dispatchOperatorMessage sms null"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2393
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2394
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 2395
    const/4 v5, 0x2

    .line 2444
    :cond_0
    :goto_0
    return v5

    .line 2398
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/SmsOperatorBasicMessage;

    .line 2399
    .local v2, "operatorMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v2, :cond_2

    .line 2401
    invoke-interface {v2}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v4

    .line 2402
    .local v4, "value":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 2405
    const-string v6, "valid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_3

    .line 2406
    invoke-interface {v2, p0}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    .line 2407
    .local v0, "dispatchResult":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchResult = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2408
    if-eqz v0, :cond_2

    .line 2410
    if-ne v0, v5, :cond_0

    .line 2411
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto :goto_0

    .line 2418
    .end local v0    # "dispatchResult":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchOperatorMessage OPERATE_MESSAGE_VALID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "valid"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2419
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2420
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto :goto_0

    .line 2430
    .end local v2    # "operatorMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    .end local v4    # "value":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v6

    and-int/lit16 v3, v6, 0xff

    .line 2431
    .local v3, "pid_byte":I
    const/16 v6, 0x49

    if-lt v3, v6, :cond_5

    const/16 v6, 0x5d

    if-le v3, v6, :cond_8

    :cond_5
    const/16 v6, 0x60

    if-lt v3, v6, :cond_6

    const/16 v6, 0x7b

    if-le v3, v6, :cond_8

    :cond_6
    const/16 v6, 0x80

    if-lt v3, v6, :cond_7

    const/16 v6, 0xbf

    if-le v3, v6, :cond_8

    :cond_7
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_9

    const-string v6, "KT"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "KTFotaMessage"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eq v6, v5, :cond_9

    .line 2438
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchOperatorMessage(), message discard : [reserved] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2439
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2440
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto/16 :goto_0

    .line 2444
    :cond_9
    const/16 v5, 0xb

    goto/16 :goto_0
.end method

.method protected dispatchPdus([[B)V
    .locals 4
    .param p1, "pdus"    # [[B

    .prologue
    .line 1907
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1908
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1909
    const-string v1, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1912
    return-void
.end method

.method protected dispatchPdusForSprintSegment([[B)V
    .locals 4
    .param p1, "pdus"    # [[B

    .prologue
    .line 3145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3147
    const-string v1, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3148
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 3150
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 5
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 1897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1898
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1899
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1900
    const-string v2, "format"

    const-string v3, "3gpp2"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1901
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1902
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1904
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 408
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 673
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 674
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception processing incoming SMS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v11, "sms_permission_tracking"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 680
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 681
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 683
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 684
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 685
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNewSms(), [Permission Check] allowed SMS_RECEIVED_ACTION Activity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 690
    .end local v2    # "i":I
    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 692
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 693
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 694
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNewSms(), [Permission Check] allowed SMS_DELIVER_ACTION Activity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 702
    .end local v2    # "i":I
    .end local v4    # "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/SmsMessage;

    .line 704
    .local v7, "sms":Landroid/telephony/SmsMessage;
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v11, "cdma_sms_cdg2"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(), CDMA SMS CDG2 Test mode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v12, "cdma_sms_cdg2"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 706
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 707
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v11, "sms_over_lgims"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 708
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(), KEY_SMS_OVER_LGIMS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v12, "sms_over_lgims"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 709
    const-string v10, "persist.radio.sms_ims"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "mImsRegi":Ljava/lang/String;
    const-string v10, "false"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 711
    const-string v10, "handleMessage(), IMS is not registered!Execute SMS CDG2 Test mode"

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 712
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 713
    iget-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v8, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 714
    .local v8, "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v9

    .line 716
    .local v9, "teleService":I
    const/16 v10, 0x1002

    if-ne v9, v10, :cond_4

    .line 717
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getSMSInboxMessageCount()I

    move-result v10

    const/16 v11, 0x32

    if-lt v10, v11, :cond_4

    .line 718
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 739
    .end local v3    # "mImsRegi":Ljava/lang/String;
    .end local v8    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v9    # "teleService":I
    :cond_4
    :goto_3
    iget-object v10, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 747
    .end local v7    # "sms":Landroid/telephony/SmsMessage;
    .local v6, "result":I
    :goto_4
    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 748
    const/4 v10, 0x1

    if-ne v6, v10, :cond_7

    const/4 v1, 0x1

    .line 749
    .local v1, "handled":Z
    :goto_5
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v6, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 722
    .end local v1    # "handled":Z
    .end local v6    # "result":I
    .restart local v3    # "mImsRegi":Ljava/lang/String;
    .restart local v7    # "sms":Landroid/telephony/SmsMessage;
    :cond_5
    :try_start_1
    const-string v10, "handleMessage(), IMS is registered!Ignore SMS CDG2 Test mode"

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 740
    .end local v3    # "mImsRegi":Ljava/lang/String;
    .end local v7    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v0

    .line 741
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v10, "Exception dispatching message"

    invoke-virtual {p0, v10, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    const/4 v6, 0x2

    .restart local v6    # "result":I
    goto :goto_4

    .line 725
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "result":I
    .restart local v7    # "sms":Landroid/telephony/SmsMessage;
    :cond_6
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(), KEY_SMS_OVER_LGIMS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v12, "sms_over_lgims"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 726
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 727
    iget-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v8, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 728
    .restart local v8    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v9

    .line 730
    .restart local v9    # "teleService":I
    const/16 v10, 0x1002

    if-ne v9, v10, :cond_4

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getSMSInboxMessageCount()I

    move-result v10

    const/16 v11, 0x32

    if-lt v10, v11, :cond_4

    .line 732
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 748
    .end local v7    # "sms":Landroid/telephony/SmsMessage;
    .end local v8    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v9    # "teleService":I
    .restart local v6    # "result":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_5
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 15
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 2553
    const/4 v7, 0x0

    .line 2554
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2556
    .local v9, "isByPass":Z
    if-nez p1, :cond_1

    .line 2557
    const/4 v0, 0x0

    .line 2604
    :cond_0
    :goto_0
    return v0

    .line 2559
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 2561
    .local v10, "messageBody":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;

    move-result-object v11

    .line 2562
    .local v11, "pi":Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;
    if-nez v11, :cond_2

    .line 2563
    const/4 v0, 0x0

    goto :goto_0

    .line 2566
    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getSequence()I

    move-result v12

    .line 2567
    .local v12, "sequence":I
    invoke-virtual {v11}, Lcom/android/internal/telephony/InboundSmsHandler$PaginationIndicator;->getTotalCount()I

    move-result v13

    .line 2569
    .local v13, "totalCount":I
    if-gt v12, v13, :cond_3

    const/16 v0, 0xa

    if-gt v13, v0, :cond_3

    const/4 v0, 0x2

    if-ge v13, v0, :cond_4

    .line 2570
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2572
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v0, "address ="

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2573
    .local v14, "where":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    const-string v0, " AND ( sequence ="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    const-string v0, "totalCount !="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2582
    if-nez v7, :cond_5

    .line 2583
    const/4 v0, 0x0

    .line 2600
    if-eqz v7, :cond_0

    .line 2601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2585
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2586
    const-string v0, "totalCount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 2587
    .local v6, "TotalCountIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v13, :cond_5

    .line 2588
    const/4 v9, 0x1

    .line 2593
    .end local v6    # "TotalCountIndex":I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_7

    if-nez v9, :cond_7

    .line 2594
    const/4 v0, 0x0

    .line 2600
    if-eqz v7, :cond_0

    .line 2601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2600
    :cond_7
    if-eqz v7, :cond_8

    .line 2601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2604
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2596
    :catch_0
    move-exception v8

    .line 2597
    .local v8, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "isSegmentedPDU(), query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2598
    const/4 v0, 0x0

    .line 2600
    if-eqz v7, :cond_0

    .line 2601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2600
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 2601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1855
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1864
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 837
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 838
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method protected parseDirectedSMS(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/BroadcastReceiver;)I
    .locals 33
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1982
    const/16 v28, 0x0

    .line 1983
    .local v28, "processStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1984
    const-string v2, "[sms.mt.parseDirectedSMS] sms.getMessageBody() is NULL "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1985
    const/16 v28, -0x1

    move/from16 v29, v28

    .line 2163
    .end local v28    # "processStatus":I
    .local v29, "processStatus":I
    :goto_0
    return v29

    .line 1987
    .end local v29    # "processStatus":I
    .restart local v28    # "processStatus":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] sms.getMessageBody() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1990
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1991
    .local v14, "applications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 1994
    .local v25, "packageIndex":I
    const/16 v16, 0x1

    .line 1998
    .local v16, "bIsSeparator":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "//VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1999
    const-string v2, "[sms.mt.parseDirectedSMS] not startsWith //VZW "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2000
    const/16 v17, 0x0

    .line 2008
    .local v17, "bStartWithVZW":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 2009
    .local v9, "appDirectedSMS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] parseDirectedSMS / appDirectedSMS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2012
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "//VZWLBSROVER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2013
    const-string v2, "[sms.mt.parseDirectedSMS] //VZWLBSROVER"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2016
    const/16 v28, -0x2

    move/from16 v29, v28

    .end local v28    # "processStatus":I
    .restart local v29    # "processStatus":I
    goto :goto_0

    .line 2003
    .end local v9    # "appDirectedSMS":Ljava/lang/String;
    .end local v17    # "bStartWithVZW":Z
    .end local v29    # "processStatus":I
    .restart local v28    # "processStatus":I
    :cond_1
    const-string v2, "[sms.mt.parseDirectedSMS] startsWith //VZW "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2004
    const/16 v17, 0x1

    .restart local v17    # "bStartWithVZW":Z
    goto :goto_1

    .line 2023
    .restart local v9    # "appDirectedSMS":Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_6

    const-string v2, "//VZW"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 2027
    .local v32, "tempSMS":Ljava/lang/String;
    :goto_2
    const-string v2, ":"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 2028
    const-string v2, "[sms.mt.parseDirectedSMS] check separator"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2029
    const/16 v16, 0x0

    .line 2035
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 2036
    .local v27, "pkgManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v21

    .line 2039
    .local v21, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getVZWSignatures(Landroid/content/pm/PackageManager;)Z

    .line 2041
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 2042
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appInfo.packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2043
    invoke-static {v10}, Lcom/android/internal/telephony/vzwSpec;->isSystemApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "VZWSMS"

    invoke-static {v2, v3, v5}, Lcom/android/internal/telephony/vzwSpec;->isAVSPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isItSignedByVZW(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2051
    :cond_4
    const/16 v30, 0x0

    .line 2052
    .local v30, "receiverCount":I
    const/16 v22, 0x0

    .line 2053
    .local v22, "isReceiverMatched":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    .local v13, "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 2065
    .local v26, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    .line 2066
    .local v31, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v31, :cond_8

    .line 2067
    move-object/from16 v15, v31

    .local v15, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v0, v15

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    aget-object v8, v15, v20

    .line 2068
    .local v8, "actInfo":Landroid/content/pm/ActivityInfo;
    add-int/lit8 v30, v30, 0x1

    .line 2072
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] receiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actInfo.metaData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receiverCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2080
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    .line 2081
    .local v24, "metaData":Landroid/os/Bundle;
    if-nez v24, :cond_7

    .line 2082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] metaData is null. Unable to get meta data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2067
    .end local v24    # "metaData":Landroid/os/Bundle;
    :cond_5
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .end local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v20    # "i$":I
    .end local v21    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v22    # "isReceiverMatched":Z
    .end local v23    # "len$":I
    .end local v26    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v27    # "pkgManager":Landroid/content/pm/PackageManager;
    .end local v30    # "receiverCount":I
    .end local v31    # "receivers":[Landroid/content/pm/ActivityInfo;
    .end local v32    # "tempSMS":Ljava/lang/String;
    :cond_6
    move-object/from16 v32, v9

    .line 2023
    goto/16 :goto_2

    .line 2057
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v22    # "isReceiverMatched":Z
    .restart local v27    # "pkgManager":Landroid/content/pm/PackageManager;
    .restart local v30    # "receiverCount":I
    .restart local v32    # "tempSMS":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 2058
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] Can\'t find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2059
    add-int/lit8 v25, v25, 0x1

    .line 2060
    goto/16 :goto_3

    .line 2073
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "arr$":[Landroid/content/pm/ActivityInfo;
    .restart local v20    # "i$":I
    .restart local v23    # "len$":I
    .restart local v26    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v31    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v18

    .line 2074
    .restart local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] Can\'t find receivers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appInfo.packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2075
    add-int/lit8 v25, v25, 0x1

    .line 2076
    goto :goto_5

    .line 2084
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    :cond_7
    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2085
    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] applicationPrefix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.verizon.directedAppSMS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " applicationPrefixList.size() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2087
    const/16 v22, 0x1

    .line 2088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] matched !! receiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actInfo.metaData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2095
    .end local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v24    # "metaData":Landroid/os/Bundle;
    :cond_8
    if-nez v22, :cond_b

    .line 2097
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 2098
    :cond_9
    const-string v2, "[sms.mt.parseDirectedSMS] appInfo.metaData == null"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2099
    add-int/lit8 v25, v25, 0x1

    .line 2100
    goto/16 :goto_3

    .line 2103
    :cond_a
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] appInfo = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] appInfo.metaData = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] appInfo.metaData.getString(METADATA_NAME) = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.verizon.directedAppSMS"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2108
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 2110
    const-string v2, "[sms.mt.parseDirectedSMS] applicationPrefixList is Empty"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2155
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "isReceiverMatched":Z
    .end local v26    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v30    # "receiverCount":I
    .end local v31    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 2112
    .restart local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "isReceiverMatched":Z
    .restart local v26    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v30    # "receiverCount":I
    .restart local v31    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v11, 0x0

    .local v11, "appPrefixCount":I
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    .line 2113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] applicationPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2118
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_12

    .line 2119
    const/4 v2, 0x0

    const-string v3, ":"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2120
    .local v12, "applicationPrefixFromSMSBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] SMS contain a separator(:), applicationPrefixFromSMSBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2130
    :cond_e
    if-eqz v16, :cond_f

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    if-nez v16, :cond_11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2135
    :cond_10
    if-eqz v16, :cond_13

    .line 2136
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2140
    .local v4, "parameters":Ljava/lang/String;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] parameters : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2143
    if-lez v30, :cond_14

    .line 2144
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchDirectedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2150
    :goto_8
    const/16 v28, 0x1

    .line 2112
    .end local v4    # "parameters":Ljava/lang/String;
    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 2122
    .end local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    :cond_12
    move-object/from16 v12, v32

    .line 2123
    .restart local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v3, v2, :cond_e

    .line 2124
    const-string v2, "[sms.mt.parseDirectedSMS] SMS length is too short to compare !"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_9

    .line 2138
    :cond_13
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "parameters":Ljava/lang/String;
    goto :goto_7

    .line 2146
    :cond_14
    const-string v2, "[sms.mt.parseDirectedSMS] There is not a receiver. No run dispatchDirectedSms !!"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_8

    .line 2158
    .end local v4    # "parameters":Ljava/lang/String;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appPrefixCount":I
    .end local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "isReceiverMatched":Z
    .end local v26    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v30    # "receiverCount":I
    .end local v31    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_15
    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_16

    .line 2160
    if-eqz v17, :cond_17

    const/16 v28, 0x0

    .line 2162
    :cond_16
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] processStatus=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move/from16 v29, v28

    .line 2163
    .end local v28    # "processStatus":I
    .restart local v29    # "processStatus":I
    goto/16 :goto_0

    .line 2160
    .end local v29    # "processStatus":I
    .restart local v28    # "processStatus":I
    :cond_17
    const/16 v28, -0x1

    goto :goto_a
.end method

.method protected parseDirectedVVM(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v6, 0xb

    const/4 v7, 0x1

    .line 3614
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 3615
    const-string v7, "parseDirectedVVM(), sms.getMessageBody() is NULL."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3653
    :goto_0
    return v6

    .line 3619
    :cond_0
    new-array v4, v7, [[B

    .line 3620
    .local v4, "pdus":[[B
    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v9

    aput-object v9, v4, v8

    .line 3625
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, "//ANDROID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, "//CM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3626
    :cond_1
    const-string v7, "parseDirectedVVM(), No matching string."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 3632
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3633
    .local v5, "pkgManager":Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 3635
    .local v3, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3636
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "com.coremobility.app.vnotes"

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3638
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDirectedVVM(), appInfo.packageName: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3639
    const-string v6, "parseDirectedVVM(), VVM App is installed."

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3640
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchDirectedVVM([[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 3641
    goto :goto_0

    .line 3644
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 3645
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDirectedVVM(), Exception : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 3648
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchDirectedVVM([[B)V

    move v6, v7

    .line 3649
    goto/16 :goto_0

    .line 3652
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_4
    const-string v7, "parseDirectedVVM(), VVM Control message is received. But VVM App is not installed."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected processKizONMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v9, 0x0

    .line 3314
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3315
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 3318
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v8, "com.lge.band"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3324
    :goto_0
    if-eqz v6, :cond_0

    const-string v8, "com.lge.band"

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v8, v9

    .line 3348
    :goto_1
    return v8

    .line 3319
    :catch_0
    move-exception v0

    .line 3320
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "processKizONMessage(), NameNotFoundException: KizON package doesn\'t existed."

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 3321
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3328
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    aget-object v10, p2, v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "3gpp2"

    :goto_2
    invoke-static {v10, v8}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 3329
    .local v4, "msg":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_3

    .line 3330
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 3331
    .local v3, "messageBody":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3333
    const-string v8, "^KizON.*\\[[0-9a-zA-Z+/=]{6}\\]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 3334
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3336
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processKizONMessage(), Found pattern : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3338
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3339
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "com.lge.band"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3340
    const-string v8, "processKizONMessage(), Delivering SMS to : com.lge.band"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3341
    const-string v8, "pdus"

    invoke-virtual {v1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3342
    const-string v8, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3343
    const-string v8, "android.permission.RECEIVE_SMS"

    const/16 v9, 0x10

    invoke-virtual {p0, v1, v8, v9, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 3344
    const/4 v8, 0x1

    goto :goto_1

    .line 3328
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "messageBody":Ljava/lang/String;
    .end local v4    # "msg":Landroid/telephony/SmsMessage;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    :cond_2
    const-string v8, "3gpp"

    goto :goto_2

    .restart local v4    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v8, v9

    .line 3348
    goto :goto_1
.end method

.method protected processMcAfeeMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3289
    const-string v4, "service.wsandroid.lge.token"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3290
    .local v3, "token":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMcAfeeMessage(), McAfee token : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3292
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 3309
    :goto_0
    return v4

    .line 3296
    :cond_0
    aget-object v7, p2, v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "3gpp2"

    :goto_1
    invoke-static {v7, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 3297
    .local v2, "msg":Landroid/telephony/SmsMessage;
    if-eqz v2, :cond_2

    .line 3298
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 3299
    .local v1, "messageBody":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 3300
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3301
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.wsandroid.suite.lge"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3302
    const-string v4, "processMcAfeeMessage(), Delivering SMS to : com.wsandroid.suite.lge"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3303
    const-string v4, "pdus"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3304
    const-string v4, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3305
    const-string v4, "android.permission.RECEIVE_SMS"

    const/16 v5, 0x10

    invoke-virtual {p0, v0, v4, v5, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    move v4, v6

    .line 3306
    goto :goto_0

    .line 3296
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "messageBody":Ljava/lang/String;
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    const-string v4, "3gpp"

    goto :goto_1

    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    move v4, v5

    .line 3309
    goto :goto_0
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 58
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1006
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v42

    .line 1008
    .local v42, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v25

    .line 1010
    .local v25, "destPort":I
    const/16 v37, 0x0

    .line 1013
    .local v37, "iccSring":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1014
    .local v30, "exceedFirstTimePeriod":Z
    const/16 v31, 0x0

    .line 1015
    .local v31, "exceedSecondTimePeriod":Z
    const/16 v17, 0x0

    .line 1016
    .local v17, "allSegmentReceived":Z
    const/16 v43, 0x0

    .line 1017
    .local v43, "missingSegIndex":Ljava/lang/String;
    const/16 v55, 0x0

    .line 1020
    .local v55, "stitchRefMsg":Landroid/telephony/SmsMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt] processMessagePart messageCount = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1022
    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_1

    .line 1024
    const-string v4, "[sms.mt] single-part message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1025
    const/4 v4, 0x1

    new-array v0, v4, [[B

    move-object/from16 v51, v0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v51, v4

    .line 1251
    .local v51, "pdus":[[B
    :cond_0
    :goto_0
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1253
    .local v11, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v4, 0xb84

    move/from16 v0, v25

    if-ne v0, v4, :cond_26

    .line 1255
    const-string v13, ""

    .line 1256
    .local v13, "smscAddress":Ljava/lang/String;
    const-string v14, ""

    .line 1257
    .local v14, "originatingAddress":Ljava/lang/String;
    const/16 v54, -0x1

    .line 1261
    .local v54, "result":I
    new-instance v47, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v47 .. v47}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1262
    .local v47, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v18, v51

    .local v18, "arr$":[[B
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v41, v0

    .local v41, "len$":I
    const/16 v35, 0x0

    .local v35, "i$":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v41

    if-ge v0, v1, :cond_23

    aget-object v48, v18, v35

    .line 1264
    .local v48, "pdu":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "kddi_cdma_wap_push"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1265
    const-string v4, "[sms.mt] cdma wap push) "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1266
    invoke-static/range {v48 .. v48}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v45

    .line 1267
    .local v45, "msg":Landroid/telephony/SmsMessage;
    if-nez v45, :cond_20

    .line 1262
    .end local v45    # "msg":Landroid/telephony/SmsMessage;
    :goto_2
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 1027
    .end local v11    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v13    # "smscAddress":Ljava/lang/String;
    .end local v14    # "originatingAddress":Ljava/lang/String;
    .end local v18    # "arr$":[[B
    .end local v35    # "i$":I
    .end local v41    # "len$":I
    .end local v47    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v48    # "pdu":[B
    .end local v51    # "pdus":[[B
    .end local v54    # "result":I
    :cond_1
    const-string v4, "[sms.mt] not single-part message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1029
    const/16 v23, 0x0

    .line 1032
    .local v23, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 1033
    .local v15, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    .line 1034
    .local v53, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 1037
    .local v20, "count":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v15, v8, v4

    const/4 v4, 0x1

    aput-object v53, v8, v4

    const/4 v4, 0x2

    aput-object v20, v8, v4

    .line 1040
    .local v8, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1055
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1057
    .local v32, "firstTime":J
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1058
    const-string v4, "time"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v56

    .line 1059
    .local v56, "timeColumn":I
    move-object/from16 v0, v23

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 1061
    .end local v56    # "timeColumn":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1062
    .local v21, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x14

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v27, v0

    .line 1064
    .local v27, "dispatchTime":J
    const-wide/32 v4, 0x2932e00

    add-long v4, v4, v32

    cmp-long v4, v21, v4

    if-lez v4, :cond_8

    .line 1065
    const/16 v31, 0x1

    .line 1069
    :cond_3
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] exceedSecondTimePeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] exceedFirstTimePeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1074
    .end local v21    # "currentTime":J
    .end local v27    # "dispatchTime":J
    .end local v32    # "firstTime":J
    :cond_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 1075
    .local v24, "cursorCount":I
    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_11

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1084
    if-nez v31, :cond_9

    if-nez v30, :cond_9

    .line 1085
    const-string v4, "processMessagePart, [RED] short return"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    const/4 v4, 0x0

    .line 1245
    if-eqz v23, :cond_5

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1422
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v15    # "address":Ljava/lang/String;
    .end local v20    # "count":Ljava/lang/String;
    .end local v23    # "cursor":Landroid/database/Cursor;
    .end local v24    # "cursorCount":I
    .end local v53    # "refNumber":Ljava/lang/String;
    :cond_5
    :goto_5
    return v4

    .line 1043
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    .restart local v15    # "address":Ljava/lang/String;
    .restart local v20    # "count":Ljava/lang/String;
    .restart local v23    # "cursor":Landroid/database/Cursor;
    .restart local v53    # "refNumber":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "use_original_telephony_provider"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    goto/16 :goto_3

    .line 1050
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    goto/16 :goto_3

    .line 1066
    .restart local v21    # "currentTime":J
    .restart local v27    # "dispatchTime":J
    .restart local v32    # "firstTime":J
    :cond_8
    add-long v4, v32, v27

    cmp-long v4, v21, v4

    if-lez v4, :cond_3

    .line 1067
    const/16 v30, 0x1

    goto/16 :goto_4

    .line 1088
    .end local v21    # "currentTime":J
    .end local v27    # "dispatchTime":J
    .end local v32    # "firstTime":J
    .restart local v24    # "cursorCount":I
    :cond_9
    const-string v4, "processMessagePart, do not return. It\'s exceeded waiting dispatching time"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1102
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "seperate_processing_sms_uicc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1103
    const-string v4, "icc_index"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1104
    .local v36, "iccColumn":I
    const-string v4, "pdu"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 1105
    .local v49, "pduColumn":I
    new-instance v38, Ljava/lang/String;

    invoke-direct/range {v38 .. v38}, Ljava/lang/String;-><init>()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    .end local v37    # "iccSring":Ljava/lang/String;
    .local v38, "iccSring":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v37, v38

    .line 1108
    .end local v38    # "iccSring":Ljava/lang/String;
    .restart local v37    # "iccSring":Ljava/lang/String;
    :cond_a
    :try_start_3
    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_b

    .line 1109
    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1110
    const-string v4, ","

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1112
    :cond_b
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1114
    :goto_7
    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1115
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v4

    if-lez v4, :cond_c

    .line 1116
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1122
    .end local v36    # "iccColumn":I
    .end local v49    # "pduColumn":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1123
    if-eqz v31, :cond_12

    .line 1124
    const/4 v4, 0x1

    new-array v0, v4, [[B

    move-object/from16 v51, v0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v51, v4

    .line 1133
    .restart local v51    # "pdus":[[B
    :cond_d
    :goto_8
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1136
    if-eqz v31, :cond_14

    .line 1137
    const-string v4, "processMessagePart, [RED] exceedSecondTimePeriod! Do not get pdus from db"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1169
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1170
    if-eqz v30, :cond_18

    .line 1171
    new-instance v44, Ljava/lang/String;

    invoke-direct/range {v44 .. v44}, Ljava/lang/String;-><init>()V

    .line 1172
    .end local v43    # "missingSegIndex":Ljava/lang/String;
    .local v44, "missingSegIndex":Ljava/lang/String;
    const/16 v34, 0x0

    .local v34, "i":I
    move-object/from16 v43, v44

    .end local v44    # "missingSegIndex":Ljava/lang/String;
    .restart local v43    # "missingSegIndex":Ljava/lang/String;
    :goto_9
    move/from16 v0, v34

    move/from16 v1, v42

    if-ge v0, v1, :cond_18

    .line 1173
    aget-object v4, v51, v34

    if-eqz v4, :cond_16

    aget-object v4, v51, v34

    array-length v4, v4

    if-lez v4, :cond_16

    .line 1175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] fill pdu seg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1172
    :cond_f
    :goto_a
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 1091
    .end local v34    # "i":I
    .end local v51    # "pdus":[[B
    :cond_10
    const/4 v4, 0x0

    .line 1245
    if-eqz v23, :cond_5

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1096
    :cond_11
    const/16 v17, 0x1

    .line 1097
    :try_start_4
    const-string v4, "processMessagePart, [RED] allSegmentReceived"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 1241
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v15    # "address":Ljava/lang/String;
    .end local v20    # "count":Ljava/lang/String;
    .end local v24    # "cursorCount":I
    .end local v53    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 1242
    .local v29, "e":Landroid/database/SQLException;
    :goto_b
    :try_start_5
    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1243
    const/4 v4, 0x0

    .line 1245
    if-eqz v23, :cond_5

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1126
    .end local v29    # "e":Landroid/database/SQLException;
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    .restart local v15    # "address":Ljava/lang/String;
    .restart local v20    # "count":Ljava/lang/String;
    .restart local v24    # "cursorCount":I
    .restart local v53    # "refNumber":Ljava/lang/String;
    :cond_12
    :try_start_6
    move/from16 v0, v42

    new-array v0, v0, [[B

    move-object/from16 v51, v0

    .restart local v51    # "pdus":[[B
    goto/16 :goto_8

    .line 1131
    .end local v51    # "pdus":[[B
    :cond_13
    move/from16 v0, v42

    new-array v0, v0, [[B

    move-object/from16 v51, v0

    .restart local v51    # "pdus":[[B
    goto/16 :goto_8

    .line 1143
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v5

    sub-int v39, v4, v5

    .line 1145
    .local v39, "index":I
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v51, v39

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1149
    if-nez v55, :cond_15

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] createFromPdu for stitchRefMsg index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1151
    aget-object v4, v51, v39

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v55

    .line 1158
    :cond_15
    if-nez v39, :cond_d

    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1159
    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 1161
    .local v52, "port":I
    invoke-static/range {v52 .. v52}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v52

    .line 1162
    const/4 v4, -0x1

    move/from16 v0, v52

    if-eq v0, v4, :cond_d

    .line 1163
    move/from16 v25, v52

    goto/16 :goto_8

    .line 1177
    .end local v39    # "index":I
    .end local v52    # "port":I
    .restart local v34    # "i":I
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] fill missing seg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1178
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1179
    const-string v4, ","

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1180
    if-eqz v55, :cond_f

    .line 1181
    invoke-virtual/range {v55 .. v55}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v51, v34

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, pdus["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = stitchRefMsg.getPdu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a

    .line 1245
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v15    # "address":Ljava/lang/String;
    .end local v20    # "count":Ljava/lang/String;
    .end local v24    # "cursorCount":I
    .end local v34    # "i":I
    .end local v51    # "pdus":[[B
    .end local v53    # "refNumber":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :goto_c
    if-eqz v23, :cond_17

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4

    .line 1187
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    .restart local v15    # "address":Ljava/lang/String;
    .restart local v20    # "count":Ljava/lang/String;
    .restart local v24    # "cursorCount":I
    .restart local v51    # "pdus":[[B
    .restart local v53    # "refNumber":Ljava/lang/String;
    :cond_18
    if-nez v17, :cond_1b

    if-nez v30, :cond_19

    if-eqz v31, :cond_1b

    .line 1188
    :cond_19
    const/4 v4, 0x1

    :try_start_7
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    .line 1192
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] tracker.isNeedToKeepDB="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1197
    :cond_1a
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1198
    .restart local v11    # "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v40, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v40, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    const-string v5, "kddi_message_duplicate_check"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    const/4 v4, 0x1

    move/from16 v0, v42

    if-eq v0, v4, :cond_1f

    .line 1202
    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v50, v0

    .line 1203
    .local v50, "pduCount":I
    move/from16 v0, v50

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    move-object/from16 v46, v0

    .line 1204
    .local v46, "msgs":[Landroid/telephony/SmsMessage;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_e
    move/from16 v0, v34

    move/from16 v1, v50

    if-ge v0, v1, :cond_1c

    .line 1205
    aget-object v4, v51, v34

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v46, v34

    .line 1204
    add-int/lit8 v34, v34, 0x1

    goto :goto_e

    .line 1190
    .end local v11    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v34    # "i":I
    .end local v40    # "intent":Landroid/content/Intent;
    .end local v46    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v50    # "pduCount":I
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    goto :goto_d

    .line 1208
    .restart local v11    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v34    # "i":I
    .restart local v40    # "intent":Landroid/content/Intent;
    .restart local v46    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v50    # "pduCount":I
    :cond_1c
    const/4 v4, 0x0

    aget-object v4, v46, v4

    iget-object v4, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    instance-of v4, v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v4, :cond_1e

    .line 1209
    const/4 v4, 0x0

    aget-object v4, v46, v4

    iget-object v4, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    .line 1211
    const-string v4, "processMessagePart(), Broadcast Message!!, No duplicate check"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v19

    .line 1214
    .local v19, "componentName":Landroid/content/ComponentName;
    if-eqz v19, :cond_1d

    .line 1216
    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart(), Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1220
    :cond_1d
    const-string v4, "pdus"

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1221
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    const-string v4, "android.permission.RECEIVE_SMS"

    const/16 v5, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v4, v5, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1225
    const/4 v4, 0x1

    .line 1245
    if-eqz v23, :cond_5

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1230
    .end local v19    # "componentName":Landroid/content/ComponentName;
    :cond_1e
    const/4 v4, 0x0

    :try_start_8
    aget-object v4, v46, v4

    iget-object v4, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v5, 0x0

    aget-object v5, v46, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v46, v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v46, v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->checkDuplicateKddiMessage(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 1232
    .local v26, "discard":Z
    if-eqz v26, :cond_1f

    .line 1234
    const-string v4, "processMessagePart(), [KDDI] discard duplicate Message "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1235
    const/4 v4, 0x0

    .line 1245
    if-eqz v23, :cond_5

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1245
    .end local v26    # "discard":Z
    .end local v34    # "i":I
    .end local v46    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v50    # "pduCount":I
    :cond_1f
    if-eqz v23, :cond_0

    .line 1246
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1270
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v15    # "address":Ljava/lang/String;
    .end local v20    # "count":Ljava/lang/String;
    .end local v23    # "cursor":Landroid/database/Cursor;
    .end local v24    # "cursorCount":I
    .end local v40    # "intent":Landroid/content/Intent;
    .end local v53    # "refNumber":Ljava/lang/String;
    .restart local v13    # "smscAddress":Ljava/lang/String;
    .restart local v14    # "originatingAddress":Ljava/lang/String;
    .restart local v18    # "arr$":[[B
    .restart local v35    # "i$":I
    .restart local v41    # "len$":I
    .restart local v45    # "msg":Landroid/telephony/SmsMessage;
    .restart local v47    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v48    # "pdu":[B
    .restart local v54    # "result":I
    :cond_20
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v48

    .line 1287
    .end local v45    # "msg":Landroid/telephony/SmsMessage;
    :cond_21
    :goto_f
    const/4 v4, 0x0

    move-object/from16 v0, v48

    array-length v5, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 1274
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-nez v4, :cond_21

    .line 1275
    const-string v4, "3gpp"

    move-object/from16 v0, v48

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v45

    .line 1277
    .restart local v45    # "msg":Landroid/telephony/SmsMessage;
    if-eqz v45, :cond_21

    .line 1278
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v13

    .line 1279
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    .line 1280
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v48

    goto :goto_f

    .line 1290
    .end local v45    # "msg":Landroid/telephony/SmsMessage;
    .end local v48    # "pdu":[B
    :cond_23
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v47 .. v47}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object/from16 v12, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 1295
    const/4 v4, -0x1

    move/from16 v0, v54

    if-eq v0, v4, :cond_24

    .line 1296
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1300
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1302
    const/4 v4, -0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_25

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1305
    .end local v13    # "smscAddress":Ljava/lang/String;
    .end local v14    # "originatingAddress":Ljava/lang/String;
    .end local v18    # "arr$":[[B
    .end local v35    # "i$":I
    .end local v41    # "len$":I
    .end local v47    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v54    # "result":I
    :cond_26
    const/4 v4, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_29

    .line 1307
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processSPTSMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_27

    .line 1308
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1312
    :cond_27
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processMcAfeeMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_28

    .line 1313
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1317
    :cond_28
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processKizONMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_29

    .line 1318
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1324
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "OperatorMessage"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 1325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)I

    move-result v54

    .line 1326
    .restart local v54    # "result":I
    const/16 v4, 0xb

    move/from16 v0, v54

    if-eq v0, v4, :cond_2a

    .line 1327
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1333
    .end local v54    # "result":I
    :cond_2a
    const/4 v4, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_32

    .line 1334
    const-string v4, "[sms.mt] processMessagePart destPort is not -1"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "allow_sending_MBP_directed_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1337
    const/16 v54, 0xb

    .line 1340
    .restart local v54    # "result":I
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "de.telekom.mds.mbp"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 1341
    .local v16, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2b

    .line 1343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processMobileboxProDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v54

    .line 1349
    .end local v16    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2b
    :goto_10
    const/16 v4, 0xb

    move/from16 v0, v54

    if-eq v0, v4, :cond_2c

    .line 1350
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1345
    :catch_1
    move-exception v29

    .line 1346
    .local v29, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "[sms.mt] MobileboxPro is not installed"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_10

    .line 1356
    .end local v29    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v54    # "result":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "app_directed_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I

    move-result v54

    .line 1358
    .restart local v54    # "result":I
    const/16 v4, 0xb

    move/from16 v0, v54

    if-eq v0, v4, :cond_2d

    .line 1359
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1365
    .end local v54    # "result":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "legacy_vvm_not_save"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->processLegacyVVM(Lcom/android/internal/telephony/InboundSmsTracker;I[[B)I

    move-result v54

    .line 1367
    .restart local v54    # "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM result =["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1368
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_2e

    .line 1369
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1370
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1371
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1376
    .end local v54    # "result":I
    :cond_2e
    new-instance v40, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1380
    .restart local v40    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v19

    .line 1381
    .restart local v19    # "componentName":Landroid/content/ComponentName;
    if-eqz v19, :cond_2f

    .line 1383
    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1392
    .end local v19    # "componentName":Landroid/content/ComponentName;
    :cond_2f
    :goto_11
    const-string v4, "pdus"

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1393
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "seperate_processing_sms_uicc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1396
    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_33

    .line 1397
    const-string v4, "indexOnIcc"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    :cond_30
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1405
    const/4 v4, 0x1

    move/from16 v0, v42

    if-le v0, v4, :cond_31

    .line 1407
    if-eqz v30, :cond_34

    if-nez v31, :cond_34

    .line 1408
    const-string v4, "ctreplace"

    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1409
    if-eqz v43, :cond_31

    .line 1410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart(), [RED] missingSegIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1411
    const-string v4, "missingSegIndex"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    :cond_31
    :goto_13
    const-string v4, "android.permission.RECEIVE_SMS"

    const/16 v5, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v4, v5, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1422
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1388
    .end local v40    # "intent":Landroid/content/Intent;
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms://localhost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v57

    .line 1389
    .local v57, "uri":Landroid/net/Uri;
    new-instance v40, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v40

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v40    # "intent":Landroid/content/Intent;
    goto/16 :goto_11

    .line 1399
    .end local v57    # "uri":Landroid/net/Uri;
    :cond_33
    const-string v4, "indexOnIcc"

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 1414
    :cond_34
    const-string v4, "ctreplace"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_13

    .line 1245
    .end local v11    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v37    # "iccSring":Ljava/lang/String;
    .end local v40    # "intent":Landroid/content/Intent;
    .end local v51    # "pdus":[[B
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    .restart local v15    # "address":Ljava/lang/String;
    .restart local v20    # "count":Ljava/lang/String;
    .restart local v23    # "cursor":Landroid/database/Cursor;
    .restart local v24    # "cursorCount":I
    .restart local v36    # "iccColumn":I
    .restart local v38    # "iccSring":Ljava/lang/String;
    .restart local v49    # "pduColumn":I
    .restart local v53    # "refNumber":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v37, v38

    .end local v38    # "iccSring":Ljava/lang/String;
    .restart local v37    # "iccSring":Ljava/lang/String;
    goto/16 :goto_c

    .line 1241
    .end local v37    # "iccSring":Ljava/lang/String;
    .restart local v38    # "iccSring":Ljava/lang/String;
    :catch_2
    move-exception v29

    move-object/from16 v37, v38

    .end local v38    # "iccSring":Ljava/lang/String;
    .restart local v37    # "iccSring":Ljava/lang/String;
    goto/16 :goto_b

    .end local v37    # "iccSring":Ljava/lang/String;
    .restart local v38    # "iccSring":Ljava/lang/String;
    :cond_35
    move-object/from16 v37, v38

    .end local v38    # "iccSring":Ljava/lang/String;
    .restart local v37    # "iccSring":Ljava/lang/String;
    goto/16 :goto_7
.end method

.method protected processMessagePartKRTestBed([BLjava/lang/String;IIIJIZLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 40
    .param p1, "pdu"    # [B
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # I
    .param p4, "sequenceNumber"    # I
    .param p5, "messageCount"    # I
    .param p6, "timestamp"    # J
    .param p8, "destPort"    # I
    .param p9, "isCdmaWapPush"    # Z
    .param p10, "serviceCenter"    # Ljava/lang/String;
    .param p11, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 3357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3360
    .local v12, "firstTime":J
    const/16 v33, 0x0

    check-cast v33, [[B

    .line 3361
    .local v33, "pdus":[[B
    const/16 v23, 0x0

    .line 3364
    .local v23, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 3365
    .local v34, "refNumber":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    .line 3368
    .local v35, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v34, v7, v8

    const/4 v8, 0x2

    aput-object v35, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 3372
    if-eqz v23, :cond_7

    .line 3374
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3375
    const-string v3, "Mms Testbed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 3378
    .local v31, "oldPduString":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v30

    .line 3379
    .local v30, "oldPdu":[B
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3380
    const-string v3, "Mms Testbed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3383
    :cond_0
    const/4 v3, 0x1

    .line 3490
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 3555
    .end local v30    # "oldPdu":[B
    .end local v31    # "oldPduString":Ljava/lang/String;
    .end local v34    # "refNumber":Ljava/lang/String;
    .end local v35    # "seqNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 3385
    .restart local v34    # "refNumber":Ljava/lang/String;
    .restart local v35    # "seqNumber":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 3392
    :goto_1
    const-string v6, ""

    .line 3393
    .local v6, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "cdma_kr_testbed_mms_receive"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p9, :cond_8

    .line 3394
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3395
    .local v39, "whereTemp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3396
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3401
    .end local v39    # "whereTemp":Ljava/lang/StringBuilder;
    :goto_2
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v3, 0x0

    aput-object p2, v38, v3

    const/4 v3, 0x1

    aput-object v34, v38, v3

    .line 3402
    .local v38, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "cdma_kr_testbed_mms_receive"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p9, :cond_9

    .line 3403
    const-string v3, "Mms Testbed"

    const-string v4, "processMessagePart() - KEY_CDMA_MMS_RECEIVE and CDMA WAP PUSH - RawUri query"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 3416
    :goto_3
    if-eqz v23, :cond_13

    .line 3417
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 3418
    .local v24, "cursorCount":I
    add-int/lit8 v3, p5, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_b

    .line 3420
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 3421
    .local v37, "values":Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3422
    const-string v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    const-string v3, "address"

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    const-string v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3425
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3426
    const-string v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3427
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 3428
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3431
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3432
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 3433
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3434
    const-string v3, "time"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 3435
    .local v36, "timeColumn":I
    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3438
    .end local v36    # "timeColumn":I
    :cond_4
    const-string v3, "time"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v12, v13}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3441
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v37

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3444
    new-instance v3, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IIJ)V

    invoke-direct {v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3447
    :cond_6
    const/4 v3, 0x1

    .line 3490
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3387
    .end local v6    # "where":Ljava/lang/String;
    .end local v24    # "cursorCount":I
    .end local v37    # "values":Landroid/content/ContentValues;
    .end local v38    # "whereArgs":[Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v3, "Mms Testbed"

    const-string v4, "SMSDispatcher.processMessagePartKRTestBed(): mResolver.query() returned null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 3486
    .end local v34    # "refNumber":Ljava/lang/String;
    .end local v35    # "seqNumber":Ljava/lang/String;
    :catch_0
    move-exception v27

    .line 3487
    .local v27, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v3, "Mms Testbed"

    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, v27

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3488
    const/4 v3, 0x2

    .line 3490
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3398
    .end local v27    # "e":Landroid/database/SQLException;
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v34    # "refNumber":Ljava/lang/String;
    .restart local v35    # "seqNumber":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v6, "address=? AND reference_number=?"

    goto/16 :goto_2

    .line 3408
    .restart local v38    # "whereArgs":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v7, v38

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    goto/16 :goto_3

    .line 3411
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v7, v38

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    goto/16 :goto_3

    .line 3451
    .restart local v24    # "cursorCount":I
    :cond_b
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v33, v0

    .line 3452
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 3453
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    .line 3454
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 3456
    .local v25, "cursorSequence":I
    if-nez p9, :cond_c

    .line 3457
    add-int/lit8 v25, v25, -0x1

    .line 3459
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v33, v25

    .line 3464
    if-nez v25, :cond_d

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3465
    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 3452
    :cond_d
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 3470
    .end local v25    # "cursorSequence":I
    :cond_e
    if-eqz p9, :cond_10

    .line 3471
    aput-object p1, v33, p4

    .line 3477
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "cdma_kr_testbed_mms_receive"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz p9, :cond_12

    .line 3478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3490
    .end local v24    # "cursorCount":I
    .end local v28    # "i":I
    :goto_6
    if-eqz v23, :cond_f

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 3494
    :cond_f
    if-nez v33, :cond_14

    .line 3495
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 3473
    .restart local v24    # "cursorCount":I
    .restart local v28    # "i":I
    :cond_10
    add-int/lit8 v3, p4, -0x1

    :try_start_5
    aput-object p1, v33, v3
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 3490
    .end local v6    # "where":Ljava/lang/String;
    .end local v24    # "cursorCount":I
    .end local v28    # "i":I
    .end local v34    # "refNumber":Ljava/lang/String;
    .end local v35    # "seqNumber":Ljava/lang/String;
    .end local v38    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v23, :cond_11

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    .line 3480
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v24    # "cursorCount":I
    .restart local v28    # "i":I
    .restart local v34    # "refNumber":Ljava/lang/String;
    .restart local v35    # "seqNumber":Ljava/lang/String;
    .restart local v38    # "whereArgs":[Ljava/lang/String;
    :cond_12
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 3483
    .end local v24    # "cursorCount":I
    .end local v28    # "i":I
    :cond_13
    const-string v3, "Mms Testbed"

    const-string v4, "SMSDispatcher.processMessagePartKRTestBed(): mResolver.query() returned null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 3498
    :cond_14
    new-instance v16, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 3501
    .local v16, "resultReceiver":Landroid/content/BroadcastReceiver;
    if-eqz p9, :cond_17

    .line 3503
    new-instance v32, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3504
    .local v32, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_7
    move/from16 v0, v28

    move/from16 v1, p5

    if-ge v0, v1, :cond_15

    .line 3506
    aget-object v3, v33, v28

    const/4 v4, 0x0

    aget-object v5, v33, v28

    array-length v5, v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3504
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 3508
    :cond_15
    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 3511
    .local v15, "datagram":[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_16

    .line 3513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    const-string v18, ""

    const-string v19, ""

    move-object/from16 v17, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 3515
    :cond_16
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v33, v0

    .line 3516
    const/4 v3, 0x0

    aput-object v15, v33, v3

    .line 3518
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    .line 3519
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 3524
    .end local v15    # "datagram":[B
    .end local v28    # "i":I
    .end local v32    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_17
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_1c

    .line 3525
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_1b

    .line 3527
    new-instance v32, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3528
    .restart local v32    # "output":Ljava/io/ByteArrayOutputStream;
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, p5

    if-ge v0, v1, :cond_19

    .line 3529
    aget-object v3, v33, v28

    const-string v4, "3gpp2"

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v29

    .line 3531
    .local v29, "msg":Landroid/telephony/SmsMessage;
    if-eqz v29, :cond_18

    .line 3532
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v26

    .line 3533
    .local v26, "data":[B
    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3528
    .end local v26    # "data":[B
    :cond_18
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 3539
    .end local v29    # "msg":Landroid/telephony/SmsMessage;
    :cond_19
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v3, :cond_1a

    .line 3540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v17, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v19, v16

    move-object/from16 v20, p0

    move-object/from16 v21, p10

    move-object/from16 v22, p2

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 3545
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v17, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v19, v16

    move-object/from16 v20, p0

    move-object/from16 v21, p10

    move-object/from16 v22, p2

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 3548
    .end local v28    # "i":I
    .end local v32    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    .line 3555
    :goto_9
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 3553
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdus([[B)V

    goto :goto_9
.end method

.method protected processMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 4
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 3153
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3154
    const/4 v2, 0x2

    .line 3166
    :goto_0
    return v2

    .line 3156
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isLastSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3157
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->completeProcessMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    goto :goto_0

    .line 3162
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->insertMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)J

    move-result-wide v0

    .line 3163
    .local v0, "firstTime":J
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/SmsMessageBase;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3166
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected processOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)I
    .locals 17
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2284
    const/4 v4, 0x0

    .line 2285
    .local v4, "isConcat":Z
    const/4 v5, 0x0

    .line 2286
    .local v5, "existsPortAddrs":Z
    const/4 v15, 0x0

    .line 2288
    .local v15, "isGsm":Z
    const/4 v6, 0x0

    .line 2289
    .local v6, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2290
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v6

    .line 2291
    const/4 v15, 0x0

    .line 2297
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "ctc_spam_msg"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2298
    const/4 v15, 0x1

    .line 2301
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 2303
    .local v16, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v2, :cond_1

    .line 2304
    const/4 v4, 0x1

    .line 2307
    :cond_1
    if-eqz v16, :cond_2

    .line 2308
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v2, :cond_4

    const/4 v5, 0x0

    .line 2312
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "KT_LBS"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2313
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v2

    const/16 v3, 0x51

    if-ne v2, v3, :cond_5

    .line 2314
    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2315
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    move-object/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2316
    const/16 v2, 0x20

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2317
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v2, v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 2319
    const/4 v2, 0x1

    .line 2333
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_2
    return v2

    .line 2293
    .end local v16    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 2294
    const/4 v15, 0x1

    goto :goto_0

    .line 2308
    .restart local v16    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 2325
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    .local v7, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v2, 0x1

    if-ne v15, v2, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    .line 2327
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->addGsmOperatorMessages([[BZZLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 2333
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;)I

    move-result v2

    goto :goto_2

    .line 2329
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "lgu_dispatch"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2330
    const-string v8, "CdmaSmsLGUMessage"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v9, p0

    move-object v11, v6

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected processSPTSMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3266
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "spts_msg"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 3267
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3268
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    const-string v4, "com.lge.software.infocollector"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 3269
    const/4 v2, 0x0

    .line 3270
    .local v2, "msg":Landroid/telephony/SmsMessage;
    aget-object v7, p2, v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "3gpp2"

    :goto_0
    invoke-static {v7, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 3271
    if-eqz v2, :cond_1

    .line 3272
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 3273
    .local v0, "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processSPTSMessage(), SPTSAddress : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3274
    if-eqz v0, :cond_1

    const-string v4, "00000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3275
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.spts.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3276
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "pdus"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3277
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    move v4, v5

    .line 3283
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v4

    .line 3270
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v4, "3gpp"

    goto :goto_0

    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v6

    .line 3283
    goto :goto_1
.end method

.method protected processVVM3Pdu(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v4, 0x0

    .line 3570
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 3571
    .local v0, "messageBody":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    .line 3573
    .local v2, "vvm3pdu":[B
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    if-eqz v2, :cond_0

    array-length v5, v2

    if-ge v5, v6, :cond_2

    .line 3574
    :cond_0
    const-string v5, "[sms.mt.vvm3] messageBody length or vvm3pdu length is short. return"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3592
    :cond_1
    :goto_0
    return v4

    .line 3578
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3579
    .local v1, "vvm3Str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] messageBody = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3Str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3pdu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3583
    array-length v5, v2

    add-int/lit8 v5, v5, -0x7

    new-array v3, v5, [B

    .line 3584
    .local v3, "vvm3pduToDispatch":[B
    array-length v5, v2

    add-int/lit8 v5, v5, -0x7

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3pduToDispatch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3587
    const-string v5, "UNRECOGNIZED?cmd=STATUS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "MBOXUPDATE?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3588
    :cond_3
    const-string v4, "[sms.mt.vvm3] string match"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 3589
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchVVM3Pdu([B)V

    .line 3590
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setDeliverIntentIfNeeded(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3228
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 3230
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez p1, :cond_1

    .line 3262
    :cond_0
    :goto_0
    return-void

    .line 3234
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3235
    if-eqz v2, :cond_0

    .line 3237
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering SMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3244
    :cond_2
    if-eqz v2, :cond_0

    .line 3246
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3247
    .local v6, "smsPackage":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "com.android.mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3248
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3249
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 3250
    .local v4, "intentAction":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3253
    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3254
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeliverIntentIfNeeded(), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >>>  SMS_DELIVER_ACTION"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeliverIntentIfNeeded(), Delivering SMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 3249
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected storeVoiceMailCount()V
    .locals 6

    .prologue
    .line 1741
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1742
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    .line 1744
    .local v2, "mwi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing Voice Mail Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for imsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for mVmCountKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "vm_count_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vmId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "vm_id_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in preferences."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1750
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1751
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1752
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_count_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1753
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_id_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1754
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1755
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 414
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 415
    return-void
.end method
