.class public final Lcom/vzw/location/VzwGpsSatellite;
.super Ljava/lang/Object;
.source "VzwGpsSatellite.java"


# static fields
.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGpsSatellite"


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "prn"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    return-void
.end method


# virtual methods
.method dumpInfo()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dumpInfo] Prn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| Valid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| HasEph="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mHasEphemeris:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| HasAlm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mHasAlmanac:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| UsedInFix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| Snr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| Elev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| Azim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    const-string v1, "VzwGpsSatellite"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAzimuth()F
    .locals 4

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    float-to-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElevation()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    :cond_0
    return v0
.end method

.method public getPrn()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    goto :goto_0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mHasEphemeris:Z

    return v0
.end method

.method public isUsedInFix()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    return v0
.end method

.method setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    .locals 1
    .param p1, "satellite"    # Lcom/vzw/location/VzwGpsSatellite;

    .prologue
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mHasEphemeris:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mHasEphemeris:Z

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mHasAlmanac:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mHasAlmanac:Z

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    return-void
.end method
