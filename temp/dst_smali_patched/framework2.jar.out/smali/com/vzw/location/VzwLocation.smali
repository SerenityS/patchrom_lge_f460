.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_DEV_VALID_ALM_SV_MASK:I = 0x4

.field public static final GPS_DEV_VALID_DEV_ERROR:I = 0x20

.field public static final GPS_DEV_VALID_EPH_SV_MASK:I = 0x2

.field public static final GPS_DEV_VALID_HW_STATE:I = 0x1

.field public static final GPS_DEV_VALID_SAT_IN_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final GPS_DEV_VALID_SAT_IN_SIGNAL_TO_NOISE_RATIO:I = 0x10

.field public static final GPS_DEV_VALID_SAT_IN_VIEW_PRN:I = 0x8

.field public static final GPS_ENCRYPT_AES_128_LAT_LONG:I = 0x0

.field public static final GPS_FIX_MODE_ACCURACY_OPTIMAL:I = 0x6

.field public static final GPS_FIX_MODE_AFLT:I = 0x4

.field public static final GPS_FIX_MODE_CID:I = 0x8

.field public static final GPS_FIX_MODE_CUSTOM:I = 0x100

.field public static final GPS_FIX_MODE_DATA_OPTIMAL:I = 0x7

.field public static final GPS_FIX_MODE_ECID:I = 0x9

.field public static final GPS_FIX_MODE_HYBRID:I = 0xc

.field public static final GPS_FIX_MODE_HYBRID_NONE:I = 0x0

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSA_AFLT:I = 0x1

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSA_MSA:I = 0x4

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSB_MSB:I = 0x2

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSB_MSS:I = 0x3

.field public static final GPS_FIX_MODE_MSA:I = 0x1

.field public static final GPS_FIX_MODE_MSB:I = 0x2

.field public static final GPS_FIX_MODE_MSS:I = 0x3

.field public static final GPS_FIX_MODE_SPEED_OPTIMAL:I = 0x5

.field public static final GPS_FIX_MODE_UNKNOWN:I = 0x0

.field public static final GPS_FIX_MODE_WIFI_MSA:I = 0xa

.field public static final GPS_FIX_MODE_WIFI_MSB:I = 0xb

.field public static final GPS_HASH_SHA1:I = 0x0

.field public static final GPS_HW_STATE_IDLE:I = 0x2

.field public static final GPS_HW_STATE_ON:I = 0x1

.field public static final GPS_HW_STATE_UNKNOWN:I = 0x0

.field public static final GPS_MAX_SATELLITES:I = 0x60

.field public static final GPS_MAX_SECURITY_DATA:I = 0x14

.field public static final GPS_MAX_SERVER_URL_NAME:I = 0xff

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_HYBRID_MODE:I = 0x200000

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400

.field private static final TAG:Ljava/lang/String; = "VzwLocation"


# instance fields
.field private mAltitudeWRTEllipse:F

.field private mAltitudeWRTSeaLevel:F

.field private mFixMode:I

.field private mHorizontalConfidence:F

.field private mHorizontalDilution:F

.field private mHybridMode:I

.field private mMagneticVariation:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPositionDilution:F

.field private mValidFields:I

.field private mVerticalAccuracy:F

.field private mVerticalDilution:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 0
    .param p1, "vzwLocation"    # Lcom/vzw/location/VzwLocation;

    .prologue
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    return-void
.end method

.method static synthetic access$002(Lcom/vzw/location/VzwLocation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwLocation;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return p1
.end method

.method private isFieldSetInValidFields(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "vzw_lbs"

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setProvider(Ljava/lang/String;)V

    iput v2, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    iput v2, p0, Lcom/vzw/location/VzwLocation;->mHybridMode:I

    iput v2, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method private unsetValidField(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    const v2, -0x3995a000    # -15000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    const v2, 0x47435000    # 50000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    goto :goto_0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    const v2, -0x3995a000    # -15000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    const v2, 0x47435000    # 50000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    goto :goto_0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHorizontalConfidence()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    const v2, 0x42c7fae1    # 99.99f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    :cond_0
    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHybridMode()I
    .locals 1

    .prologue
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHybridMode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMajorAxis()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    const v2, 0x469c4000    # 20000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    :cond_0
    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    :cond_0
    return v0
.end method

.method public getMinorAxis()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    const v2, 0x469c4000    # 20000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    :cond_0
    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalError()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    return v0
.end method

.method public removeAltitude()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/location/Location;->removeAltitude()V

    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->unsetValidField(I)V

    invoke-super {p0}, Landroid/location/Location;->removeBearing()V

    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->unsetValidField(I)V

    invoke-super {p0}, Landroid/location/Location;->removeSpeed()V

    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/location/Location;->reset()V

    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    return-void
.end method

.method public setAltitude(D)V
    .locals 0
    .param p1, "altitude"    # D

    .prologue
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 2
    .param p1, "altitude"    # F

    .prologue
    float-to-double v0, p1

    invoke-super {p0, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    return-void
.end method

.method public setAltituteWrtSeaLevel(F)V
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .param p1, "bearing"    # F

    .prologue
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    return-void
.end method

.method public setFixMode(I)V
    .locals 1
    .param p1, "fixMode"    # I

    .prologue
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 0
    .param p1, "val"    # F

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .param p1, "dilution"    # F

    .prologue
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    return-void
.end method

.method public setHybridMode(I)V
    .locals 1
    .param p1, "hybridMode"    # I

    .prologue
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHybridMode:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 1
    .param p1, "variation"    # F

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    return-void
.end method

.method public setMajorAxis(F)V
    .locals 0
    .param p1, "axis"    # F

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .param p1, "axis"    # F

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .param p1, "dilution"    # F

    .prologue
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    return-void
.end method

.method public setPositionUncertaintyError(FFFFF)V
    .locals 1
    .param p1, "horizontalConfidence"    # F
    .param p2, "verticalAccuracy"    # F
    .param p3, "majorAxis"    # F
    .param p4, "majorAxisAngle"    # F
    .param p5, "minorAxis"    # F

    .prologue
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->setHorizontalConfidence(F)V

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwLocation;->setVerticalAccuracy(F)V

    invoke-virtual {p0, p3}, Lcom/vzw/location/VzwLocation;->setMajorAxis(F)V

    invoke-virtual {p0, p4}, Lcom/vzw/location/VzwLocation;->setMajorAxisAngle(F)V

    invoke-virtual {p0, p5}, Lcom/vzw/location/VzwLocation;->setMinorAxis(F)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    return-void
.end method

.method public setValidField(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method public setVerticalAccuracy(F)V
    .locals 0
    .param p1, "verticalAccuracy"    # F

    .prologue
    invoke-super {p0, p1}, Landroid/location/Location;->setAccuracy(F)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .param p1, "dilution"    # F

    .prologue
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFixMode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mHorizontalConfidence=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMajorAxis=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMinorAxis=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mPositionDilution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mHorizontalDilution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mVerticalDilution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMagneticVariation=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAltitudeWRTSeaLevel=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAltitudeWRTEllipse=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mVerticalAccuracy=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
