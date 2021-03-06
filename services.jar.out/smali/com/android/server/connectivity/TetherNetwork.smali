.class public Lcom/android/server/connectivity/TetherNetwork;
.super Ljava/lang/Object;
.source "TetherNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;,
        Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NETWORK_ERROR_DIALOG:Ljava/lang/String; = "lge.tethernetwork.action.NETWORK_ERROR_DIALOG"

.field private static final ACTION_NETWORK_ERROR_TOAST:Ljava/lang/String; = "lge.tethernetwork.action.NETWORK_ERROR_TOAST"

.field private static final ACTION_NETWORK_REJECT_DIALOG:Ljava/lang/String; = "lge.tethernetwork.action.NETWORK_REJECT_DIALOG"

.field private static final CMD_LRA_HOTSPOT_FUNCTION_ENABLED:I = 0x1414

.field private static final CMD_LRA_TETHER_NAI_CHANGE_ENABLED:I = 0x1415

.field private static final DEBUG:Z = true

.field private static final DIALOG_INDEX_MIP_ERROR:I = 0x0

.field private static final DIALOG_INDEX_REJECT_ERROR:I = 0x1

.field private static final HOTSPOT_FEATURE_DISABLED:I = 0x0

.field private static final HOTSPOT_FEATURE_ENABLED:I = 0x1

.field private static final HOTSPOT_FEATURE_UNKNOWN:I = -0x1

.field private static final MAX_NUM_RETRY_HOTSPOT_ENABLE:I = 0xf

.field private static final MSG_REMOVE_TETHER_DEVICE:I = 0x3e8

.field private static final MSG_SHOW_MIP_ERR_DLG:I = 0x3fc

.field private static final MSG_SHOW_NET_ERR_TOAST:I = 0x3fe

.field private static final MSG_SHOW_REJECT_ERR_DLG:I = 0x3fd

.field private static final MSG_START_TETHER_NETWORK:I = 0x3f2

.field private static final MSG_STOP_TETHER_NETWORK:I = 0x3f3

.field private static final TAG:Ljava/lang/String; = "TetherNetwork"

.field private static final TETHER_NETWORK_STATUS_ENABLED:I = 0x1

.field private static final TETHER_NETWORK_STATUS_IDLE:I = 0x0

.field public static final TETHER_STATE_UPDATE:Ljava/lang/String; = "android.intent.action.TETHER_STATE_UPDATE"

.field private static mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

.field private static mTetherNetworkStatus:I

.field private static mUsbTetherEnabled:Z

.field private static mWifiTetherEnabled:Z

.field private static tetherNetworkThread:Landroid/os/HandlerThread;


