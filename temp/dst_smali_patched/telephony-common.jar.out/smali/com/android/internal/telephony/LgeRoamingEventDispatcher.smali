.class public final Lcom/android/internal/telephony/LgeRoamingEventDispatcher;
.super Landroid/os/Handler;
.source "LgeRoamingEventDispatcher.java"


# static fields
.field private static final CAMPED_MCC:Ljava/lang/String; = "CAMPED_MCC"

.field private static DBG:Z = false

.field protected static final EVENT_NETWORK_MODE_QUERY_DONE:I = 0x3ee

.field protected static final EVENT_NETWORK_MODE_TO_GW_GWL_DONE:I = 0x3ef

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x66

.field protected static final EVENT_SET_NT_MODE_TO_WPREF_DONE:I = 0x44d

.field protected static final EVENT_WCDMA_NET_CHANGED:I = 0x64

.field protected static final EVENT_WCDMA_NET_TO_KOREA_CHANGED:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final MCC_KR:Ljava/lang/String; = "450"

.field private static final SHAREDPREF_SAVED_CAMPED_MCC:Ljava/lang/String; = "saved_CAMPED_MCC"

.field private static final SHAREDPREF_SAVED_USIM_MCC:Ljava/lang/String; = "saved_usim_mcc"

.field private static final USIM_MCC:Ljava/lang/String; = "usim_mcc"

.field private static roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;


# instance fields
.field private mCampedMcc:Ljava/lang/String;

.field private final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurCampedMcc:Ljava/lang/String;

.field private mDesiredNwMode:I

.field private mFakeMccChange:Z

.field private mFirstWcdmaNetChanged:Z

.field private mNeedNetwrokModeChange:Z

.field private mOldCampedMcc:Ljava/lang/String;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsimMcc:Ljava/lang/String;

