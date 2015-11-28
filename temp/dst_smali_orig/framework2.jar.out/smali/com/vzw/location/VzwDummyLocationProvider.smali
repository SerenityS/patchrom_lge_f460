.class public Lcom/vzw/location/VzwDummyLocationProvider;
.super Lcom/vzw/location/VzwLocationProvider;
.source "VzwDummyLocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwDummyLocationProvider"


# instance fields
.field mAccuracy:I

.field mHasMonetaryCost:Z

.field mName:Ljava/lang/String;

.field mPowerRequirement:I

.field mRequiresCell:Z

.field mRequiresNetwork:Z

.field mRequiresSatellite:Z

.field mSupportsAltitude:Z

.field mSupportsBearing:Z

.field mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/vzw/location/IVzwLocationManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/VzwLocationProvider;-><init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationManager;)V

    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "accuracy"    # I

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mAccuracy:I

    return-void
.end method

.method public setHasMonetaryCost(Z)V
    .locals 0
    .param p1, "hasMonetaryCost"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mHasMonetaryCost:Z

    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 0
    .param p1, "powerRequirement"    # I

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mPowerRequirement:I

    return-void
.end method

.method public setRequiresCell(Z)V
    .locals 0
    .param p1, "requiresCell"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresCell:Z

    return-void
.end method

.method public setRequiresNetwork(Z)V
    .locals 0
    .param p1, "requiresNetwork"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresNetwork:Z

    return-void
.end method

.method public setRequiresSatellite(Z)V
    .locals 0
    .param p1, "requiresSatellite"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresSatellite:Z

    return-void
.end method

.method public setSupportsAltitude(Z)V
    .locals 0
    .param p1, "supportsAltitude"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsAltitude:Z

    return-void
.end method

.method public setSupportsBearing(Z)V
    .locals 0
    .param p1, "supportsBearing"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsBearing:Z

    return-void
.end method

.method public setSupportsSpeed(Z)V
    .locals 0
    .param p1, "supportsSpeed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsSpeed:Z

    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsSpeed:Z

    return v0
.end method
