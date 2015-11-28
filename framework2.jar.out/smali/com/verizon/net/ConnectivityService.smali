.class public Lcom/verizon/net/ConnectivityService;
.super Lcom/verizon/net/Ivzwconnectivity$Stub;
.source "ConnectivityService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VZWConnectivityService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/verizon/net/Ivzwconnectivity$Stub;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/verizon/net/ConnectivityService;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "VZWConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method


# virtual methods
.method public getAPNUsageRxBytes(Ljava/lang/String;I)J
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 27
    const-string v4, "ril.current.default_iface"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "default_rmnet_iface":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 31
    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 32
    .local v0, "InternetUsageRxBytes":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VZWINTERNET APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAPNUsageRxBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "InternetUsageRxBytes":J
    :goto_0
    return-wide v0

    .line 35
    :catch_0
    move-exception v3

    .line 36
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getAPNUsageRxBytes FAIL"

    invoke-direct {p0, v4}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V

    .line 38
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAPNUsageTxBytes(Ljava/lang/String;I)J
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 42
    const-string v4, "ril.current.default_iface"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "default_rmnet_iface":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 46
    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 47
    .local v0, "InternetUsageTxBytes":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VZWINTERNET APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAPNUsageTxBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "InternetUsageTxBytes":J
    :goto_0
    return-wide v0

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "InternetUsageTxBytes FAIL"

    invoke-direct {p0, v4}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V

    .line 53
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
