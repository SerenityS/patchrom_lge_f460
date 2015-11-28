.class public Lcom/lge/telephony/msim/DefaultCallManagerAdaptor;
.super Lcom/lge/telephony/msim/LGCallManagerBase;
.source "DefaultCallManagerAdaptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;I)V
    .locals 0
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->acceptCall(Lcom/android/internal/telephony/Call;I)V

    return-void
.end method

.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 1
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subscription"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->canConference(Lcom/android/internal/telephony/Call;I)Z

    move-result v0

    return v0
.end method

.method public clearDisconnected(I)V
    .locals 0
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->clearDisconnected(I)V

    return-void
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "extras"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/telephony/msim/LGCallManagerBase;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->getActiveSubscription()I

    move-result v0

    return v0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

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
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFgCallConnections(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIsIMSECCSetup()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->getIsIMSECCSetup()Z

    move-result v0

    return v0
.end method

.method public getLocalCallHoldStatus(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getLocalCallHoldStatus(I)Z

    move-result v0

    return v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getPhoneInCall(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getRingingPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getServiceState(I)I

    move-result v0

    return v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveFgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveFgCallAnyPhone()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasActiveRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasDisconnectedBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->hasDisconnectedFgCall(I)Z

    move-result v0

    return v0
.end method

.method public isCallOnCsvtEnabled()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isCallOnCsvtEnabled()Z

    move-result v0

    return v0
.end method

.method public isCallOnImsEnabled()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isCallOnImsEnabled()Z

    move-result v0

    return v0
.end method

.method public isImsPhoneActive()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isImsPhoneActive()Z

    move-result v0

    return v0
.end method

.method public isImsPhoneIdle()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/lge/telephony/msim/LGCallManagerBase;->isImsPhoneIdle()Z

    move-result v0

    return v0
.end method

.method public registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/lge/telephony/msim/LGCallManagerBase;->registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/lge/telephony/msim/LGCallManagerBase;->registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/lge/telephony/msim/LGCallManagerBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setActiveSubscription(I)V
    .locals 0
    .param p1, "subscription"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->setActiveSubscription(I)V

    return-void
.end method

.method public setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "phoneType"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public setIsIMSECCSetup(Z)V
    .locals 0
    .param p1, "sending"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->setIsIMSECCSetup(Z)V

    return-void
.end method

.method public switchToLocalHold(IZ)V
    .locals 0
    .param p1, "subscription"    # I
    .param p2, "switchTo"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/lge/telephony/msim/LGCallManagerBase;->switchToLocalHold(IZ)V

    return-void
.end method

.method public unregisterForCallModify(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->unregisterForCallModify(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->unregisterForSubscriptionChange(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/lge/telephony/msim/LGCallManagerBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method
