.class public Lcom/verizon/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VZWConnectivityManager"


# instance fields
.field private mService:Lcom/verizon/net/Ivzwconnectivity;


# direct methods
.method public constructor <init>(Lcom/verizon/net/Ivzwconnectivity;)V
    .locals 0
    .param p1, "service"    # Lcom/verizon/net/Ivzwconnectivity;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/net/ConnectivityManager;->mService:Lcom/verizon/net/Ivzwconnectivity;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "VZWConnectivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAPNUsageRxBytes(Ljava/lang/String;I)J
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    const-string v1, "getAPNUsageRxBytes"

    invoke-direct {p0, v1}, Lcom/verizon/net/ConnectivityManager;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/verizon/net/ConnectivityManager;->mService:Lcom/verizon/net/Ivzwconnectivity;

    invoke-interface {v1, p1, p2}, Lcom/verizon/net/Ivzwconnectivity;->getAPNUsageRxBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAPNUsageTxBytes(Ljava/lang/String;I)J
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    const-string v1, "getAPNUsageTxBytes"

    invoke-direct {p0, v1}, Lcom/verizon/net/ConnectivityManager;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/verizon/net/ConnectivityManager;->mService:Lcom/verizon/net/Ivzwconnectivity;

    invoke-interface {v1, p1, p2}, Lcom/verizon/net/Ivzwconnectivity;->getAPNUsageTxBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method
