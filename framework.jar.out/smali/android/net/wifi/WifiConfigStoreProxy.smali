.class public Landroid/net/wifi/WifiConfigStoreProxy;
.super Ljava/lang/Object;
.source "WifiConfigStoreProxy.java"


# instance fields
.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfigStore;)V
    .locals 0
    .param p1, "wifiConfigStore"    # Landroid/net/wifi/WifiConfigStore;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 36
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, -0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public disableNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disableNetwork(II)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v0

    return v0
.end method

.method public forgetNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v0

    return v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isCaptiveProfile(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->isCaptiveProfile(I)Z

    move-result v0

    return v0
.end method

.method public loadConfiguredNetworks()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 101
    return-void
.end method

.method public saveConfig()Z
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v1

    .line 66
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 68
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 70
    .local v0, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    const-string v2, "com.android.providers.settings"

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return v1

    .line 73
    .restart local v0    # "ibm":Landroid/app/backup/IBackupManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
