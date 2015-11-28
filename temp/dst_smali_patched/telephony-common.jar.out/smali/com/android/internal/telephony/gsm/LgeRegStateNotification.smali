.class public Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
.super Ljava/lang/Object;
.source "LgeRegStateNotification.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field static final NETWORK_FAIL_NOTIFICATION_ID:I = 0xc73c

.field static final REJECTCAUSE_NOTIFICATION_ID:I = 0xc73b

.field static final SEARCHING_NOTIFICATION_ID:I = 0xc73a

.field static final SUCCESS_NOTIFICATION_ID:I = 0xc739

.field private static sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;


# instance fields
.field private mFailNotification:Landroid/app/Notification;

.field private mHasShownOperatorInfo:Z

.field private mImsiType:Ljava/lang/String;

.field private mNetworkFailNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOperatorMccMnc:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPrevOperatorName:Ljava/lang/String;

.field private mRef:I

.field private mSearchingNotification:Landroid/app/Notification;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSuccessNotification:Landroid/app/Notification;

.field private newSS:Landroid/telephony/ServiceState;

.field private prevSS:Landroid/telephony/ServiceState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-class v1, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v2, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    const-string v0, "CALL_FRW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LgeRegStateNotification] getInstance():: sInstance.mRef = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v3, v3, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOperatorInfo()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    return-void
.end method

.method private showOperatorInfoLGU()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const-string v1, "lgu.imsi_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsiType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "no Imsi zone"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "RoamingIntent":Landroid/content/Intent;
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.imsi.RoamingIMSISelect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const v2, 0x20203f7

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xc739

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .end local v0    # "RoamingIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    const-string v2, "HOME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Zone1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Zone2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private showOperatorInfoSKT()V
    .locals 9

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x3

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "TRoamingIntent":Landroid/content/Intent;
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.troaming.TRoamingFGK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const v2, 0x2020571

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SKT_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xc739

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private showRoamingNetworkFailLGU()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "RoamingIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.lge.roamingsettings"

    const-string v3, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.RoamingonLTE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UPLUS_LTE_ROAMING_FAIL_NOTIFICATION_CONTENT"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "networkFailMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    const/16 v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "UPLUS_ROAMING_FAIL_NOTIFICATION_TITLE"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v3, 0xc73c

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNetworkFailNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .end local v1    # "networkFailMessage":Ljava/lang/String;
    :cond_0
    const-string v2, "com.lge.roamingsettings"

    const-string v3, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.imsi.RoamingIMSISelect"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UPLUS_ROAMING_FAIL_NOTIFICATION_CONTENT"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkFailMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private showSearching()V
    .locals 5

    .prologue
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const v1, 0x2020585

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_TITLE"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_CONTENT"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose mRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v2, v2, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    if-gtz v1, :cond_0

    const v1, 0xc739

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0xc73a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v1, "dispose() mRef <= 0 : clear succes and searching notification"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    :cond_0
    const v1, 0xc73b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v1, "CALL_FRW"

    const-string v2, "dispose(): clear reject cause notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public handleNotification()V
    .locals 8

    .prologue
    const v7, 0xc73b

    const v6, 0xc73a

    const/4 v5, 0x1

    const v4, 0xc739

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoiceSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isVoiceSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDataSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isDataSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "Airplane Mode : clear success, searching, reject cause, and network reject notification."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    :cond_0
    :goto_0
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "Airplane Mode : clear both success & fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->getOperatorInfo()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    const-string v0, "Show roaming operator info. since operator name changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mImsiType:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "update operator info since imsi is not decided yet"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    :cond_5
    :goto_3
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    const-string v0, "Show roaming operator info. since it has not been shown before"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v5, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v5, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isVoiceSearching()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isDataSearching()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_9

    const-string v0, "Show searching ..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showSearching()V

    :cond_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto/16 :goto_3

    :cond_a
    const-string v0, "true"

    const-string v1, "persist.radio.isroaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showRoamingNetworkFailLGU()V

    const-string v0, "Show roaming network fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    :cond_b
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "out of service : not searching, not roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "clear success notification or searching notification or roaming netowrk fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->getOperatorInfo()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoSKT()V

    const-string v0, "Show roaming operator info. since operator name changed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    :cond_f
    :goto_4
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_1

    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoSKT()V

    const-string v0, "Show roaming operator info. since it has not been shown before."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "clear success notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_4
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeRegStateNotification] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSimState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mSimState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    const-string v1, "cancel searching or network fail notification since sim is not inserted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    const v1, 0xc73a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0xc73c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
