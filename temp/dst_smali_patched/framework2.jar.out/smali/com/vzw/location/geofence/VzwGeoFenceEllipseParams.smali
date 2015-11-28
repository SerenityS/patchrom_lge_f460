.class public Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
.super Ljava/lang/Object;
.source "VzwGeoFenceEllipseParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mSemiMajor:F

.field public final mSemiMajorMax:F

.field public final mSemiMajorMin:F

.field public final mSemiMinor:F

.field public final mSemiMinorAngle:I

.field public final mSemiMinorMax:F

.field public final mSemiMinorMin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams$1;

    invoke-direct {v0}, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams$1;-><init>()V

    sput-object v0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFFFI)V
    .locals 0
    .param p1, "semiMajor"    # F
    .param p2, "semiMajorMin"    # F
    .param p3, "semiMajorMax"    # F
    .param p4, "semiMinor"    # F
    .param p5, "semiMinorMin"    # F
    .param p6, "semiMinorMax"    # F
    .param p7, "semiMinorAngle"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajor:F

    iput p2, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMin:F

    iput p3, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMax:F

    iput p4, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinor:F

    iput p5, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMin:F

    iput p6, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMax:F

    iput p7, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajor:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMax:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinor:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMax:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorAngle:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMajorMax:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorMax:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;->mSemiMinorAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
