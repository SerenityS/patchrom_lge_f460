.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;
.super Ljava/lang/Object;
.source "LgeAutoProfiling.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeKeyProfiling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static mSyncOperatorMap:Ljava/lang/Object;

.field private static sCountryOperatorInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentSimProvider:Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

.field private static sIsDebugMode:Z

.field private static sIsEnabled:Z

.field private static sIsOperatorMapReady:Z

.field private static sIsSimProviderCached:Z

.field private static sLogDialstring:I

.field private static sLogFeatureLoaded:Z

.field private static sLogIdentity:I

.field private static sLogUssd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogUssd:I

    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogDialstring:I

    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogIdentity:I

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogFeatureLoaded:Z

    const-string v0, "1"

    const-string v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsDebugMode:Z

    const-string v0, "persist.service.plog.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.service.privacy.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsDebugMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCountryOperatorInfos:Ljava/util/HashMap;

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsSimProviderCached:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCurrentSimProvider:Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mSyncOperatorMap:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsOperatorMapReady:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEccIdleMode(Ljava/lang/String;)Z
    .locals 10
    .param p0, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .local v1, "defaultSubId":I
    const-string v7, "CTC"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->MULTI_SIM_ENABLED:Z

    if-eqz v7, :cond_2

    const-string v7, "ril.curr.call.sub"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "TelephonyAutoProfiling"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CTC : [checkEccIdleMode] defaultSubId change to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x0

    const-string v8, "ECC_IdleMode"

    invoke-static {v7, v8, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "eccIdleModeList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkEccIdleMode] Ecc_IdleMode : true - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {p0, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static checkShortCodeCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .local v1, "defaultSubId":I
    const-string v7, "ShortCodeCall"

    invoke-static {p0, v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "shortCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getClirSettingValue(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .local v1, "defaultSubId":I
    invoke-static {p0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getClirSettingValue(Landroid/content/Context;I)I

    move-result v0

    .local v0, "clirSettingValue":I
    return v0
.end method

.method public static getClirSettingValue(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub"    # I

    .prologue
    const-string v4, "SendMyNumberInformation"

    invoke-static {p0, v4, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "clirSetting":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSimChangedInfo(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "simChangedInfo":Ljava/lang/String;
    const-string v4, "gsm.call.clir.init"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "clirInit":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "clirSettingValue":I
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "gsm.call.clir.init"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "gsm.call.clir.init"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getClirSettingValue] This is First time after SIM change :: gsm.call.clir.init = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method private static getCountryOperatorInfo(Ljava/lang/String;)Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;
    .locals 10
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    sget-object v5, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mSyncOperatorMap:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsOperatorMapReady:Z

    if-nez v4, :cond_3

    const/4 v4, 0x0

    const-string v6, "operator_map"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "mapstring":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "values":[Ljava/lang/String;
    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v3, v1

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "fields":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCountryOperatorInfos:Ljava/util/HashMap;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    new-instance v7, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    const/4 v8, 0x1

    aget-object v8, v0, v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "mapstring":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "mapstring":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsOperatorMapReady:Z

    .end local v2    # "mapstring":Ljava/lang/String;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCountryOperatorInfos:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    return-object v4
.end method

.method public static getECCList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v2

    .local v2, "defaultSubId":I
    const-string v6, "ECC_list"

    invoke-static {p0, v6, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "NumberString":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .local v1, "StrArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static getEccListMerged(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "eccList"    # Ljava/lang/String;

    .prologue
    const-string v15, "CTC"

    invoke-static {v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    sget-boolean v15, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->MULTI_SIM_ENABLED:Z

    if-eqz v15, :cond_4

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "ril.curr.call.sub"

    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .local v12, "subId":I
    invoke-static {}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->getSimState(I)I

    move-result v11

    .local v11, "simState":I
    const/4 v6, 0x0

    .local v6, "eccListSubId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "changed":Z
    const/4 v15, 0x1

    if-ne v11, v15, :cond_2

    const/4 v15, 0x0

    const-string v16, "no_sim_ecclist"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const-string v15, "TelephonyAutoProfiling"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CTC : [getEccListMerged] simState="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " changed="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ril.ecclist.autoprofile="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " [sim"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string v15, "ril.ecclist.autoprofile"

    invoke-static {v15, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, ""

    .end local v3    # "changed":Z
    .end local v6    # "eccListSubId":Ljava/lang/String;
    .end local v11    # "simState":I
    .end local v12    # "subId":I
    .end local p0    # "eccList":Ljava/lang/String;
    :goto_1
    return-object p0

    .restart local v3    # "changed":Z
    .restart local v6    # "eccListSubId":Ljava/lang/String;
    .restart local v11    # "simState":I
    .restart local v12    # "subId":I
    .restart local p0    # "eccList":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x5

    if-ne v11, v15, :cond_3

    const/4 v15, 0x0

    const-string v16, "ECC_list"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v11, :cond_0

    const/4 v15, 0x0

    const-string v16, "sim_lock_ecclist"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    goto :goto_0

    .end local v3    # "changed":Z
    .end local v6    # "eccListSubId":Ljava/lang/String;
    .end local v11    # "simState":I
    .end local v12    # "subId":I
    :cond_4
    const-string v15, "ril.ecclist.autoprofile"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "eccListAutoProfile":Ljava/lang/String;
    const-string v13, ""

    .local v13, "tempEcclist":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_8

    aget-object v14, v1, v8

    .local v14, "token":Ljava/lang/String;
    const-string v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v10, :cond_7

    aget-object v4, v2, v7

    .local v4, "ecc":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_5
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v4    # "ecc":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_2

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v14    # "token":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHomeNetworks(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .local v0, "defaultSubId":I
    const-string v3, "HOME_NETWORK"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "homeNetworks":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .local v0, "defaultSubId":I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getRVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRVMS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const-string v0, "RVMS"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .local v0, "defaultSubId":I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVMS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const-string v0, "VMS"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneType"    # I

    .prologue
    const-string v1, "TelephonyAutoProfiling"

    const-string v2, "[init] ******** Telephony Auto Profiling *******"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string v1, "TelephonyAutoProfiling"

    const-string v2, "[init] context is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->loadFeature()V

    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .local v0, "defaultSubId":I
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "ril.ecclist.autoprofile"

    const-string v2, "ECC_list"

    invoke-static {p0, v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCountry(Ljava/lang/String;)Z
    .locals 1
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLogBlocked(I)Z
    .locals 3
    .param p0, "level"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogFeatureLoaded:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogFeatureLoad()V

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogFeatureLoaded:Z

    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogUssd:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogDialstring:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_2
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogIdentity:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method public static isNetOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "country"    # Ljava/lang/String;
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "netNumeric":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getCountryOperatorInfo(Ljava/lang/String;)Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    move-result-object v0

    .local v0, "currentNetProvider":Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mCountry:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mOperator:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNetSupportedFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p2, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isNetOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "Country"    # Ljava/lang/String;
    .param p1, "Operator"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "country"    # Ljava/lang/String;
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsSimProviderCached:Z

    if-nez v3, :cond_2

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "simNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .end local v0    # "simNumeric":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "simNumeric":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getCountryOperatorInfo(Ljava/lang/String;)Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCurrentSimProvider:Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsSimProviderCached:Z

    .end local v0    # "simNumeric":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCurrentSimProvider:Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCurrentSimProvider:Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mCountry:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCurrentSimProvider:Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mOperator:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static isSimSupportedFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p2, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUserMode()Z
    .locals 3

    .prologue
    const-string v1, "user"

    .local v1, "strUserMode":Ljava/lang/String;
    const-string v2, "ro.build.type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "buildType":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private static privateLogFeatureLoad()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "block_private_log_level"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "loglevel":I
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    and-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogUssd:I

    and-int/lit8 v2, v1, 0x10

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogDialstring:I

    and-int/lit16 v2, v1, 0x100

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogIdentity:I

    .end local v1    # "loglevel":I
    :cond_0
    return-void

    .restart local v1    # "loglevel":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0
.end method

.method protected static profileToMap(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;
    .locals 6
    .param p0, "profile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "profileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "key":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static updateProfile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->updateProfile(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getTargetCountry()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetOperator()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    return-object v0
.end method
