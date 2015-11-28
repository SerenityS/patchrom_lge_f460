.class public Lcom/android/server/connectivity/TetherNetworkDataTransition;
.super Ljava/lang/Object;
.source "TetherNetworkDataTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetherNetworkDataTransition$1;,
        Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;
    }
.end annotation


# static fields
.field private static final CHECK_TIMEOUT:I = 0x2710

.field public static final CMD_GET_MOBILE_HOTSPOT_FLAG:I = 0x6a

.field public static final CMD_GET_USB_TETHERING_FLAG:I = 0x6c

.field public static final CMD_SET_MOBILE_HOTSPOT_FLAG:I = 0x69

.field public static final CMD_SET_USB_TETHERING_FLAG:I = 0x6b

.field private static final DEBUG:Z = false

.field private static final INT_SIZE:I = 0x4

.field private static final LONG_TIMEOUT:J = 0x7530L

.field private static final NETWORK_STATE_CHECK_TIMEOUT:I = 0x7d0

.field public static final QCRILHOOK_CMD_GET:I = 0x91004

.field public static final QCRILHOOK_CMD_SET:I = 0x91005

.field public static final QCRILHOOK_OEM_BASE:I = 0x90000

.field public static final QCRILHOOK_OEM_LGRIL_BASE:I = 0x91000

.field public static final QCRILHOOK_OPRT_MODE:I = 0x91003

.field public static final QCRILHOOK_SVC_READ:I = 0x91001

.field public static final QCRILHOOK_SVC_WRITE:I = 0x91002

.field public static final QCRIL_EVT_HOOK_BASE:I = 0x80000

.field public static final QCRIL_EVT_HOOK_NV_READ:I = 0x80001

.field public static final QCRIL_EVT_OEM_BASE:I = 0x90000

.field public static final QCRIL_EVT_OEM_LGRIL_BASE:I = 0x91000

.field public static final QCRIL_EVT_OEM_LGRIL_CMD_GET:I = 0x91004

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final SHORT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "TetherNetworkDataTransition"

.field private static mTetherNetworkFlagSet:Z

.field private static qcRilHookClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field private connectivityObject:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEscapeWaiting:Z

.field private final mHeaderSize:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mTetherNetworkData:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    .line 108
    sput-object v4, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    .line 111
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/qcrilhook.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v4, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    .line 115
    const-string v1, "TetherNetworkDataTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init qcRilHookClassLoader class (could be not QCT model), exception= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mOemIdentifier:Ljava/lang/String;

    .line 80
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 125
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyNetworkConnectivityChange()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/TetherNetworkDataTransition;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    return p1
.end method

.method private addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 741
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 744
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 747
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 748
    return-void
.end method

.method private checkMobileConnection(Landroid/net/NetworkInfo$State;)Z
    .locals 9
    .param p1, "expectedState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 413
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 415
    .local v1, "mCm":Landroid/net/IConnectivityManager;
    const-string v6, "TetherNetworkDataTransition"

    const-string v7, "[DEBUG][NSH]checkMobileConnection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v1, :cond_2

    .line 419
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v1, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 420
    .local v3, "netInfoMobile":Landroid/net/NetworkInfo;
    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 421
    .local v2, "netInfoHipri":Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 422
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkInfo for TYPE_MOBILE getState= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  TYPE_MOBILE_HIPRI getState =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 424
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkInfo for TYPE_MOBILE or TYPE_MOBILE_HIPRI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v2    # "netInfoHipri":Landroid/net/NetworkInfo;
    .end local v3    # "netInfoMobile":Landroid/net/NetworkInfo;
    :goto_0
    return v4

    .line 428
    .restart local v2    # "netInfoHipri":Landroid/net/NetworkInfo;
    .restart local v3    # "netInfoMobile":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 429
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkInfo for TYPE_MOBILE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v2    # "netInfoHipri":Landroid/net/NetworkInfo;
    .end local v3    # "netInfoMobile":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    .line 441
    goto :goto_0

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "netInfoHipri":Landroid/net/NetworkInfo;
    .restart local v3    # "netInfoMobile":Landroid/net/NetworkInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 434
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkInfo for TYPE_MOBILE_HIPRI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v2    # "netInfoHipri":Landroid/net/NetworkInfo;
    .end local v3    # "netInfoMobile":Landroid/net/NetworkInfo;
    :cond_2
    move v4, v5

    .line 443
    goto :goto_0
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 734
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 735
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 736
    return-object v0
.end method

