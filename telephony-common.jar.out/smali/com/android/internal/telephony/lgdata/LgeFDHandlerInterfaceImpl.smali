.class public Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
.super Lcom/android/internal/util/StateMachine;
.source "LgeFDHandlerInterfaceImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;,
        Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;,
        Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;,
        Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;,
        Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;,
        Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DORMANT:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final EVENT_CHECK_NETSTAT:I = 0x18c4b

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field protected static final EVENT_ICC_CHANGED:I = 0x42021

.field private static final EVENT_INTERNAL_DEFINED:I = 0x18c4a

.field private static final EVENT_OEM_RIL_MESSAGE_GO_DORMANT_RESPONSE:I = 0x18c4d

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x18c4c

.field protected static final EVENT_RECORDS_LOADED:I = 0x42002

.field protected static final EVENT_ROAMING_OFF:I = 0x4200c

.field protected static final EVENT_ROAMING_ON:I = 0x4200b

.field private static final EVENT_TETHERTING_STATE_CHANGED:I = 0x18c4e

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field private static final GO_DORMANT_INTERFACE_ALL:Ljava/lang/String; = ""

.field private static final GO_DORMANT_INTERFACE_NAME:Ljava/lang/String; = "rmnet0"

.field private static final INTENT_CHECK_NETSTAT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

.field private static final INTENT_FASTDORMANCYD_CONFIGURE:Ljava/lang/String; = "android.intent.action.ACTION_FD_CONFIGURE"

.field protected static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field protected static final LISTEN_NONE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "LG-FASTDORMANCY"

.field private static final QCRILHOOK_CLASS:Ljava/lang/String; = "com.qualcomm.qcrilhook.QcRilHook"

.field private static final QCRIL_EVT_HOOK_DATA_GO_DORMANT:I = 0x80003

.field private static currentRadioTech:I

.field private static isChangedRt:Z

.field private static oldRadioTech:I

.field private static qcRilHookClassLoader:Ljava/lang/ClassLoader;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# instance fields
.field private DBG:Z

.field private VDBG:Z

.field mAlarm:Landroid/app/AlarmManager;

.field mCallActivState:Z

.field private mCheckNetStatIntent:Landroid/app/PendingIntent;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

.field protected mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

.field mFDRetryManager:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;

.field mHandler:Landroid/os/Handler;

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsFDValueChanged:Z

.field protected mIsReady:Z

.field mIsTetheringOn:Z

.field mLastIsDormant:Z

.field mLastIsUMTS:Z

.field mNetStatMonitor:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;

.field protected mP:Lcom/android/internal/telephony/PhoneBase;

.field protected mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

.field protected mQcRilHookObject:Ljava/lang/Object;

.field protected mSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

.field mfastdormancy_dial:Z

.field pm:Landroid/os/PowerManager;