.field private newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/telephony/LgeRoamingEventDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher$1;-><init>(Lcom/android/internal/telephony/LgeRoamingEventDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstWcdmaNetChanged:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    const-string v3, "LgeRoamingEventDispatcher created"

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x64

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaNetChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x65

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaNetToKoreaChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v3, "LTE_ROAMING_SKT"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x66

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "saved_CAMPED_MCC"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "CAMPED_MCC"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "savedMcc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedPreference(SHAREDPREF_SAVED_CAMPED_MCC) saved mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CAMPED_MCC"

    const-string v5, "450"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init SharedPreference(SHAREDPREF_SAVED_CAMPED_MCC) cammped mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CAMPED_MCC"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LgeRoamingEventDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setUsimMcc()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LgeRoamingEventDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->calculatetIsroamingPersist()V

    return-void
.end method

.method private calculatetIsroamingPersist()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->isUsimRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "set PROPERTY_OPERATOR_ISROAMING_PERSIST (persist.radio.isroaming)"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const-string v0, "persist.radio.isroaming"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "reset PROPERTY_OPERATOR_ISROAMING_PERSIST (persist.radio.isroaming)"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const-string v0, "persist.radio.isroaming"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkAndNWModeChange()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    .local v2, "mobile_data":I
    const/4 v0, -0x1

    .local v0, "data_roaming":I
    const/4 v1, -0x1

    .local v1, "lte_roaming":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndNWModeChange:: hasRegistered, mOldCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const-string v3, "450"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "450"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data_roaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lte_roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    if-ne v2, v6, :cond_1

    if-ne v0, v6, :cond_1

    if-ne v1, v6, :cond_1

    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto :goto_0
.end method

.method public static getLgeRoamingEventDispatcher(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/LgeRoamingEventDispatcher;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLgeRoamingEventDispatcher : roamingEventDispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ctx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "commandsInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    goto :goto_0
.end method

.method private isUsimRoaming()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cardOperator":Ljava/lang/String;
    const-string v3, "SKT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LGU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const-string v3, "450"

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set Usim MCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", card_operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .end local v0    # "cardOperator":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "propCampedMccMnc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "propCampedMccMnc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCampedMcc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .end local v1    # "propCampedMccMnc":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUsimMcc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCampedMcc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "000"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "001"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .restart local v0    # "cardOperator":Ljava/lang/String;
    :cond_4
    const-string v3, "TEST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "saved_usim_mcc"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "usim_mcc"

    const-string v5, "450"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved Usim MCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeRoamingEventDispatcher] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private saveNetworkInfo(Ljava/lang/String;)Z
    .locals 6
    .param p1, "new_mcc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "saved_CAMPED_MCC"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "CAMPED_MCC"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefs get = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const-string v3, "000"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object p1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CAMPED_MCC"

    iget-object v5, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefs put = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CAMPED_MCC"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstWcdmaNetChanged:Z

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstWcdmaNetChanged:Z

    const-string v2, "Generating real mcc change event..."

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstWcdmaNetChanged:Z

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstWcdmaNetChanged:Z

    const-string v3, "450"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "450"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "999"

    iput-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    const-string v2, "Generating fake MCC change event..."

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "mOldCampedMcc, mCurCampedMcc is not changed"

    invoke-static {v1}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method private setPreferredNetworkForRoaming(I)V
    .locals 4
    .param p1, "mPrevNetworkMode"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Network Mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aleady mDesiredNwMode :: mPrevNetworkMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDesiredNwMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "LTE_ROAMING_SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change GW/GWL Network Mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    const/16 v2, 0x3ef

    iget v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private setUsimMcc()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .local v0, "temp_Usim_MccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const-string v1, "000"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "001"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "saved_usim_mcc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "usim_mcc"

    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usim\'s MCC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mUsimMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "LgeRoamingEventDispatcher finalized"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaNetChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaNetToKoreaChanged(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const-string v1, "LTE_ROAMING_SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New Roaming Event Message Received : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const-string v11, "LgeRoamingEventDispatcher unexpected handleMessage case"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v11, 0x0

    const-string v12, "LTE_ROAMING_SKT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .local v7, "oldRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v11, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    :cond_1
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_RADIO_STATE_CHANGED mNeedNetworkModeChange = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->newRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    goto :goto_1

    .end local v7    # "oldRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    const-string v11, "KR"

    const-string v12, "LGU"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "Network mode change (GWL->GW) completed"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "preferred_network_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :sswitch_2
    const/4 v11, 0x0

    const-string v12, "network_mode_change_in_ril"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Network Mode Change not supported in framework"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x3

    .local v4, "mPrevNetworkType":I
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x0

    aget v4, v11, v12

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "mPrevNetworkType":I
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_5

    iget-object v11, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "nwMode":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_NETWORK_MODE_TO_GW_GWL_DONE received nwMod e= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "preferred_network_mode"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v11, 0x0

    const-string v12, "LTE_ROAMING_SKT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    goto/16 :goto_0

    .end local v6    # "nwMode":I
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_NETWORK_MODE_TO_GW_GWL_DONE ERROR ar.exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_0

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x0

    aget v5, v11, v12

    .local v5, "mcc":I
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x1

    aget v8, v11, v12

    .local v8, "rat":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_CHANGED : mcc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    const-string v11, "1"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "0"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->saveNetworkInfo(Ljava/lang/String;)Z

    move-result v3

    .local v3, "isCampedMccChanged":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_CHANGED : isCampedMccChanged = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->calculatetIsroamingPersist()V

    if-eqz v3, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "450"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_8
    const-string v11, "001"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    .local v10, "validOldCampedMcc":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v10, "450"

    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v11, "newmcc"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "oldmcc"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "KR"

    const-string v12, "LGU"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    const-string v11, "FakeMccChange"

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_CAMPED_MCC_CHANGE : EXTRA_NEW_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EXTRA_OLD_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EXTRA_FAKE_MCC_CHANGE = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v10    # "validOldCampedMcc":Ljava/lang/String;
    :cond_a
    const-string v11, "KR"

    const-string v12, "LGU"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v3, :cond_0

    const-string v11, "450"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    const-string v12, "lgu_lte_roaming"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "Maintain network mode as GWL to support LTE roaming."

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :goto_3
    const/4 v11, 0x0

    const-string v12, "OEM_RAD_DIALER_POPUP"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "KR"

    const-string v12, "LGU"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "oem_rad_dialer_popup"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "SettingsConstants.Secure.OEM_RAD_DIALER_POPUP set 1 by LGU+ scenario"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v10    # "validOldCampedMcc":Ljava/lang/String;
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_CAMPED_MCC_CHANGE : EXTRA_NEW_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EXTRA_OLD_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v10    # "validOldCampedMcc":Ljava/lang/String;
    :cond_c
    const/4 v11, 0x0

    const-string v12, "network_mode_change_in_ril"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "Network Mode Change not supported in framework"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v11, "001"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "1"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "000"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is invalid MCC, Do NOT change preferred network mode."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    const/16 v13, 0x44d

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    const-string v11, "Change network mode (GWL->GW) arriving at roaming area."

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string v11, "KR"

    const-string v12, "SKT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "ril.card_operator"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "card_operator":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ril.card_operator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const-string v11, "SKT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "TEST"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "This is not skt usim, do nothing"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v11, "450"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "001"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "000"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    const-string v12, "LTE_ROAMING_SKT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "preferred_network_mode"

    const/16 v13, 0x9

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .local v9, "settingNetworkMode":I
    if-eqz v3, :cond_14

    const/4 v11, 0x0

    const-string v12, "OEM_RAD_DIALER_POPUP"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "450"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "oem_rad_dialer_popup"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "SettingsConstants.Secure.OEM_RAD_DIALER_POPUP set 1 by SKT scenario"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_12
    const/4 v11, 0x0

    const-string v12, "network_mode_change_in_ril"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v11, "Network Mode Change not supported in framework"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_CHANGED : KEY_LTE_ROAMING_SKT mNeedNetwrokModeChange = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto/16 :goto_0

    :cond_14
    const/4 v11, 0x0

    const-string v12, "network_mode_change_in_ril"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "Network Mode Change not supported in framework"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const/4 v11, 0x1

    if-eq v9, v11, :cond_16

    const/4 v11, 0x2

    if-eq v9, v11, :cond_16

    const/16 v11, 0xb

    if-ne v9, v11, :cond_17

    :cond_16
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_CHANGED : Keep the NW mode for engineer test, settingNetworkMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_CHANGED : KEY_LTE_ROAMING_SKT mNeedNetwrokModeChange = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto/16 :goto_0

    .end local v1    # "card_operator":Ljava/lang/String;
    .end local v9    # "settingNetworkMode":I
    :cond_18
    const-string v11, "KR"

    const-string v12, "KT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    const-string v12, "LTE_ROAMING_KT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    const-string v12, "network_mode_change_in_ril"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v11, "Network Mode Change not supported in framework"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v11, "EVENT_WCDMA_NET_CHANGED : KEY_LTE_ROAMING_KT"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->checkAndNWModeChange()V

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "isCampedMccChanged":Z
    .end local v5    # "mcc":I
    .end local v8    # "rat":I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_0

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x0

    aget v5, v11, v12

    .restart local v5    # "mcc":I
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x1

    aget v8, v11, v12

    .restart local v8    # "rat":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_TO_KOREA_CHANGED mcc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    const-string v11, "1"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "0"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    :cond_1a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    :cond_1b
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCampedMcc:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->saveNetworkInfo(Ljava/lang/String;)Z

    move-result v3

    .restart local v3    # "isCampedMccChanged":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_WCDMA_NET_TO_KOREA_CHANGED : isCampedMccChanged = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->calculatetIsroamingPersist()V

    if-eqz v3, :cond_1c

    const-string v11, "450"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const-string v11, "001"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v11, "newmcc"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "oldmcc"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "KR"

    const-string v12, "LGU"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v11, "999"

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    const-string v11, "FakeMccChange"

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_CAMPED_MCC_CHANGE : EXTRA_NEW_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EXTRA_OLD_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EXTRA_FAKE_MCC_CHANGE = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFakeMccChange:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :goto_5
    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1c
    if-eqz v3, :cond_1d

    const/4 v11, 0x0

    const-string v12, "OEM_RAD_DIALER_POPUP"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "oem_rad_dialer_popup"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "SettingsConstants.Secure.OEM_RAD_DIALER_POPUP set 0 by SKT scenario"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_1d
    const/4 v11, 0x0

    const-string v12, "LTE_ROAMING_SKT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mNeedNetwrokModeChange:Z

    const-string v11, "Set true the mNeedNetwrokModeChange for next roaming"

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    :cond_1e
    const-string v11, "KR"

    const-string v12, "LGU"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "KR"

    const-string v12, "SKT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "KR"

    const-string v12, "KT"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_0

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_CAMPED_MCC_CHANGE : EXTRA_NEW_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EXTRA_OLD_MCC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_0
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_3
        0x44d -> :sswitch_1
    .end sparse-switch
.end method
