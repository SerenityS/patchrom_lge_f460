.class public Lcom/android/internal/telephony/ImsCallInfoImpl;
.super Ljava/lang/Object;
.source "ImsCallInfoImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsCallInfo;


# static fields
.field private static final OIPTYPE_IDENTITY:I = 0x1

.field private static final OIPTYPE_NONE:I = 0x0

.field private static final OIPTYPE_RESTICTED:I = 0x2

.field private static final PARTTYPE_MO:I = 0x0

.field private static final PARTTYPE_MT:I = 0x1


# instance fields
.field private mConnectedName:Ljava/lang/String;

.field private mConnectedNumber:Ljava/lang/String;

.field private mConnectedNumberPresentation:I

.field private mIMSCallState:I

.field private mIsConferenceCall:I

.field private mPartyType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumber:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    .line 25
    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedName:Ljava/lang/String;

    .line 26
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mIsConferenceCall:I

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mPartyType:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mIMSCallState:I

    return-void
.end method


# virtual methods
.method public getConnectedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedNumberPresentation()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    return v0
.end method

.method public getIMSCallState()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mIMSCallState:I

    return v0
.end method

.method public isConferenceCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mIsConferenceCall:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iget v1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mPartyType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConferenceCall(I)V
    .locals 0
    .param p1, "isConf"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mIsConferenceCall:I

    .line 89
    return-void
.end method

.method public setConnectedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setConnectedNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumber:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setConnectedNumberPresentation(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x3

    .line 67
    packed-switch p1, :pswitch_data_0

    .line 78
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    .line 81
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    goto :goto_0

    .line 72
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    goto :goto_0

    .line 75
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIMSCallState(I)V
    .locals 0
    .param p1, "callstate"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mIMSCallState:I

    .line 93
    return-void
.end method

.method public setPartyType(I)V
    .locals 0
    .param p1, "partyType"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mPartyType:I

    .line 97
    return-void
.end method
