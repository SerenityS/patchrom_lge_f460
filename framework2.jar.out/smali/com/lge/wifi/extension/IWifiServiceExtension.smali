.class public interface abstract Lcom/lge/wifi/extension/IWifiServiceExtension;
.super Ljava/lang/Object;
.source "IWifiServiceExtension.java"


# virtual methods
.method public abstract SetMaxNumOfStation(Ljava/lang/String;)V
.end method

.method public abstract addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract addWifiConnectionList(II)V
.end method

.method public abstract bookEnableProfile(ILjava/lang/String;I)V
.end method

.method public abstract broadcastAutoIPIntent(Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
.end method

.method public abstract changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract checkAndstartDhcpL2ConnectedState(II)Z
.end method

.method public abstract checkP2pPostfix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract checkWifiEnableCondition()Z
.end method

.method public abstract convertEapEventToLge(Ljava/lang/String;)I
.end method

.method public abstract convertEapEventToN3(Ljava/lang/String;)I
.end method

.method public abstract delayStartWifi()Z
.end method

.method public abstract delayUnregisterBroadcastReceiver()V
.end method

.method public abstract disableNetworkWithNetId(ILjava/lang/String;I)V
.end method

.method public abstract fetchSSID()Ljava/lang/String;
.end method

.method public abstract getDefaultWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getGWSScanResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecurityType()I
.end method

.method public abstract getSoftApDefaultKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
.end method

.method public abstract getSoftApMaxScb(I)I
.end method

.method public abstract getSoftApName(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
.end method

.method public abstract getSupplicantState()Landroid/net/wifi/SupplicantState;
.end method

.method public abstract getWifiActivationWhileCharging()Lcom/lge/wifi/extension/WifiActivationWhileChargingIface;
.end method

.method public abstract getWifiAdhocDisable()Z
.end method

.method public abstract getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;
.end method

.method public abstract getWifiDualbandAPConnection()I
.end method

.method public abstract getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;
.end method

.method public abstract getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
.end method

.method public abstract getWifiState()I
.end method

.method public abstract handleCMCCEvent(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract handleLgeEvent(ILjava/lang/String;)V
.end method

.method public abstract handleN3Event(ILjava/lang/String;)V
.end method

.method public abstract initAutoConnectionProfile()V
.end method

.method public abstract initWifiSerivceExt(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiConfigStoreProxy;Ljava/lang/String;)V
.end method

.method public abstract isBtWifiP2pPreventState()Z
.end method

.method public abstract isCaptiveProfile(I)Z
.end method

.method public abstract isCarrierSpecificAP(Ljava/lang/String;)Z
.end method

.method public abstract isDelayedOnWait()Z
.end method

.method public abstract isDisconnectRssiLevel(I)Z
.end method

.method public abstract isFirstUserSignOnSeen()Z
.end method

.method public abstract isGigaWifi()Z
.end method

.method public abstract isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
.end method

.method public abstract isP2PConnected()Z
.end method

.method public abstract isProvisioned()Z
.end method

.method public abstract isRemovableNetwork(I)Z
.end method

.method public abstract isShowKTPayPopup()Z
.end method

.method public abstract isTethered()Z
.end method

.method public abstract isUPlusAP(Ljava/lang/String;)Z
.end method

.method public abstract isUpdateableWifiApConfig(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract isVTRunning()Z
.end method

.method public abstract isWEPSecurity()Z
.end method

.method public abstract isWifiAvailableInCN(ZI)Z
.end method

.method public abstract isWifiPowerSaveModeEnabled()Z
.end method

.method public abstract notifyFrequencyConflict(Ljava/lang/String;)V
.end method

.method public abstract processMessageAtDriverStartedState(Landroid/os/Message;)Z
.end method

.method public abstract sendToastMessageId(I)V
.end method

.method public abstract setAPSecurityType(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setDlnaUsing(Z)Z
.end method

.method public abstract setKeepAlivePacketInterval(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract setManualConneciton(IZ)Z
.end method

.method public abstract setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setProhibitConnectAP()Z
.end method

.method public abstract setProvisioned(Z)V
.end method

.method public abstract setScanResultsCommand()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setShowKTPayPopup(Z)V
.end method

.method public abstract setShowKTPayPopupDelay(ZJ)V
.end method

.method public abstract setSupplicantState(Landroid/net/wifi/SupplicantState;)V
.end method

.method public abstract setWifiDualbandAPConnection(I)V
.end method

.method public abstract setWifiP2pNotificationIcon(Z)V
.end method

.method public abstract showNotiForDCF(I)V
.end method

.method public abstract switchWifiOperationMode(Ljava/lang/String;)V
.end method

.method public abstract updateAutoConnectProfile(ILandroid/net/wifi/SupplicantState;)V
.end method

.method public abstract updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract updateRssiAndLinkSpeedNative(IIII)V
.end method

.method public abstract waitForEvent()Ljava/lang/String;
.end method