.method private notifyNetworkConnectivityChange()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v2, "notify network connectivity changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v1, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;-><init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;Lcom/android/server/connectivity/TetherNetworkDataTransition$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 12
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    .line 753
    const-string v1, "com.qualcomm.qcrilhook.QcRilHook"

    .line 754
    .local v1, "QCRILHOOK_CLASS":Ljava/lang/String;
    const/4 v2, 0x0

    .line 756
    .local v2, "ar":Landroid/os/AsyncResult;
    sget-object v8, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    .line 759
    :try_start_0
    sget-object v8, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    const-string v9, "com.qualcomm.qcrilhook.QcRilHook"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 760
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 763
    .local v3, "c":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 783
    .local v7, "qcrilObj":Ljava/lang/Object;
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 788
    :goto_0
    :try_start_2
    const-string v8, "sendQcRilHookMsg"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, [B

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 790
    .local v6, "mSendMsg":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    move-object v2, v0

    .line 796
    .end local v3    # "c":Ljava/lang/reflect/Constructor;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "mSendMsg":Ljava/lang/reflect/Method;
    .end local v7    # "qcrilObj":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v2

    .line 784
    .restart local v3    # "c":Ljava/lang/reflect/Constructor;
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "qcrilObj":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 785
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v8, "TetherNetworkDataTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 791
    .end local v3    # "c":Ljava/lang/reflect/Constructor;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "qcrilObj":Ljava/lang/Object;
    :catch_1
    move-exception v5

    .line 792
    .local v5, "e":Ljava/lang/Exception;
    const-string v8, "TetherNetworkDataTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendTetherBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 725
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 728
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    .line 157
    return-void
.end method

.method private waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z
    .locals 8
    .param p1, "expectedState"    # Landroid/net/NetworkInfo$State;
    .param p2, "timeout"    # J

    .prologue
    const/4 v3, 0x1

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 448
    .local v1, "startTime":J
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    .line 451
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    cmp-long v4, v4, p2

    if-lez v4, :cond_0

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkMobileConnection(Landroid/net/NetworkInfo$State;)Z

    move-result v3

    .line 473
    :goto_1
    return v3

    .line 455
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v4

    .line 458
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_2
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    if-ne v5, v3, :cond_1

    .line 465
    const-string v5, "TetherNetworkDataTransition"

    const-string v6, "Escape mobile connection waiting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v4

    goto :goto_1

    .line 474
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 469
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkMobileConnection(Landroid/net/NetworkInfo$State;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 470
    monitor-exit v4

    goto :goto_0

    .line 473
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private waitForNetworkState(ILandroid/net/NetworkInfo$State;J)Z
    .locals 10
    .param p1, "networkType"    # I
    .param p2, "expectedState"    # Landroid/net/NetworkInfo$State;
    .param p3, "timeout"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 485
    .local v1, "mCm":Landroid/net/IConnectivityManager;
    if-nez v1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v4

    .line 488
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    .local v2, "startTime":J
    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v6, :cond_0

    .line 505
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNetworkInfo before state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput-boolean v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    .line 509
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v6, v6, p3

    if-lez v6, :cond_2

    .line 511
    :try_start_1
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v6, p2, :cond_0

    .line 515
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networktype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 517
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 521
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wait for the connectivity state for network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to be "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v6

    .line 530
    :try_start_2
    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    :goto_2
    :try_start_3
    iget-boolean v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    if-ne v7, v5, :cond_3

    .line 537
    const-string v4, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Escape!! network state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v6

    move v4, v5

    goto/16 :goto_0

    .line 532
    :catch_2
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 555
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 543
    :cond_3
    :try_start_4
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 547
    :goto_3
    :try_start_5
    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, p1, :cond_4

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-eq v7, p2, :cond_5

    .line 549
    :cond_4
    const-string v7, "TetherNetworkDataTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    monitor-exit v6

    goto/16 :goto_1

    .line 553
    :cond_5
    const-string v4, "TetherNetworkDataTransition"

    const-string v7, "[DEBUG][NSH]expectedState reached"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v5

    goto/16 :goto_0

    .line 544
    :catch_3
    move-exception v7

    goto :goto_3
.end method


# virtual methods
.method public checkDataProfile()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 680
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 682
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 686
    .local v2, "result":Z
    if-eqz v1, :cond_0

    .line 688
    const/4 v4, 0x4

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/ITelephony;->checkDataProfileEx(II)Z

    move-result v2

    .line 690
    :cond_0
    const-string v4, "TetherNetworkDataTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDataProfile check apn info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 693
    :goto_0
    return v3

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public connectMobile()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 310
    .local v1, "mCm":Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 343
    :goto_0
    return v2

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 325
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v5, 0x7530

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 338
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "Can\'t change to connect Mobile Data connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    move v2, v3

    .line 343
    goto :goto_0
.end method

.method public connectMobileCheck()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 244
    .local v2, "mCm":Landroid/net/IConnectivityManager;
    const/4 v0, 0x0

    .line 246
    .local v0, "doWait":Z
    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v3

    .line 249
    :cond_1
    const-string v5, "TetherNetworkDataTransition"

    const-string v6, "[DEBUG][NSH]connectMobileCheck"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_0
    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v2, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_2

    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v5, v6, :cond_2

    .line 266
    const/4 v0, 0x1

    .line 273
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 276
    if-ne v0, v4, :cond_3

    .line 279
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v6, 0x2710

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z

    move-result v5

    if-nez v5, :cond_3

    .line 281
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 282
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "Can\'t change to connect Mobile Data connectMobileCheck"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 269
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 292
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v2, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_4

    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v5, v6, :cond_0

    :cond_4
    move v3, v4

    .line 302
    goto :goto_0

    .line 296
    :catch_2
    move-exception v1

    .line 298
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public connectMobileNoWait()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 352
    .local v1, "mCm":Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 368
    :goto_0
    return v2

    .line 361
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 368
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectMobile()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 373
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 375
    .local v1, "mCm":Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 409
    :goto_0
    return v2

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 386
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v4, 0x7530

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 404
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "can not disconnect Mobile Data connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 409
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getFlag(I)Ljava/lang/String;
    .locals 11
    .param p1, "itemId"    # I

    .prologue
    .line 838
    const/4 v3, 0x0

    .line 840
    .local v3, "length":I
    const/16 v8, 0x8

    new-array v4, v8, [B

    .line 841
    .local v4, "requestData":[B
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 842
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 843
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 845
    const v8, 0x91004

    invoke-direct {p0, v8, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v7

    .line 847
    .local v7, "result":Landroid/os/AsyncResult;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    .line 848
    iget-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 849
    .local v6, "responseData":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 850
    new-array v5, v3, [B

    .line 851
    .local v5, "responseBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 852
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    aput-byte v8, v5, v1

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 863
    .end local v1    # "i":I
    .end local v5    # "responseBytes":[B
    .end local v6    # "responseData":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v2

    .line 856
    :cond_1
    const-string v8, "TetherNetworkDataTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNetworkTechType()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 620
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 622
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 623
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_0
    return v2

    .line 628
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e4":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTetherNetworkDataFlagSet()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return v0
.end method

.method public isGsmNetwork()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 590
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1

    .line 591
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    :goto_0
    return v3

    .line 597
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    .local v1, "networkType":I
    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-eq v5, v1, :cond_2

    const/4 v5, 0x3

    if-eq v5, v1, :cond_2

    const/16 v5, 0x8

    if-eq v5, v1, :cond_2

    const/16 v5, 0x9

    if-eq v5, v1, :cond_2

    const/16 v5, 0xa

    if-eq v5, v1, :cond_2

    const/16 v5, 0xb

    if-eq v5, v1, :cond_2

    const/16 v5, 0xf

    if-ne v5, v1, :cond_0

    :cond_2
    move v3, v4

    .line 606
    goto :goto_0

    .line 611
    .end local v1    # "networkType":I
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e4":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isLteOrEhrpdNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 561
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 563
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 564
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    :goto_0
    return v2

    .line 570
    :cond_1
    const/16 v3, 0xd

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v4

    if-eq v3, v4, :cond_2

    const/16 v3, 0xe

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    .line 572
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e4":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isMobileDataEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 869
    const/4 v2, 0x0

    .line 870
    .local v2, "mIsMobileDataEnabled":Z
    const/4 v1, 0x0

    .line 871
    .local v1, "mCm":Landroid/net/IConnectivityManager;
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 873
    if-nez v1, :cond_0

    .line 874
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "ConnectivityManager is null at is MobileDataEnabled!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :goto_0
    return v3

    .line 879
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    .line 885
    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isPamPdnDataProfileEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 639
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 641
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 642
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    :goto_0
    return v2

    .line 648
    :cond_1
    const/16 v4, 0xd

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/16 v4, 0xe

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 652
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkDataProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 653
    goto :goto_0

    .line 661
    :cond_3
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "mobile data will use as tether network "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 662
    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e4":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyPhoneTetherStatus(Z)Z
    .locals 2
    .param p1, "tethered"    # Z

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "&&&&&&&&&&& TETHER REQUEST ++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    const/16 v1, 0x6b

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->setFlag(ILjava/lang/String;)V

    .line 232
    sput-boolean p1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    .line 233
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "&&&&&&&&&&& TETHER REQUEST ----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public readMipErrorCode()I
    .locals 5

    .prologue
    .line 703
    const/4 v1, 0x0

    .line 707
    .local v1, "mipError":I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 710
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 711
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMipErrorCode()I

    move-result v1

    .line 720
    :goto_0
    return v1

    .line 713
    :cond_0
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null FATAL ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e3":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLgRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 800
    iget v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 801
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 803
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 804
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 806
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendLgRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 810
    iget v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 811
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 813
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 814
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 816
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public setFlag(ILjava/lang/String;)V
    .locals 4
    .param p1, "itemId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, "length":I
    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 824
    :cond_0
    add-int/lit8 v3, v1, 0x8

    new-array v2, v3, [B

    .line 825
    .local v2, "requestData":[B
    invoke-static {v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 826
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 827
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 828
    if-eqz p2, :cond_1

    .line 829
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 832
    :cond_1
    const v3, 0x91005

    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    .line 833
    return-void
.end method
