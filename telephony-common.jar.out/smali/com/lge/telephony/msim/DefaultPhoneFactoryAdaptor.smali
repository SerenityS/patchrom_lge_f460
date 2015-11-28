.class public Lcom/lge/telephony/msim/DefaultPhoneFactoryAdaptor;
.super Lcom/lge/telephony/msim/LGPhoneFactoryBase;
.source "DefaultPhoneFactoryAdaptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 34
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/lge/telephony/msim/DefaultPhoneFactoryAdaptor;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public makeDefaultPhone(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public makeSipPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    .line 45
    return-void
.end method
