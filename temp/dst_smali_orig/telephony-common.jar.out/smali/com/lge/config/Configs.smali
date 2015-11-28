.class public Lcom/lge/config/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Configs"

.field static configs:Lcom/lge/config/Configs;

.field static mInit:Z


# instance fields
.field mLogLevel:I

.field mLogLevels:[Z

.field resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/config/Configs;->mLogLevel:I

    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/config/Configs;->mLogLevel:I

    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/lge/config/Configs;->init()V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getConfigs()Lcom/lge/config/Configs;
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/config/Configs;

    invoke-direct {v0}, Lcom/lge/config/Configs;-><init>()V

    sput-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    :cond_0
    sget-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    return-object v0
.end method

.method public static getConfigs(Landroid/content/Context;)Lcom/lge/config/Configs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/lge/config/Configs;

    invoke-direct {v0, p0}, Lcom/lge/config/Configs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    :cond_0
    sget-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    const v2, 0x20b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lge/config/Configs;->mLogLevel:I

    iget v1, p0, Lcom/lge/config/Configs;->mLogLevel:I

    iget-object v2, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    array-length v2, v2

    if-le v1, v2, :cond_0

    const-string v1, "Configs"

    const-string v2, "Init is failed, because the specified log level is bigger than limit."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/lge/config/Configs;->mLogLevel:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "Configs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The framework log level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/config/Configs;->mLogLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public logLevel1()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public logLevel2()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public logLevel3()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method