# instance fields
.field private mBTRegexs:[Ljava/lang/String;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mContext:Landroid/content/Context;

.field private mHotspotFeatureEnabled:I

.field private mLineNumberEnabled:Z

.field private mNumRetryHotspotEnable:I

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTetherNetwork:Landroid/content/BroadcastReceiver;

.field private mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mLineNumberEnabled:Z

    .line 89
    iput v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mNumRetryHotspotEnable:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mHotspotFeatureEnabled:I

    .line 137
    new-instance v0, Lcom/android/server/connectivity/TetherNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/TetherNetwork$1;-><init>(Lcom/android/server/connectivity/TetherNetwork;)V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 151
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    .line 153
    sget-object v0, Lcom/android/server/connectivity/TetherNetwork;->tetherNetworkThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TetherNetwork"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/TetherNetwork;->tetherNetworkThread:Landroid/os/HandlerThread;

    .line 156
    sget-object v0, Lcom/android/server/connectivity/TetherNetwork;->tetherNetworkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 159
    :cond_0
    sget-object v0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    sget-object v1, Lcom/android/server/connectivity/TetherNetwork;->tetherNetworkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;-><init>(Lcom/android/server/connectivity/TetherNetwork;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    if-nez v0, :cond_2

    .line 163
    new-instance v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;

    invoke-direct {v0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    .line 165
    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/TetherNetwork;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/TetherNetwork;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/TetherNetwork;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetwork;->turnOffWifi()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/TetherNetwork;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mNumRetryHotspotEnable:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/TetherNetwork;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/connectivity/TetherNetwork;->mNumRetryHotspotEnable:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/server/connectivity/TetherNetwork;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mNumRetryHotspotEnable:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/TetherNetwork;->mNumRetryHotspotEnable:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetwork;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V

    return-void
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 411
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 412
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 413
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 418
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 412
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 418
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private notifyPhoneTransmitPower(I)V
    .locals 3
    .param p1, "powerLevel"    # I

    .prologue
    .line 556
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 557
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 558
    const-string v1, "TetherNetwork"

    const-string v2, "ITelephony interface is null, can not set transmit power"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-void
.end method

.method private readChameleonIntValue(Ljava/lang/String;I)I
    .locals 16
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ref_value"    # I

    .prologue
    .line 607
    const/4 v4, 0x0

    .line 608
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 609
    .local v6, "inFile":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 610
    .local v12, "value":Ljava/lang/String;
    move/from16 v9, p2

    .line 612
    .local v9, "ret_value":I
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v3, "fh":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    move v10, v9

    .line 657
    .end local v9    # "ret_value":I
    .local v10, "ret_value":I
    :goto_0
    return v10

    .line 617
    .end local v10    # "ret_value":I
    .restart local v9    # "ret_value":I
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    .end local v6    # "inFile":Ljava/io/BufferedReader;
    .local v7, "inFile":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 626
    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 627
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 628
    .local v11, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 635
    .end local v11    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz v7, :cond_2

    .line 636
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 638
    :cond_2
    if-eqz v5, :cond_3

    .line 639
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_1
    move-object v6, v7

    .line 648
    .end local v7    # "inFile":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v6    # "inFile":Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    if-eqz v12, :cond_7

    .line 649
    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v9

    :goto_3
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move v10, v9

    .line 657
    .end local v9    # "ret_value":I
    .restart local v10    # "ret_value":I
    goto :goto_0

    .line 618
    .end local v10    # "ret_value":I
    .restart local v9    # "ret_value":I
    :catch_0
    move-exception v2

    .line 619
    .local v2, "fe":Ljava/io/FileNotFoundException;
    const-string v13, "TetherNetwork"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t open "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 620
    .end local v9    # "ret_value":I
    .restart local v10    # "ret_value":I
    goto :goto_0

    .line 634
    .end local v2    # "fe":Ljava/io/FileNotFoundException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v10    # "ret_value":I
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v9    # "ret_value":I
    :catchall_0
    move-exception v13

    .line 635
    :goto_4
    if-eqz v6, :cond_5

    .line 636
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 638
    :cond_5
    if-eqz v5, :cond_6

    .line 639
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 634
    :cond_6
    :goto_5
    throw v13

    .line 651
    :cond_7
    move/from16 v9, p2

    goto :goto_3

    .line 653
    :catch_1
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    move/from16 v9, p2

    goto :goto_3

    .line 632
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 635
    :goto_6
    if-eqz v6, :cond_8

    .line 636
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 638
    :cond_8
    if-eqz v5, :cond_4

    .line 639
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 642
    :catch_3
    move-exception v13

    goto :goto_2

    .end local v6    # "inFile":Ljava/io/BufferedReader;
    .restart local v7    # "inFile":Ljava/io/BufferedReader;
    .restart local v8    # "line":Ljava/lang/String;
    :catch_4
    move-exception v13

    goto :goto_1

    .end local v7    # "inFile":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v6    # "inFile":Ljava/io/BufferedReader;
    :catch_5
    move-exception v14

    goto :goto_5

    .line 634
    .end local v6    # "inFile":Ljava/io/BufferedReader;
    .restart local v7    # "inFile":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "inFile":Ljava/io/BufferedReader;
    .restart local v6    # "inFile":Ljava/io/BufferedReader;
    goto :goto_4

    .line 632
    .end local v6    # "inFile":Ljava/io/BufferedReader;
    .restart local v7    # "inFile":Ljava/io/BufferedReader;
    :catch_6
    move-exception v13

    move-object v6, v7

    .end local v7    # "inFile":Ljava/io/BufferedReader;
    .restart local v6    # "inFile":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private readMipActiveProf()I
    .locals 4

    .prologue
    .line 578
    const/4 v0, 0x1

    .line 579
    .local v0, "retVal":I
    const-string v1, "TetherNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMipActiveProf get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return v0
.end method

.method private readMipErrorCode()I
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 601
    .local v0, "mipError":I
    return v0
.end method

.method private registerTetherNetworkReceiver()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetwork:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;-><init>(Lcom/android/server/connectivity/TetherNetwork;Lcom/android/server/connectivity/TetherNetwork$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetwork:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, "tetherNetworkFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.lge.nai.Err.AuthFailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.lge.nai.Err.Timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.lge.nai.Noti.Success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.lge.nai.Noti.Failed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.lge.pamdisabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetwork:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeTetherDevices(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 426
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    .line 428
    .local v3, "mCm":Landroid/net/IConnectivityManager;
    if-nez v3, :cond_1

    .line 430
    const-string v8, "TetherNetwork"

    const-string v9, "[removeTetherDevices] mCm is null FATAL ERROR"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mWifiRegexs:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mUsbRegexs:[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    :goto_2
    const-string v8, "SPR"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 450
    :try_start_2
    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mBTRegexs:[Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 458
    :cond_2
    :goto_3
    const/4 v5, 0x0

    .line 460
    .local v5, "tethered":[Ljava/lang/String;
    :try_start_3
    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .line 467
    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mUsbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/server/connectivity/TetherNetwork;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, "usbIface":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 471
    :try_start_4
    invoke-interface {v3, v6}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 477
    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mWifiRegexs:[Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/server/connectivity/TetherNetwork;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "wifiIface":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 481
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 482
    .local v4, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v11}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 486
    .end local v4    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    const-string v8, "SPR"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 487
    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mBTRegexs:[Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/server/connectivity/TetherNetwork;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "BTIface":Ljava/lang/String;
    const-string v8, "TetherNetwork"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeTetherDevices --> BTIfce : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz v0, :cond_0

    .line 492
    const-string v8, "TetherNetwork"

    const-string v9, "removeTetherDevices : BTIfce"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 496
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_5

    .line 497
    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v9, 0x5

    invoke-virtual {v1, p1, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 501
    :cond_5
    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v8, :cond_0

    .line 503
    if-eqz v0, :cond_6

    :try_start_5
    invoke-interface {v3, v0}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 505
    const-string v8, "TetherNetwork"

    const-string v9, "Untether initiate failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 511
    :cond_6
    :goto_5
    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetwork;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v8, v11}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto/16 :goto_0

    .line 436
    .end local v0    # "BTIface":Ljava/lang/String;
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v5    # "tethered":[Ljava/lang/String;
    .end local v6    # "usbIface":Ljava/lang/String;
    .end local v7    # "wifiIface":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 442
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 444
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 451
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 453
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 461
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v5    # "tethered":[Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 463
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 472
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "usbIface":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 474
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_4

    .line 507
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "BTIface":Ljava/lang/String;
    .restart local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v7    # "wifiIface":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 509
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method private showDialog(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 531
    if-nez p2, :cond_1

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, "itnt":Landroid/content/Intent;
    const-string v1, "lge.tethernetwork.action.NETWORK_ERROR_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 543
    .end local v0    # "itnt":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .restart local v0    # "itnt":Landroid/content/Intent;
    const-string v1, "lge.tethernetwork.action.NETWORK_REJECT_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    .local v0, "itnt":Landroid/content/Intent;
    const-string v1, "lge.tethernetwork.action.NETWORK_ERROR_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    return-void
.end method

.method private turnOffWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mWifiManager":Landroid/net/wifi/WifiManager;
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 824
    .restart local v1    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 826
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 830
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 833
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_1
    const-string v2, "TetherNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffWifi time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :catch_0
    move-exception v2

    goto :goto_1

    .line 843
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private unregisterTetherNetworkReceiver()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetwork:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetwork:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetwork:Landroid/content/BroadcastReceiver;

    .line 191
    return-void
.end method


# virtual methods
.method public disableTetherNetwork()Z
    .locals 6

    .prologue
    const/16 v5, 0x3f3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget v3, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    if-nez v3, :cond_0

    .line 259
    const-string v2, "TetherNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableTetherNetwork already or did not nai changed <<<<<<<<<<<<<<<<<<<< status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "devices : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    return v1

    .line 263
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 264
    const-string v2, "TetherNetwork"

    const-string v3, "disableTetherNetwork other interface is running>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetwork;->unregisterTetherNetworkReceiver()V

    .line 269
    const-string v1, "TetherNetwork"

    const-string v3, "disableTetherNetwork return to mobile network<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v1, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    const/16 v3, 0x3f2

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->removeMessages(I)V

    .line 273
    sget-object v1, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->removeMessages(I)V

    .line 274
    sget-object v1, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    sput v2, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    move v1, v2

    .line 276
    goto :goto_0
.end method

.method public enableTetherNetwork()Z
    .locals 8

    .prologue
    const/16 v7, 0x3f2

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 196
    const-string v3, "TetherNetwork"

    const-string v4, "enableTetherNetwork called >>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget v3, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    if-ne v3, v6, :cond_0

    .line 199
    const-string v3, "TetherNetwork"

    const-string v4, "enableTetherNetwork already started>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return v6

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-le v3, v6, :cond_1

    .line 208
    const-string v3, "TetherNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableTetherNetwork already started>>>>>>>>>>>>>>>> devices : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiACGFeaturedCarrier()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetwork;->getTetherNaiChangeEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    const-string v3, "TetherNetwork"

    const-string v4, "enableTetherNetwork ,not use mobile nai"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mLineNumberEnabled:Z

    if-nez v3, :cond_3

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 228
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    const-string v3, "000"

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 232
    const-string v3, "TetherNetwork"

    const-string v4, "Phone is activated and start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v6, p0, Lcom/android/server/connectivity/TetherNetwork;->mLineNumberEnabled:Z

    .line 240
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetwork;->registerTetherNetworkReceiver()V

    .line 241
    const-string v3, "TetherNetwork"

    const-string v4, "enableTetherNetwork tether network start >>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v3, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    invoke-virtual {v3, v7}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->removeMessages(I)V

    .line 245
    sget-object v3, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    const/16 v4, 0x3f3

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->removeMessages(I)V

    .line 246
    sget-object v3, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkHandler:Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    sput v6, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkStatus:I

    goto/16 :goto_0

    .line 235
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v3, "TetherNetwork"

    const-string v4, "Phone is not activated tether enabling"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getHotspotFeatureEnabled()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 677
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiACGFeaturedCarrier()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    if-eqz v3, :cond_0

    .line 716
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    const/16 v4, 0x1414

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getFlag(I)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "resultStr":Ljava/lang/String;
    const-string v3, "TetherNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCommandsNvItems NV_LG_FW_ACG_HOTSPOT_FUNCTION_ENABLED_I :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    const/4 v2, 0x0

    .line 741
    .end local v1    # "resultStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 725
    .restart local v1    # "resultStr":Ljava/lang/String;
    :cond_1
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    const/4 v2, 0x1

    goto :goto_0

    .line 732
    .end local v1    # "resultStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TetherNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHotspotFeatureEnabled got Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTetherNaiChangeEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 761
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiACGFeaturedCarrier()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    if-eqz v3, :cond_0

    .line 796
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    const/16 v4, 0x1415

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getFlag(I)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "resultStr":Ljava/lang/String;
    const-string v3, "TetherNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCommandsNvItems NV_LG_FW_ACG_TETHER_NAI_CHANGE_ENABLED_I :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 812
    .end local v1    # "resultStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TetherNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTetherNaiChangeEnabled got Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAllowedTetherableInterface(ZZZ)Z
    .locals 9
    .param p1, "usb"    # Z
    .param p2, "hotspot"    # Z
    .param p3, "other"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 285
    new-instance v0, Ljava/lang/String;

    const-string v5, "/carrier/data/td"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "cmln_data_tether":Ljava/lang/String;
    const/4 v1, 0x1

    .line 290
    .local v1, "ref_value":I
    if-eqz p2, :cond_2

    .line 291
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v2

    .line 297
    .local v2, "tetherMode":I
    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    .line 324
    .end local v2    # "tetherMode":I
    :cond_0
    :goto_0
    return v3

    .restart local v2    # "tetherMode":I
    :cond_1
    move v3, v4

    .line 300
    goto :goto_0

    .line 311
    .end local v2    # "tetherMode":I
    :cond_2
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiACGFeaturedCarrier()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 313
    if-eqz p2, :cond_4

    .line 314
    const-string v5, "TetherNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TetherNetwork.isAllowedTetherableInterface  : mHotspotFeatureEnabled =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/connectivity/TetherNetwork;->mHotspotFeatureEnabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v5, p0, Lcom/android/server/connectivity/TetherNetwork;->mHotspotFeatureEnabled:I

    if-ne v5, v8, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetwork;->getHotspotFeatureEnabled()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/TetherNetwork;->mHotspotFeatureEnabled:I

    .line 318
    :cond_3
    iget v5, p0, Lcom/android/server/connectivity/TetherNetwork;->mHotspotFeatureEnabled:I

    if-eq v5, v8, :cond_4

    .line 319
    iget v5, p0, Lcom/android/server/connectivity/TetherNetwork;->mHotspotFeatureEnabled:I

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v4

    .line 324
    goto :goto_0
.end method

.method public isAllowedTetherableInterface(ZZZZ)Z
    .locals 1
    .param p1, "usb"    # Z
    .param p2, "hotspot"    # Z
    .param p3, "bt"    # Z
    .param p4, "other"    # Z

    .prologue
    .line 330
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/connectivity/TetherNetwork;->isAllowedTetherableInterface(ZZZ)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetherNetworkAvail()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isPamPdnDataProfileEnabled()Z

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showAuthErrorDialog()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V

    .line 548
    return-void
.end method
