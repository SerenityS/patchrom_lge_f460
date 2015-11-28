.class public Lcom/android/internal/telephony/gfit/GfitUtils;
.super Landroid/os/Handler;
.source "GfitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field public static final EVENT_COUNT_IN_NO_SERVICE:I = 0xdc

.field public static final EVENT_END_QUERY_AVAILABLE_NETWORKS:I = 0xde

.field public static final EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY:I = 0xc9

.field public static final EVENT_GFIT_ICC_CHANGED:I = 0xd4

.field public static final EVENT_GFIT_NO_SERVICE_CHANGED:I = 0x64

.field public static final EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE:I = 0xc8

.field public static final EVENT_GFIT_QUERY_AVAILABLE_NETWORKS:I = 0xd0

.field public static final EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE:I = 0xcc

.field public static final EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE_AFTER_BOOT:I = 0xcd

.field public static final EVENT_GFIT_QUERY_PREFERRED_NETWORK_TYPE:I = 0xca

.field public static final EVENT_GFIT_REGISTERED_TO_NETWORK:I = 0x65

.field public static final EVENT_GFIT_RETRY_QUERY_AVAILABLE_NETWORKS:I = 0xd3

.field public static final EVENT_GFIT_RETRY_SET_PREFERRED_NETWORK_TYPE:I = 0xd2

.field public static final EVENT_GFIT_SET_NETWORK_SELECTION_AUTOMATIC:I = 0xce

.field public static final EVENT_GFIT_SET_NETWORK_SELECTION_MANUAL:I = 0xcf

.field public static final EVENT_GFIT_SET_PREFERRED_NETWORK_TYPE:I = 0xcb

.field public static final EVENT_GFIT_SWITCH_TO_NETWORK_SELECTION_MODE_AUTOMATIC:I = 0xd1

.field public static final EVENT_GFIT_TRIGGER_NO_SERVICE_CHANGED:I = 0x66

.field public static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0xdf

.field public static final EVENT_START_QUERY_AVAILABLE_NETWORKS:I = 0xdd

.field private static final G1_FACTORY_PROPERTY:Ljava/lang/String; = "ro.factorytest"

.field private static final LGE_FTM_OFF:I = 0x2

.field private static final LGE_FTM_ON:I = 0x1

.field static LOG_TAG:Ljava/lang/String; = null

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field private static final NT_MODE_CDMA_ONLY:I = 0x2

.field private static final NT_MODE_GLOBAL:I = 0x0

.field private static final NT_MODE_LTE_CDMA:I = 0x3

.field private static final NT_MODE_LTE_GSM_UMTS:I = 0x1

.field private static final NT_SYSTEM_SELECTION_AUTOMATIC:I = 0x0

.field private static final NT_SYSTEM_SELECTION_MANUAL:I = 0x1

.field private static final PLMN_MAX:I = 0x14

.field private static final PROPERTY_AIRPLANE_MODE_ON:Ljava/lang/String; = "persist.radio.airplane_mode_on"

.field private static final PROPERTY_GFIT_POPUP_ON:Ljava/lang/String; = "persist.service.gfit.popup_on"

.field public static final RETRY_TO_QUERY_AVAILABLE_NETWORKS:I = 0xa

.field public static final RETRY_TO_SET_PREFFERED_NETWORK_TYPE:I = 0x5

.field private static final TIMEOUT_DECTECT_SIM_STATE:I = 0xbb8

.field private static final TIMEOUT_HANDLING_SIM_STATE_AFTER_DELAY:I = 0xbb8

.field private static final TIMEOUT_NO_DELAY:I = 0x0

.field private static final TIMEOUT_NO_SERVICE:I = 0x7530

.field private static final TIMEOUT_REMOVE_SWITCH_TO_AUTOMATIC_MODE:I = 0x1388

.field private static final TIMEOUT_RETRY_QUERY_AVAILABLE_NETWORKS:I = 0x2710

