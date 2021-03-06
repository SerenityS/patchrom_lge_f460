.class public Lcom/android/internal/telephony/SingleBinary;
.super Ljava/lang/Object;
.source "SingleBinary.java"


# static fields
.field private static final BROWSER_INDEX:I = 0x1

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final LGHOME_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final TELEPHONY_PROVIDER_INDEX:I = 0x2

.field private static isBrowserdbDeleted:Z

.field private static isLGHomedbDeleted:Z

.field private static isMatchedStatus:Z

.field private static isTelephonydbDeleted:Z

.field private static mContext:Landroid/content/Context;

.field private static mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

.field private static mTryToSwitch:Z


# instance fields
.field private final CONFIG_MAP_FILE:Ljava/lang/String;

.field private final DATA_OPERATOR_FILE:Ljava/lang/String;

.field private final OPERATOR_DELETE_COMPLETE_INTENT:Ljava/lang/String;

.field OPERATOR_DELETE_FILTER:Landroid/content/IntentFilter;

.field OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

.field SIM_STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

.field private dialogProgress:Landroid/app/AlertDialog;

.field private mEnableSBP:Ljava/lang/String;

.field private mEnableUI:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMncLength:I

.field private mNTCodeChanged:Ljava/lang/String;

.field private mNTcodeMcc:Ljava/lang/String;

.field private mSIMChanged:Ljava/lang/String;

.field private mSIMChecked:Ljava/lang/String;

.field private mSIMMcc:Ljava/lang/String;

.field private operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private setupWizardStartReceiver:Landroid/content/BroadcastReceiver;

