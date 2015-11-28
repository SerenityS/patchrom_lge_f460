.class public Lcom/lge/wfds_data/WfdsLgeConfig;
.super Ljava/lang/Object;
.source "WfdsLgeConfig.java"


# static fields
.field public static final CONFIG_LGE_WFDS_FEATURE:Z

.field private static LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdsLgeConfig"

.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/wfds_data/WfdsLgeConfig;->LOCAL_LOGD:Z

    .line 16
    sput-object v1, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    .line 17
    sput-object v1, Lcom/lge/wfds_data/WfdsLgeConfig;->mContext:Landroid/content/Context;

    .line 19
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_ASP:Z

    sput-boolean v0, Lcom/lge/wfds_data/WfdsLgeConfig;->CONFIG_LGE_WFDS_FEATURE:Z

    .line 21
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->TARGET_OPERATOR:Ljava/lang/String;

    .line 22
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->TARGET_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sput-object p1, Lcom/lge/wfds_data/WfdsLgeConfig;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->TARGET_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/lge/wfds_data/WfdsLgeConfig;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/lge/wfds_data/WfdsLgeConfig;

    invoke-direct {v0}, Lcom/lge/wfds_data/WfdsLgeConfig;-><init>()V

    sput-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    .line 36
    :cond_0
    sget-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/wfds_data/WfdsLgeConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/lge/wfds_data/WfdsLgeConfig;

    invoke-direct {v0, p0}, Lcom/lge/wfds_data/WfdsLgeConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    .line 42
    :cond_0
    sget-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->mWfdsLgeConfig:Lcom/lge/wfds_data/WfdsLgeConfig;

    return-object v0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/wfds_data/WfdsLgeConfig;->TARGET_OPERATOR:Ljava/lang/String;

    return-object v0
.end method
