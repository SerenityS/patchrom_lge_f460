.class public Lcom/vzw/location/VzwGpsDeviceStatus;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final HW_STATE_IDLE:I = 0x2

.field public static final HW_STATE_ON:I = 0x1

.field public static final HW_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VzwGpsDeviceStatus"

.field public static final VALID_ALM_SV_MASK:I = 0x4

.field public static final VALID_DEV_ERROR:I = 0x20

.field public static final VALID_EPH_SV_MASK:I = 0x2

.field public static final VALID_HW_STATE:I = 0x1

.field public static final VALID_SAT_IN_VIEW_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final VALID_SAT_IN_VIEW_PRN:I = 0x8

.field public static final VALID_SAT_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x10


# instance fields
.field private mHwState:I

.field private mSatelliteCount:I

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field private mValidFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x60

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v2, Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 1
    .param p1, "copy"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    new-array v0, v0, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsDeviceStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwGpsDeviceStatus;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setValidFields(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwGpsDeviceStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwGpsDeviceStatus;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setSatelliteCount(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwGpsDeviceStatus;)I
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    return v0
.end method

.method private setSatelliteCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    return-void
.end method

.method private setValidFields(I)V
    .locals 0
    .param p1, "fields"    # I

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHwState()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return-void
.end method

.method public satellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$2;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$2;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    return-object v0
.end method

.method public setHwState(I)V
    .locals 1
    .param p1, "hwState"    # I

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    return-void
.end method

.method public declared-synchronized setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 4
    .param p1, "copyFrom"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    monitor-enter p0

    :try_start_0
    iget v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    iput v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    iget v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    iput v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    iget v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    iput v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    const/4 v0, 0x0

    .local v0, "from":Lcom/vzw/location/VzwGpsSatelliteStatus;
    const/4 v2, 0x0

    .local v2, "to":Lcom/vzw/location/VzwGpsSatelliteStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v0, v3, v1

    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v3, v1

    iget v3, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    iput v3, v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    iget-boolean v3, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    iget-boolean v3, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    iget v3, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    iput v3, v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "from":Lcom/vzw/location/VzwGpsSatelliteStatus;
    .end local v1    # "i":I
    .end local v2    # "to":Lcom/vzw/location/VzwGpsSatelliteStatus;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setStatus([F[IJJ)V
    .locals 10
    .param p1, "cnr"    # [F
    .param p2, "prn"    # [I
    .param p3, "ephemerisMask"    # J
    .param p5, "almanacMask"    # J

    .prologue
    monitor-enter p0

    :try_start_0
    array-length v6, p1

    array-length v7, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "numberOfSv":I
    const-string v6, "VzwGpsDeviceStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setStatus] cnr.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prn.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    const-wide/16 v6, 0x1

    shl-long v0, v6, v2

    .local v0, "flag":J
    and-long v6, v0, p3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .local v5, "validEphemeris":Z
    :goto_1
    and-long v6, v0, p5

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .local v4, "validAlmanac":Z
    :goto_2
    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    aget v7, p2, v2

    iput v7, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    aget v7, p1, v2

    iput v7, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    iput-boolean v4, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    iput-boolean v5, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    iget v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "validAlmanac":Z
    .end local v5    # "validEphemeris":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "validEphemeris":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .end local v0    # "flag":J
    .end local v5    # "validEphemeris":Z
    :cond_4
    iget v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    or-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v2    # "i":I
    .end local v3    # "numberOfSv":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