.field private static final TIMEOUT_RETRY_SET_PREFERRED_NETWORK_TYPE:I = 0x1388

.field static final TOAST_DBG:Z = false

.field private static final VZW_GFIT_ICC_ABSENT:I = 0x0

.field private static final VZW_GFIT_ICC_READY:I = 0x1

.field private static checkSIMState:Z = false

.field private static isFirstDisplay:Z = false

.field static isNoGlobalPopupNeeded:Z = false

.field private static final preferredNetworkMode:I = 0xa


# instance fields
.field private DISPLAY_INSERT_SIM_CARD:Ljava/lang/String;

.field private DISPLAY_NO_SIM:Ljava/lang/String;

.field private DISPLAY_POPUP:Ljava/lang/String;

.field private DISPLAY_SIM_DETECTED:Ljava/lang/String;

.field private isManualMode:Z

.field private isManualSearching:Z

.field private isNetworkModeDisplayed:Z

.field private isToastDisplayed:Z

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mFTMFlag:I

.field private mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkMode:I

.field private mNewServiceState:I

.field mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

.field private mProcessingNoService:Z

.field private mServiceState:I

.field mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private nRetryPrefferedNetworkType:I

.field private nRetryQuertyAvailablenetworks:I

.field onClickCancelButton:Landroid/content/DialogInterface$OnClickListener;

.field onClickPlmnList:Landroid/content/DialogInterface$OnClickListener;

.field private phone:Lcom/android/internal/telephony/PhoneBase;

.field plmnListDialog:Landroid/app/AlertDialog;

.field private sst:Lcom/android/internal/telephony/ServiceStateTracker;

.field timeout:I

.field toastForCount:Landroid/widget/Toast;