.field private simChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SingleBinary;->mTryToSwitch:Z

    sput-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    sput-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z

    sput-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z

    sput-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "F"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    const-string v0, "/cust/cust_path_mapping.cfg"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->CONFIG_MAP_FILE:Ljava/lang/String;

    const-string v0, "/data/.OP"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->DATA_OPERATOR_FILE:Ljava/lang/String;

    const-string v0, "com.lge.action.CUST_DELETE_COMPLETE"

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_DELETE_COMPLETE_INTENT:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.action.CUST_COMPLETE_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.setupwizard.ACTION_START_DELETE_APK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_DELETE_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->SIM_STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/internal/telephony/SingleBinary$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$1;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/SingleBinary$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$2;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->setupWizardStartReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/SingleBinary$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SingleBinary$3;-><init>(Lcom/android/internal/telephony/SingleBinary;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->simChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "GSM"

    const-string v1, "[LGE][SBP] Create!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.build.sbp"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.sim-changed"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    const-string v0, "persist.sys.ntcode-changed"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    const-string v0, "persist.sys.iccid-mcc"

    const-string v1, "FFF"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    const-string v0, "persist.sys.mcc-list"

    const-string v1, "FFF"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    const-string v0, "ro.build.sbp.ui"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableUI:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary;->setupWizardStartReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_DELETE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary;->simChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary;->SIM_STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SingleBinary;->isLGHomedbDeleted:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SingleBinary;->isBrowserdbDeleted:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SingleBinary;->isTelephonydbDeleted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SingleBinary;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChecked:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChecked:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SingleBinary;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SingleBinary;->mMncLength:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SingleBinary;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public static deleteDummyResource(Ljava/io/File;I)Z
    .locals 17
    .param p0, "path"    # Ljava/io/File;
    .param p1, "multiSubset"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, "files":[Ljava/io/File;
    const-string v14, "ro.lge.capp_cupss.rootdir"

    const-string v15, "/cust"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "custCurrentPath":Ljava/lang/String;
    const-string v4, "/cust"

    .local v4, "custDefaultPath":Ljava/lang/String;
    if-nez v6, :cond_1

    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] No Files"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] Skip to delete!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .local v10, "operatorPath":Ljava/lang/String;
    const-string v14, "/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "subCA":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "multiSubCA":I
    array-length v13, v12

    .local v13, "subCASize":I
    move/from16 v0, p1

    .local v0, "MultiSubDepth":I
    const/4 v11, 0x0

    .local v11, "protectMultiSub":I
    const/4 v14, 0x1

    const-string v15, "ro.build.sbp.ui"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v14, v15, :cond_3

    const/4 v11, 0x1

    :cond_3
    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    const/4 v2, 0x0

    .local v2, "count":I
    :goto_1
    if-ge v2, v13, :cond_4

    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] SUBCA_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    .end local v2    # "count":I
    :cond_5
    move-object v1, v6

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_f

    aget-object v5, v1, v7

    .local v5, "f":Ljava/io/File;
    const/4 v14, 0x1

    if-ne v9, v14, :cond_b

    if-nez v11, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v12, v0

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] Delete Folder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/android/internal/telephony/SingleBinary;->deleteDummyResource(Ljava/io/File;I)Z

    goto :goto_3

    :cond_8
    add-int/lit8 v14, v13, -0x1

    if-ge v0, v14, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v5, v0}, Lcom/android/internal/telephony/SingleBinary;->deleteDummyResource(Ljava/io/File;I)Z

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "userdata.ubid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Delete File: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Protect to delete: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "GSM"

    const-string v15, "[LGE][SBP] Delete Folder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/android/internal/telephony/SingleBinary;->deleteDummyResource(Ljava/io/File;I)Z

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "userdata.ubid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Delete File: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE][SBP] Protect to delete: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v5    # "f":Ljava/io/File;
    :cond_f
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public static deleteEmptyFolder(Ljava/io/File;)V
    .locals 8
    .param p0, "path"    # Ljava/io/File;

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_2

    const-string v5, "GSM"

    const-string v6, "[LGE][SBP] No Empty folder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGE][SBP] Delete empty folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->deleteEmptyFolder(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SingleBinary;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/internal/telephony/SingleBinary;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {v0}, Lcom/android/internal/telephony/SingleBinary;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SingleBinary;->mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SingleBinary;->mSingleBinary:Lcom/android/internal/telephony/SingleBinary;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notRevenueShareClientId()V
    .locals 2

    .prologue
    const-string v0, "ro.com.google.clientidbase.am"

    const-string v1, "android-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.gmm"

    const-string v1, "android-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.ms"

    const-string v1, "android-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.yt"

    const-string v1, "android-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase"

    const-string v1, "android-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private revenueShareClientID()V
    .locals 2

    .prologue
    const-string v0, "com.android.chrome"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SingleBinary;->setPreferredBrowser(Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.am"

    const-string v1, "android-om-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.gmm"

    const-string v1, "android-om-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.ms"

    const-string v1, "android-om-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase.yt"

    const-string v1, "android-om-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.com.google.clientidbase"

    const-string v1, "android-om-lge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPreferredBrowser(Ljava/lang/String;)V
    .locals 14
    .param p1, "strDefaultBrowser"    # Ljava/lang/String;

    .prologue
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    const-string v12, "http://www.lge.com"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v10, "urlIntent":Landroid/content/Intent;
    sget-object v11, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "mPackageManager":Landroid/content/pm/PackageManager;
    const v11, 0x10040

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .local v8, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_0

    const-string v11, "GSM"

    const-string v12, "setPreferredBrowser() rList is NULL error!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    const/4 v11, 0x2

    if-ge v4, v11, :cond_1

    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPreferredBrowser() rList size ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " return"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .local v2, "filter":Landroid/content/IntentFilter;
    new-array v9, v4, [Landroid/content/ComponentName;

    .local v9, "set":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .local v1, "browser":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .local v6, "match":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v3

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    aget-object v1, v9, v3

    iget v6, v7, Landroid/content/pm/ResolveInfo;->match:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-nez v2, :cond_4

    const-string v11, "GSM"

    const-string v12, "setPreferredBrowser() cannot find filter error!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v2, v6, v9, v1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v11, "GSM"

    const-string v12, "setPreferredBrowser() OK"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enableStatus()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    return-object v0
.end method

.method public getGid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    const-string v1, "gsm.sim.operator.gid"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/lge/uicc/LGUiccCard;

    invoke-direct {v1}, Lcom/lge/uicc/LGUiccCard;-><init>()V

    invoke-virtual {v1}, Lcom/lge/uicc/LGUiccCard;->getGid1()Ljava/lang/String;

    move-result-object v0

    .local v0, "gid":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method public readConfigMCCMNCFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, "/system/etc/open_client_id.cfg"

    .local v2, "configFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "mccmncFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .local v5, "mccmncMatched":Z
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->notRevenueShareClientId()V

    const-string v6, "persist.radio.sim-fixed"

    const-string v7, "not_rev_share"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "mccmncMatched":Z
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "mccmncMatched":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SingleBinary;->revenueShareClientID()V

    const-string v6, "persist.radio.sim-fixed"

    const-string v7, "rev_share"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v5    # "mccmncMatched":Z
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    const-string v2, "persist.radio.mvno.subset-list"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "mvno_subset":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .local v1, "ntCodeSubsetList":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "ntCodeSubsetList":Ljava/lang/String;
    :cond_0
    const-string v2, "persist.sys.subset-list"

    const-string v3, "FF"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ntCodeSubsetList":Ljava/lang/String;
    goto :goto_0
.end method

.method public readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "ntCodeSubsetList"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .local v3, "displayUI":Z
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    const-string v6, "/cust"

    .local v6, "matched_rootdir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v8, "/cust/cust_path_mapping.cfg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "cupssPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "keyValue":[Ljava/lang/String;
    array-length v8, v4

    if-le v8, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "subset":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v6, v7, v8

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    .end local v4    # "keyValue":[Ljava/lang/String;
    .end local v7    # "subset":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-object v6

    :catch_0
    move-exception v8

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public switchCustBaseNTCode()V
    .locals 6

    .prologue
    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "persist.sys.mccmnc-list"

    const-string v4, "FFFFF"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ntcode_mccmnc":Ljava/lang/String;
    const-string v1, "/cust"

    .local v1, "mapping_rootdir":Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE][SBP] Try to Switch CUST based on NTCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/internal/telephony/SingleBinary;->mTryToSwitch:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/SingleBinary;->mTryToSwitch:Z

    const-string v3, "FFFFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    :cond_0
    const-string v3, "persist.radio.first-mccmnc"

    const-string v4, "FFFFF"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/internal/telephony/SingleBinary;->isMatchedStatus:Z

    if-eqz v3, :cond_3

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE][SBP] Mapping CUST Dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.radio.first-mccmnc"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SingleBinary;->operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.action.CUST_CHANGED_INFO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "cust_old_path"

    const-string v4, "persist.sys.cupss.prev-rootdir"

    const-string v5, "/cust"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mapping_rootdir":Ljava/lang/String;
    .end local v2    # "ntcode_mccmnc":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "mapping_rootdir":Ljava/lang/String;
    .restart local v2    # "ntcode_mccmnc":Ljava/lang/String;
    :cond_3
    const-string v3, "persist.radio.first-mccmnc"

    const-string v4, "FFFFF"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCustBaseUI(Ljava/lang/String;I)V
    .locals 37
    .param p1, "Imsi"    # Ljava/lang/String;
    .param p2, "mncLength"    # I

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SingleBinary;->mMncLength:I

    const-string v34, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mEnableUI:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    const-string v34, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_9

    const-string v34, "persist.radio.first-mccmnc"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    const-string v26, "FFFFF"

    .local v26, "sim_mccmnc":Ljava/lang/String;
    const-string v19, "/cust"

    .local v19, "mapping_rootdir":Ljava/lang/String;
    const-string v34, "ro.lge.capp_cupss.rootdir"

    const-string v35, "/cust"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cupss_rootdir":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "displayUI":Z
    const-string v34, "GSM"

    const-string v35, "[LGE][SBP] Try to Switch CUST based on the Cust confirmed UI"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_0

    const-string v34, "3"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SingleBinary;->mMncLength:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x6

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    :cond_0
    :goto_0
    const-string v34, "gsm.sim.operator.alpha"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, "spn":Ljava/lang/String;
    const-string v34, "persist.sys.mccmnc-list"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "ntCodeMccMnc":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "gidProperty":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "isSpnMatched":Z
    const/4 v14, 0x0

    .local v14, "isSimMccMncInNTCode":Z
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_3

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_3

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.spnnamelist_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "spnProperties":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.spnsubsetlist_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "spnSubsetProperties":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.cupss_gid_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    if-eqz v29, :cond_3

    const-string v34, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3

    const-string v34, ","

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .local v28, "spnList":[Ljava/lang/String;
    const-string v34, ","

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .local v30, "spnSubsetList":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_2

    aget-object v34, v28, v11

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    aget-object v34, v30, v11

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    const-string v35, "FF"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    const-string v34, "persist.radio.mvno.subset-list"

    aget-object v35, v30, v11

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v15, 0x1

    :cond_2
    if-nez v15, :cond_3

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.spnopenui_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, "0"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.spnopensubset_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, "01"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .local v32, "spnopenuisubset":Ljava/lang/String;
    const-string v34, "persist.radio.mvno.subset-list"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v11    # "i":I
    .end local v28    # "spnList":[Ljava/lang/String;
    .end local v29    # "spnProperties":Ljava/lang/String;
    .end local v30    # "spnSubsetList":[Ljava/lang/String;
    .end local v31    # "spnSubsetProperties":Ljava/lang/String;
    .end local v32    # "spnopenuisubset":Ljava/lang/String;
    :cond_3
    if-eqz v14, :cond_e

    if-eqz v9, :cond_c

    const-string v34, ""

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_c

    const-string v34, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->getGid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_c

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.gidsubset_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, "FF"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "gidsubset":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v34, "/cust"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4

    const-string v34, "persist.radio.mvno.subset-list"

    move-object/from16 v0, v34

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "gidsubset":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v34, "/cust"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    move-object/from16 v19, v5

    :cond_5
    move-object/from16 v8, v19

    .local v8, "finalMapping_rootdir":Ljava/lang/String;
    const-string v34, "persist.sys.backup-status"

    const-string v35, "F"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    const-string v34, "GSM"

    const-string v35, "[LGE][SBP] RESTORE Mode support!!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_6
    const-string v34, "persist.radio.first-mccmnc"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_10

    const-string v34, "GSM"

    const-string v35, "[LGE][SBP] CUST locked!!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_3
    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v7, v0, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_9

    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[LGE][SBP] CUST setting MCC,MNC :"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v34, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    const-string v35, "keyguard"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    .local v17, "km":Landroid/app/KeyguardManager;
    const-string v34, "keyguard"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v16

    .local v16, "kl":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    sget-object v34, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->operatorSwitchReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->OPERATOR_SWICHING_FILTER:Landroid/content/IntentFilter;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v18, Lcom/android/internal/telephony/SingleBinary$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/SingleBinary$4;-><init>(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)V

    .local v18, "listener":Landroid/content/DialogInterface$OnClickListener;
    const-string v34, "persist.radio.mvno.subset-list"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "mvno_subset":Ljava/lang/String;
    const-string v34, "ro.lge.sbp.block-popup"

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .local v13, "isOkCancelNotRequired":Ljava/lang/Boolean;
    const-string v34, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    if-nez v14, :cond_7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_13

    :cond_7
    new-instance v12, Landroid/content/Intent;

    const-string v34, "com.lge.action.CUST_CHANGED_INFO"

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "intent":Landroid/content/Intent;
    const-string v34, "cust_old_path"

    const-string v35, "ro.lge.capp_cupss.rootdir"

    const-string v36, "/cust"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v34, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v34, "persist.radio.cupss.next-root"

    move-object/from16 v0, v34

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_8

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_11

    :cond_8
    const-string v34, "persist.radio.first-mccmnc"

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v24

    .local v24, "r":Landroid/content/res/Resources;
    const v34, 0x20d03b9

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .local v33, "title":Ljava/lang/String;
    const v34, 0x20d03ba

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .local v20, "message":Ljava/lang/String;
    new-instance v34, Landroid/app/AlertDialog$Builder;

    sget-object v35, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-direct/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v34

    const/16 v35, 0x7d3

    invoke-virtual/range {v34 .. v35}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    .end local v5    # "cupss_rootdir":Ljava/lang/String;
    .end local v7    # "displayUI":Z
    .end local v8    # "finalMapping_rootdir":Ljava/lang/String;
    .end local v9    # "gidProperty":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "isOkCancelNotRequired":Ljava/lang/Boolean;
    .end local v14    # "isSimMccMncInNTCode":Z
    .end local v15    # "isSpnMatched":Z
    .end local v16    # "kl":Landroid/app/KeyguardManager$KeyguardLock;
    .end local v17    # "km":Landroid/app/KeyguardManager;
    .end local v18    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v19    # "mapping_rootdir":Ljava/lang/String;
    .end local v20    # "message":Ljava/lang/String;
    .end local v21    # "mvno_subset":Ljava/lang/String;
    .end local v22    # "ntCodeMccMnc":Ljava/lang/String;
    .end local v24    # "r":Landroid/content/res/Resources;
    .end local v26    # "sim_mccmnc":Ljava/lang/String;
    .end local v27    # "spn":Ljava/lang/String;
    .end local v33    # "title":Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .restart local v5    # "cupss_rootdir":Ljava/lang/String;
    .restart local v7    # "displayUI":Z
    .restart local v19    # "mapping_rootdir":Ljava/lang/String;
    .restart local v26    # "sim_mccmnc":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x5

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .restart local v9    # "gidProperty":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v14    # "isSimMccMncInNTCode":Z
    .restart local v15    # "isSpnMatched":Z
    .restart local v22    # "ntCodeMccMnc":Ljava/lang/String;
    .restart local v27    # "spn":Ljava/lang/String;
    .restart local v28    # "spnList":[Ljava/lang/String;
    .restart local v29    # "spnProperties":Ljava/lang/String;
    .restart local v30    # "spnSubsetList":[Ljava/lang/String;
    .restart local v31    # "spnSubsetProperties":Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .end local v11    # "i":I
    .end local v28    # "spnList":[Ljava/lang/String;
    .end local v29    # "spnProperties":Ljava/lang/String;
    .end local v30    # "spnSubsetList":[Ljava/lang/String;
    .end local v31    # "spnSubsetProperties":Ljava/lang/String;
    :cond_c
    if-nez v15, :cond_d

    const-string v34, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_d

    const/16 v34, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .local v25, "simMNC":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4

    const-string v34, "/cust"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4

    const-string v34, "persist.radio.mvno.subset-list"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v25    # "simMNC":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    :cond_e
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_f

    const-string v34, "persist.sys.mcc-list"

    const-string v35, ""

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "FFF"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_f

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ro.config.spnopensubset_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v35, v35, v36

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, "FF"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "openSubset":Ljava/lang/String;
    const-string v34, "persist.radio.mvno.subset-list"

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .end local v23    # "openSubset":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->readConfigMapFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .restart local v8    # "finalMapping_rootdir":Ljava/lang/String;
    :cond_10
    const-string v34, "persist.radio.first-mccmnc"

    const-string v35, "FFFFF"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "isOkCancelNotRequired":Ljava/lang/Boolean;
    .restart local v16    # "kl":Landroid/app/KeyguardManager$KeyguardLock;
    .restart local v17    # "km":Landroid/app/KeyguardManager;
    .restart local v18    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v21    # "mvno_subset":Ljava/lang/String;
    :cond_11
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_12

    const-string v34, "persist.radio.first-mccmnc"

    const-string v35, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v35, v35, v36

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const-string v34, "persist.radio.first-mccmnc"

    const-string v35, "FFFFFF"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v12    # "intent":Landroid/content/Intent;
    :cond_13
    const-string v33, "Warning"

    .restart local v33    # "title":Ljava/lang/String;
    const-string v20, "New SIM Detected. Need to apply new settings, require reboot. Do you want to reboot now?"

    .restart local v20    # "message":Ljava/lang/String;
    const-string v4, "Ok"

    .local v4, "buttonOkTxt":Ljava/lang/String;
    const-string v3, "Cancel"

    .local v3, "buttonCancelTxt":Ljava/lang/String;
    new-instance v34, Landroid/app/AlertDialog$Builder;

    sget-object v35, Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;

    invoke-direct/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v34

    const/16 v35, 0x7d3

    invoke-virtual/range {v34 .. v35}, Landroid/view/Window;->setType(I)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5
.end method

.method public updateSystemLanguage()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const-string v6, "1"

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mEnableSBP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "persist.sys.cust.iccid_lang"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, ""

    .local v5, "language":Ljava/lang/String;
    const-string v2, ""

    .local v2, "country":Ljava/lang/String;
    const-string v6, "persist.radio.first-set"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "firstSetLang":Ljava/lang/String;
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] SIM Changed status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "1"

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] ICCID-MCC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FFF"

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_2

    const-string v6, "ro.build.default_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ZA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ro.build.target_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ZA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "655"

    iput-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMMcc:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_3

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] No match language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "country":Ljava/lang/String;
    .end local v4    # "firstSetLang":Ljava/lang/String;
    .end local v5    # "language":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .restart local v2    # "country":Ljava/lang/String;
    .restart local v4    # "firstSetLang":Ljava/lang/String;
    .restart local v5    # "language":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] PhoneBase locale set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " base SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "persist.radio.first-set"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "GSM"

    const-string v7, "[LGE][SBP] Can\'t update system language base on SIM-ICCID MCC"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v6, "F"

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "2"

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mSIMChanged:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_6
    const-string v6, "persist.sys.ntcode_lang"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTCodeChanged:Ljava/lang/String;

    const-string v7, "F"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_7
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] NTCODE-MCC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, "FFF"

    iget-object v7, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SingleBinary;->mNTcodeMcc:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_9

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] No match language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_a

    const-string v2, ""

    :cond_a
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .restart local v0    # "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .restart local v1    # "config":Landroid/content/res/Configuration;
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v6, "persist.radio.first-set"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] Just 1-time update to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " base on NT-Code"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "GSM"

    const-string v7, "[LGE][SBP] Can\'t update system lang base on NT-Code MCC"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v6, "GSM"

    const-string v7, "[LGE][SBP] The inserted SIM is same!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
