.class public interface abstract Lcom/lge/wifi/extension/IWifiSoftAP;
.super Ljava/lang/Object;
.source "IWifiSoftAP.java"


# virtual methods
.method public abstract addMacFilterAllowList(Ljava/lang/String;I)Z
.end method

.method public abstract getAllAssocMacListATT()Ljava/util/List;
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

.method public abstract getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
.end method

.method public abstract getWpsNfcHandoverSelect(I)Ljava/lang/String;
.end method

.method public abstract removeAlltheList()I
.end method

.method public abstract setMacaddracl(I)Z
.end method

.method public abstract setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract setTxPower(I)I
.end method

.method public abstract setWpsCancel()I
.end method

.method public abstract setWpsNfcPwToken(Ljava/lang/String;II)I
.end method

.method public abstract setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setWpsPbc()I
.end method

.method public abstract setWpsPin(Ljava/lang/String;I)I
.end method