.field private useActionSIMStateChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "GSM"

    sput-object v0, Lcom/android/internal/telephony/gfit/GfitUtils;->LOG_TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gfit/GfitUtils;->isFirstDisplay:Z

    sput-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v1, "No SIM card. Switching to CDMA mode."

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_NO_SIM:Ljava/lang/String;

    const-string v1, "SIM card detected. Switching to global mode."

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_SIM_DETECTED:Ljava/lang/String;

    const-string v1, "A SIM Card is needed to operate this phone. Please turn off your phone and insert your SIM card."

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_INSERT_SIM_CARD:Ljava/lang/String;

    const-string v1, "The network is not avialble. You can try global mode to see if alternative networks are availabe. Do you want to set network to global mode?"

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_POPUP:Ljava/lang/String;

    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    iput-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iput-boolean v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->useActionSIMStateChanged:Z

    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    iput v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    iput v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$1;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$2;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$6;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickCancelButton:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$7;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickPlmnList:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNoServiceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v1, 0x65

    invoke-virtual {p1, p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xd4

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdd

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForStartQueryAvailableNetwork(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xde

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForEndQueryAvailableNetwork(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v1, 0xdf

    invoke-virtual {p2, p0, v1, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForSetPreferredNetworkType(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "mGfitFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "mGfitFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "create GfitUtils..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gfit/GfitUtils;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gfit/GfitUtils;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gfit/GfitUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gfit/GfitUtils;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gfit/GfitUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gfit/GfitUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    const-string v1, "close system dialogs"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "closeDialogs":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private count()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    iget v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timer expiry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/16 v0, 0xdc

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timer expiry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    goto :goto_1
.end method

.method private createNotePopup(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isSetupWizard()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t display user pop-up : isPopupDisabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSetupWizard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isSetupWizard()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    .local v1, "popup":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "r":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20a01cb

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x20d02ae

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x20d02a6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gfit/GfitUtils$3;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$3;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "notePopup":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .end local v0    # "notePopup":Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x20d02ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    const v3, 0x20d02a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    const v3, 0x20d02aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createNotePopupGlobal()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearchingInSystemSelect()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getIsNoGlobalPopupNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "Don\'t display popup"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v3, "Display Global popup"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->closeSystemDialogs()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "r":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x2030019

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .local v0, "linear":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20a01cb

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x20d02ae

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x20d02a6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gfit/GfitUtils$5;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils$5;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x20d02a7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gfit/GfitUtils$4;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$4;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "notePopup":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private createPlmnListDialog([Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "plmnList"    # [Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Don\'t display popup"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v1

    .local v1, "systemSelection":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPlmnListDialog(): systemSelection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20a01cb

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x20d02af

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickPlmnList:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20d02a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickCancelButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendSwitchToNetworkSelectionModeAutomaticAfterTimeout(I)V

    goto :goto_0
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    const-string v0, "Not supported Event"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "EVENT_GFIT_NO_SERVICE_CHANGED"

    goto :goto_0

    :sswitch_1
    const-string v0, "EVENT_GFIT_REGISTERED_TO_NETWORK"

    goto :goto_0

    :sswitch_2
    const-string v0, "EVENT_GFIT_TRIGGER_NO_SERVICE_CHANGED"

    goto :goto_0

    :sswitch_3
    const-string v0, "EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE"

    goto :goto_0

    :sswitch_4
    const-string v0, "EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY"

    goto :goto_0

    :sswitch_5
    const-string v0, "EVENT_GFIT_QUERY_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    :sswitch_6
    const-string v0, "EVENT_GFIT_SET_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    :sswitch_7
    const-string v0, "EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE"

    goto :goto_0

    :sswitch_8
    const-string v0, "EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE_AFTER_BOOT"

    goto :goto_0

    :sswitch_9
    const-string v0, "EVENT_GFIT_SET_NETWORK_SELECTION_AUTOMATIC"

    goto :goto_0

    :sswitch_a
    const-string v0, "EVENT_GFIT_SET_NETWORK_SELECTION_MANUAL"

    goto :goto_0

    :sswitch_b
    const-string v0, "EVENT_GFIT_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    :sswitch_c
    const-string v0, "EVENT_GFIT_SWITCH_TO_NETWORK_SELECTION_MODE_AUTOMATIC"

    goto :goto_0

    :sswitch_d
    const-string v0, "EVENT_GFIT_RETRY_SET_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    :sswitch_e
    const-string v0, "EVENT_GFIT_RETRY_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    :sswitch_f
    const-string v0, "EVENT_GFIT_ICC_CHANGED"

    goto :goto_0

    :sswitch_10
    const-string v0, "EVENT_COUNT_IN_NO_SERVICE"

    goto :goto_0

    :sswitch_11
    const-string v0, "EVENT_START_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    :sswitch_12
    const-string v0, "EVENT_END_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    :sswitch_13
    const-string v0, "EVENT_SET_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xcb -> :sswitch_6
        0xcc -> :sswitch_7
        0xcd -> :sswitch_8
        0xce -> :sswitch_9
        0xcf -> :sswitch_a
        0xd0 -> :sswitch_b
        0xd1 -> :sswitch_c
        0xd2 -> :sswitch_d
        0xd3 -> :sswitch_e
        0xd4 -> :sswitch_f
        0xdc -> :sswitch_10
        0xdd -> :sswitch_11
        0xde -> :sswitch_12
        0xdf -> :sswitch_13
    .end sparse-switch
.end method

.method private getIsNoGlobalPopupNeeded()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNoGlobalPopupNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    return v0
.end method

.method private getServiceState()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    return v0
.end method

.method private getSystemSelection()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "networkMode":I
    iput v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNetworkMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemSelection() : networkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v2, "Not Supported system selection mode"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleCdmaOnlyMode(ZZ)V
    .locals 3
    .param p1, "oldUiccState"    # Z
    .param p2, "newUiccState"    # Z

    .prologue
    const v2, 0x20d02aa

    const-string v1, "handleNetworkMode() : CDMA Only"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep CDMA Only Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_3

    const v1, 0x20d02ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleGlobalMode(ZZ)V
    .locals 3
    .param p1, "oldUiccState"    # Z
    .param p2, "newUiccState"    # Z

    .prologue
    const v2, 0x20d02aa

    const-string v1, "handleNetworkMode() : Global Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep Global Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_3

    const v1, 0x20d02ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLteCdmaMode(ZZ)V
    .locals 3
    .param p1, "oldUiccState"    # Z
    .param p2, "newUiccState"    # Z

    .prologue
    const v2, 0x20d02aa

    const-string v1, "handleNetworkMode() : LTE/CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep LTE/CDMA Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_3

    const v1, 0x20d02ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleLteGsmUmtsMode(ZZ)V
    .locals 3
    .param p1, "oldUiccState"    # Z
    .param p2, "newUiccState"    # Z

    .prologue
    const v2, 0x20d02aa

    const-string v1, "handleNetworkMode() : LTE/GSM/UMTS"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep LTE/GSM/UMTS"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Query PLMN List"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQueryAvailableNetworks()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_5

    const v1, 0x20d02ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNetworkMode(Z)V
    .locals 7
    .param p1, "newUiccState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "old_uicc_state"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "hasUicc":I
    if-ne v0, v3, :cond_0

    move v1, v3

    .local v1, "oldUiccState":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkMode() : oldUiccState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newUiccState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v2

    .local v2, "systemSelection":I
    packed-switch v2, :pswitch_data_0

    const-string v5, "handelNetworkmode() : Not supported"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "old_uicc_state"

    if-nez p1, :cond_1

    :goto_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .end local v1    # "oldUiccState":Z
    .end local v2    # "systemSelection":I
    :cond_0
    move v1, v4

    goto :goto_0

    .restart local v1    # "oldUiccState":Z
    .restart local v2    # "systemSelection":I
    :pswitch_0
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleGlobalMode(ZZ)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleLteGsmUmtsMode(ZZ)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleCdmaOnlyMode(ZZ)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleLteCdmaMode(ZZ)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleUiccStateChanged()V
    .locals 8

    .prologue
    const/16 v7, 0xbb8

    const/16 v6, 0xc9

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    if-eqz v2, :cond_1

    const-string v2, "skip uicc check"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "check uicc check"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "mUiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .local v1, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_2

    sput-boolean v5, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    const-string v2, "UICC is absent.. Display SIM state after 3000 mSec"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct {p0, v6, v4, v4, v7}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V

    goto :goto_0

    :cond_2
    sput-boolean v5, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    const-string v2, "UICC is ready.. Display SIM state after 3000 mSec"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct {p0, v6, v5, v4, v7}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V

    goto :goto_0
.end method

.method private isManualSearchingInSystemSelect()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isManualSearching = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    return v0
.end method

.method private isManualSelection()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    .local v0, "isManual":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isManualSelection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    return v0
.end method

.method private isPopupDisabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    if-nez v4, :cond_3

    const-string v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "factoryTestStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    .end local v0    # "factoryTestStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "factoryTestStr":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    .end local v0    # "factoryTestStr":Ljava/lang/String;
    :cond_2
    const-string v4, "persist.service.gfit.popup_on"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "isGfitPopupEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.service.gfit.popup_on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    .end local v1    # "isGfitPopupEnabled":Z
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    if-ne v4, v3, :cond_2

    goto :goto_0
.end method

.method private isSetupWizard()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.android.LGSetupWizard"

    .local v2, "setupWizard":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/gfit/GfitUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isSetupwizard"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "GSMCDMA"

    .local v0, "TAG":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "GSM"

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GFIT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CDMA"

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gfit/GfitUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GFIT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private selectPlmnDialog(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v11, 0x3

    const/4 v3, 0x0

    .local v3, "nPlmnListNum":I
    const/4 v2, 0x0

    .local v2, "nInfoIndex":I
    const/4 v4, 0x0

    .local v4, "nRatNum":I
    if-nez p1, :cond_0

    const-string v8, "Fail to display PLMN Dialog"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/CharSequence;

    .local v7, "plmnDialog":[Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectPlmnDialog : result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v8, 0x14

    if-ge v0, v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    new-instance v9, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    aput-object v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .local v5, "ni":Lcom/android/internal/telephony/OperatorInfo;
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setMCC(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setMNC(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setRAT(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setOperatorNumeric(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setOperatorAlphaLong(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MCC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getMCC()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MNC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getMNC()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RAT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OperatorNemeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OperatorAlphaLong = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "plmn":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_3
    const-string v8, "selectPlmnDialg() : no Plmn list"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gfit/GfitUtils;->createPlmnListDialog([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private sendPreferredNetworkType(I)V
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPreferredNetworkType() : networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private sendQuerySystemModeAfterBoot()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, "sendQuerySystemModeAfterBoot()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v1, 0xcd

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method private sendTriggerNoServiceChanged()V
    .locals 1

    .prologue
    const-string v0, "sendTriggerNoServiceChanged()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendEmptyMessage(I)Z

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private triggerEventAfterTimeout(IIII)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "timeout"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    int-to-long v1, p4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    const/16 v4, 0xc9

    const/16 v3, 0xc8

    const-string v1, "dispose GfitUtils..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNoServiceChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForStartQueryAvailableNetwork(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEndQueryAvailableNetwork(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForSetPreferredNetworkType(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dispose - remove EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE msg"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "dispose - remove EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY msg"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGfitIntentReceiver unregisterReceiver - Exception Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "receive "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->eventToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    const-string v17, "Not supported"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v17, "No service"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/4 v9, 0x1

    .local v9, "hasChanged":Z
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "hasChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mNewServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v16

    .local v16, "systemSelection":I
    if-eqz v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    const/16 v17, 0xc8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    .end local v9    # "hasChanged":Z
    .end local v16    # "systemSelection":I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v17, "register to network"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/4 v9, 0x1

    .restart local v9    # "hasChanged":Z
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "hasChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mNewServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    if-eqz v9, :cond_0

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "remove EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE from MSG queue"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const-string v17, "register to network.. cancel to set global mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    goto/16 :goto_0

    .end local v9    # "hasChanged":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    if-eqz v17, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopupGlobal()V

    :cond_3
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    goto/16 :goto_0

    :cond_4
    const-string v17, "ignore EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .local v15, "simState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    if-nez v15, :cond_6

    const-string v17, "receive EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY : simState = VZW_GFIT_ICC_ABSENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "old_uicc_state"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mGfitIntentReceiver unregisterReceiver - Exception Msg: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    sget-boolean v17, Lcom/android/internal/telephony/gfit/GfitUtils;->isFirstDisplay:Z

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleNetworkMode(Z)V

    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/internal/telephony/gfit/GfitUtils;->isFirstDisplay:Z

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendTriggerNoServiceChanged()V

    goto/16 :goto_0

    .end local v15    # "simState":I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const-string v17, "success to set preferred network type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .local v12, "preferredNetworkType":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to set preferred network type.. retry to set preffered network type ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendPreferredNetworkType(I)V

    const/16 v17, 0xd2

    const/16 v18, 0x0

    const/16 v19, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "preferredNetworkType":I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    move-object/from16 v10, v17

    check-cast v10, [I

    .local v10, "ints":[I
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/4 v7, 0x1

    .local v7, "currentNetworkSelectinMode":I
    :goto_5
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .local v14, "selectionMode":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "selectionMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", currentNetworkSelectinMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    if-eq v7, v14, :cond_0

    if-nez v7, :cond_a

    const-string v17, "setNetworkSelectionModeAutomatic()"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeAutomatic()V

    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_0

    const-string v17, "sendNetworkSelectionModeManual()"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "currentNetworkSelectinMode":I
    .end local v14    # "selectionMode":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .restart local v7    # "currentNetworkSelectinMode":I
    :cond_c
    const/16 v17, 0x0

    goto :goto_6

    .end local v7    # "currentNetworkSelectinMode":I
    .end local v10    # "ints":[I
    :cond_d
    const-string v17, "Fail to query network selection mode : EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    move-object/from16 v10, v17

    check-cast v10, [I

    .restart local v10    # "ints":[I
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isManualMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v17, 0x0

    goto :goto_7

    .end local v10    # "ints":[I
    :cond_f
    const-string v17, "Fail to query network selection mode after boot : EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE_AFTER_BOOT"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    const-string v17, "success to set network selection automatic"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v17, "Fail to set network selection automatic"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    const-string v17, "success to set network selection manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v17, "Fail to set network selection manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    iget-object v13, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    .local v13, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gfit/GfitUtils;->selectPlmnDialog(Ljava/util/ArrayList;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    goto/16 :goto_0

    .end local v13    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to query available networks.. retry to query avaialbe networks ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    const/16 v17, 0xd3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    :cond_13
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const-string v17, "set automatic mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeAutomatic()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->dismiss()V

    const-string v17, "Set Automatic Mode now"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .restart local v12    # "preferredNetworkType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendPreferredNetworkType(I)V

    goto/16 :goto_0

    .end local v12    # "preferredNetworkType":I
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQueryAvailableNetworks()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleUiccStateChanged()V

    goto/16 :goto_0

    :sswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->count()V

    goto/16 :goto_0

    :sswitch_f
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "Start querying Available networks... cancel popup to switch to global mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_10
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    goto/16 :goto_0

    :sswitch_11
    const-string v17, "Preferred network type is changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "preferred_network_mode"

    const/16 v19, 0xa

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, "NetworkModeChange":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNetworkMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_15

    const/4 v11, 0x1

    .local v11, "isNetworkModeChanged":Z
    :goto_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNetworkModeChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " NetworkModeChange = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mNetworkMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNetworkMode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v17

    if-eqz v17, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_16

    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v17, "Reset time expiry... restart to display Global mode after 30 sec"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    :cond_14
    const/16 v17, 0xc8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    .end local v11    # "isNetworkModeChanged":Z
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_8

    .restart local v11    # "isNetworkModeChanged":Z
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "Network mode changed to Global mode, remove msg for Global switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xcb -> :sswitch_4
        0xcc -> :sswitch_5
        0xcd -> :sswitch_6
        0xce -> :sswitch_7
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_9
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_b
        0xd3 -> :sswitch_c
        0xd4 -> :sswitch_d
        0xdc -> :sswitch_e
        0xdd -> :sswitch_f
        0xde -> :sswitch_10
        0xdf -> :sswitch_11
    .end sparse-switch
.end method

.method public isUsedActionSIMStateChanged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->useActionSIMStateChanged:Z

    return v0
.end method

.method public sendNetworkSelectionModeAutomatic()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v3, "sendNetworkSelectionModeAutomatic()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v3, 0xce

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public sendNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "operatorRat"    # Ljava/lang/String;
    .param p3, "OperatorAlphaLong"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNetworkSelectionModeManual() : operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operatorRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operatorAlphaLong = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v3, 0xcf

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "network_selection_name_key"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public sendQueryAvailableNetworks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, "sendQueryAvailableNetworks()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v1, 0xd0

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public sendQuerySystemMode(I)V
    .locals 3
    .param p1, "systemSelectionMode"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQuerySystemMode(systemSelectionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v1, 0xcc

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public sendSwitchToNetworkSelectionModeAutomaticAfterTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSwitchToNetworkSelectionModeAutomaticAfterTimeout(timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    const/16 v0, 0xd1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setPreferredNetworkMode(I)V
    .locals 4
    .param p1, "preferrdNetworkMode"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "networkMode":I
    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkMode(): preferrdNetworkMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendPreferredNetworkType(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "setPreferredNetowkrMode : Fail to set Preferred Network. "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToGlobalMode()V
    .locals 1

    .prologue
    const-string v0, "switchToGlobalMode()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeAutomatic()V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->setPreferredNetworkMode(I)V

    return-void
.end method
