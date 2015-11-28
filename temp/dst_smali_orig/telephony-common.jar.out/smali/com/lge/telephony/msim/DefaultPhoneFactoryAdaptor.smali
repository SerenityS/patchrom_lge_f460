.class public Lcom/lge/telephony/msim/DefaultPhoneFactoryAdaptor;
.super Lcom/lge/telephony/msim/LGPhoneFactoryBase;
.source "DefaultPhoneFactoryAdaptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    invoke-virtual {p0}, Lcom/lge/telephony/msim/DefaultPhoneFactoryAdaptor;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public makeDefaultPhone(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    return-void
.end method

.method public makeSipPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    return-void
.end method