.field sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 125
    sput-object v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    .line 128
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/qcrilhook.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->qcRilHookClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sput v4, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->currentRadioTech:I

    .line 168
    sput v4, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->oldRadioTech:I

    .line 169
    sput-boolean v4, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->isChangedRt:Z

    .line 186
    sput-object v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sStatsService:Landroid/net/INetworkStatsService;

    return-void

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    .line 132
    const-string v1, "LG-FASTDORMANCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init qcRilHookClassLoader class (could be not QCT model), exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 689
    const-string v5, "FastDormancy"

    invoke-direct {p0, v5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 81
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->DBG:Z

    .line 82
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    .line 142
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    .line 145
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    .line 154
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsUMTS:Z

    .line 155
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    .line 158
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsFDValueChanged:Z

    .line 165
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    .line 173
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mfastdormancy_dial:Z

    .line 176
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCallActivState:Z

    .line 177
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsTetheringOn:Z

    .line 183
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mQcRilHookObject:Ljava/lang/Object;

    .line 184
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

    .line 188
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$1;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 942
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    .line 1031
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    .line 1270
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    .line 691
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    const-string v6, "missing TelephonyManager"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 693
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    .line 694
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 695
    iput-object p3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 696
    iput-object p4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 697
    iput-object p5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    .line 699
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->pm:Landroid/os/PowerManager;

    .line 700
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->pm:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "DataTracker-FD"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 701
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 703
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    .line 704
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDRetryManager:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;

    .line 705
    new-instance v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;-><init>(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)V

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mNetStatMonitor:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;

    .line 708
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->addState(Lcom/android/internal/util/State;)V

    .line 709
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->addState(Lcom/android/internal/util/State;)V

    .line 710
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->addState(Lcom/android/internal/util/State;)V

    .line 711
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->setInitialState(Lcom/android/internal/util/State;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    .line 714
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mAlarm:Landroid/app/AlarmManager;

    .line 716
    sget-object v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_0

    .line 718
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    const-string v6, "com.qualcomm.qcrilhook.QcRilHook"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 719
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 720
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mQcRilHookObject:Ljava/lang/Object;

    .line 721
    const-string v5, "qcRilGoDormant"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->start()V

    .line 730
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    .line 736
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    const v7, 0x42004

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 750
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    const v7, 0x42021

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 756
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    const v7, 0x42007

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 757
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mP:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    const v7, 0x42008

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 764
    :cond_1
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 765
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    const-string v5, "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v5, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v5, "android.intent.action.ACTION_FD_CONFIGURE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v5, "com.fd.go"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 782
    const-string v5, "Fast Dormancy Logic is ready."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 784
    return-void

    .line 722
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load QCRILHOOK_CLASS() class, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->loge(Ljava/lang/String;)V

    .line 724
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mQcRilHookObject:Ljava/lang/Object;

    .line 725
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

    goto/16 :goto_0

    .line 759
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 760
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "LG-FASTDORMANCY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->currentRadioTech:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 78
    sput p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->currentRadioTech:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->oldRadioTech:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 78
    sput p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->oldRadioTech:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->isChangedRt:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->isChangedRt:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->DBG:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->DBG:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;)Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/INetworkStatsService;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/INetworkStatsService;)Landroid/net/INetworkStatsService;
    .locals 0
    .param p0, "x0"    # Landroid/net/INetworkStatsService;

    .prologue
    .line 78
    sput-object p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sStatsService:Landroid/net/INetworkStatsService;

    return-object p0
.end method

