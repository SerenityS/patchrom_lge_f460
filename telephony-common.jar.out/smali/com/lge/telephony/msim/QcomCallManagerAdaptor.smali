.class public Lcom/lge/telephony/msim/QcomCallManagerAdaptor;
.super Lcom/lge/telephony/msim/LGCallManagerBase;
.source "QcomCallManagerAdaptor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QcomCallManagerAdaptor"


# instance fields
.field private mCm:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    .line 29
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/lge/telephony/msim/LGCallManagerBase;->targetInstance:Lcom/android/internal/telephony/CallManager;

    .line 30
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;I)V
    .locals 1
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;I)V

    .line 49
    return-void
.end method

.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 1
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subscription"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;I)Z

    move-result v0

    return v0
.end method

.method public clearDisconnected(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected(I)V

    .line 170
    return-void
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "extras"    # [Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "QcomCallManagerAdaptor"

    const-string v2, "dial: Exception from CallManager.dial()"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveSubscription()I

    move-result v0

    return v0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIsIMSECCSetup()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getIsIMSECCSetup()Z

    move-result v0

    return v0
.end method

.method public getLocalCallHoldStatus(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getLocalCallHoldStatus(I)Z

    move-result v0

    return v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getServiceState(I)I

    move-result v0

    return v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCallAnyPhone()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall(I)Z

    move-result v0

    return v0
.end method

.method public isCallOnCsvtEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->isCallOnCsvtEnabled()Z

    move-result v0

    return v0
.end method

.method public isCallOnImsEnabled()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->isCallOnImsEnabled()Z

    move-result v0

    return v0
.end method

.method public isImsPhoneActive()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->isImsPhoneActive()Z

    move-result v0

    return v0
.end method

.method public isImsPhoneIdle()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public setActiveSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setActiveSubscription(I)V

    .line 210
    return-void
.end method

.method public setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "phoneType"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 215
    return-void
.end method

.method public setIsIMSECCSetup(Z)V
    .locals 1
    .param p1, "sending"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setIsIMSECCSetup(Z)V

    .line 232
    return-void
.end method

.method public switchToLocalHold(IZ)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "switchTo"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->switchToLocalHold(IZ)V

    .line 225
    return-void
.end method

.method public unregisterForCallModify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallModify(Landroid/os/Handler;)V

    .line 200
    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionChange(Landroid/os/Handler;)V

    .line 90
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/telephony/msim/QcomCallManagerAdaptor;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 69
    return-void
.end method