.method private playRingTone(I)V
    .locals 8
    .param p1, "sound_type"    # I

    .prologue
    const/4 v7, 0x0

    .line 1543
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->getIsDebugMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FD_playRingTone with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Sound_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1548
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1549
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v1, v7, v5, v6}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1551
    const/4 v0, 0x4

    .line 1552
    .local v0, "StreamType":I
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 1553
    .local v4, "volume":I
    invoke-virtual {v1, v0, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1555
    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1556
    .local v2, "mRingtoneManager":Landroid/media/RingtoneManager;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1557
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1559
    .local v3, "ringtone":Landroid/media/Ringtone;
    if-eqz v3, :cond_0

    .line 1560
    invoke-virtual {v3, v0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1561
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 789
    const-string v0, "LgeFDHandlerInterfaceImpl.dispose."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    if-eqz v0, :cond_2

    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->quit()V

    .line 826
    :cond_2
    return-void
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method protected isUMTS()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1320
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1322
    .local v0, "tech":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUMTS(): RadioTech("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logd(Ljava/lang/String;)V

    .line 1324
    sparse-switch v0, :sswitch_data_0

    .line 1333
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 1337
    :goto_0
    :sswitch_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1324
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->DBG:Z

    if-eqz v0, :cond_0

    .line 1510
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    if-eqz v0, :cond_1

    .line 1511
    const-string v0, "LG-FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    const-string v0, "LG-FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1488
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    if-eqz v0, :cond_1

    .line 1489
    const-string v0, "LG-FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    const-string v0, "LG-FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1532
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    if-eqz v0, :cond_1

    .line 1533
    const-string v0, "LG-FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    const-string v0, "LG-FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1521
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    if-eqz v0, :cond_1

    .line 1522
    const-string v0, "LG-FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    const-string v0, "LG-FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1499
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIsReady:Z

    if-eqz v0, :cond_1

    .line 1500
    const-string v0, "LG-FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    const-string v0, "LG-FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCallActiveStateChanged(Z)V
    .locals 2
    .param p1, "activState"    # Z

    .prologue
    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallActiveStateChanged : Voice call is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "started"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1475
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCallActivState:Z

    .line 1476
    return-void

    .line 1474
    :cond_0
    const-string v0, "ended"

    goto :goto_0
.end method

.method protected onDataCallListChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x1

    .line 1423
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    .line 1425
    .local v0, "dcStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    .line 1434
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1436
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1439
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    .line 1443
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->isUMTS()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1445
    const-string v3, "onDataCallListChanged(): reset all logic since the attached network is non-3G"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1436
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1450
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    if-ne v3, v5, :cond_5

    .line 1451
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->playRingTone(I)V

    .line 1454
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    if-eq v3, v4, :cond_0

    .line 1455
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1459
    :cond_5
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->playRingTone(I)V

    .line 1462
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    if-eq v3, v4, :cond_0

    .line 1463
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected onGoDormantReponse(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoDormantResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logv(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method protected onRadioTechnologyChanged()V
    .locals 3

    .prologue
    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->isUMTS()Z

    move-result v0

    .line 1365
    .local v0, "newIsUMTS":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsUMTS:Z

    if-eq v1, v0, :cond_1

    .line 1367
    sget-boolean v1, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->isChangedRt:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->currentRadioTech:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1368
    const-string v1, "change RT!! load DB setting!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logd(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->onRecordsLoaded()V

    .line 1372
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1373
    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsUMTS:Z

    .line 1375
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsUMTS:Z

    if-eqz v1, :cond_1

    .line 1376
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    if-eq v1, v2, :cond_2

    .line 1377
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mDchFachState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$DchFachState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1384
    :cond_1
    :goto_0
    return-void

    .line 1378
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mLastIsDormant:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    if-eq v1, v2, :cond_1

    .line 1379
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIdleState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$IdleState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->loadSettingFromDb()V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->getIsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    const-string v0, "Fast Dormancy is disabled."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->dispose()V

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->quit()V

    .line 1419
    :cond_0
    return-void
.end method

.method resetAll()V
    .locals 2

    .prologue
    .line 1311
    const-string v0, "resetAll()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logd(Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mNetStatMonitor:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$NetStatMonitor;->checkNetStat()Z

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDRetryManager:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyRetryManager;->resetCount()V

    .line 1316
    return-void
.end method

.method scheduleCheckNetStat()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const v5, 0x18c4b

    .line 1281
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->playRingTone(I)V

    .line 1283
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->isPausingFD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1284
    const-string v3, "Scheduling checkNetStat:mIsFdPause is true, discard sending event for FD-Triggering"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1306
    :goto_0
    return-void

    .line 1288
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->getDataTransferCheckTimerValue()J

    move-result-wide v1

    .line 1290
    .local v1, "interval":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling checkNetStat for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msec, current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUnknownState:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$UnknownState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->isPreventWhenCalling()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCallActivState:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mFDConfig:Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl$FastDormancyConfig;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1294
    :cond_1
    const-string v3, "Scheduling checkNetStat: sendMessageDelayed"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logi(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1296
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->removeMessages(I)V

    .line 1298
    :cond_2
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 1300
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    .line 1303
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mAlarm:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1304
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mAlarm:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1391
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1397
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v0, :cond_0

    .line 1398
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 1399
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logd(Ljava/lang/String;)V

    .line 1400
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1401
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1403
    :cond_2
    if-eqz v0, :cond_0

    .line 1404
    const-string v1, "New records found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->logd(Ljava/lang/String;)V

    .line 1405
    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1406
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgeFDHandlerInterfaceImpl;->mHandler:Landroid/os/Handler;

    const v3, 0x42002

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
