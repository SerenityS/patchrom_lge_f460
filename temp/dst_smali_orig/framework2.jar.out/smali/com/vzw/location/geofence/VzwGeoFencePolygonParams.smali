.class public Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;
.super Ljava/lang/Object;
.source "VzwGeoFencePolygonParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGeoFencePolygonParams"


# instance fields
.field private latNorthMost:D

.field private latSouthMost:D

.field private lonEastMost:D

.field private lonWestMost:D

.field private mPolygonArea:Lcom/vzw/location/PolygonArea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams$1;

    invoke-direct {v0}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams$1;-><init>()V

    sput-object v0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4056800000000000L    # 90.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    const-wide v0, -0x3f99800000000000L    # -180.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    const-wide v0, 0x4066800000000000L    # 180.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    iput-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[VzwGeoFencePolygonParams] Create new object with Parcel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/PolygonArea;

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    invoke-direct {p0}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->setSquare()V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/PolygonArea;)V
    .locals 2
    .param p1, "polygonArea"    # Lcom/vzw/location/PolygonArea;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4056800000000000L    # 90.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    const-wide v0, -0x3f99800000000000L    # -180.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    const-wide v0, 0x4066800000000000L    # 180.0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[VzwGeoFencePolygonParams] Create new VzwGeoFencePolygonParams object with PolygonArea."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[VzwGeoFencePolygonParams] Calling setSquare()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->setSquare()V

    return-void
.end method

.method private isBetweenTwoLatitudes(DDD)Z
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "first"    # D
    .param p5, "next"    # D

    .prologue
    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    cmpg-double v0, p1, p5

    if-ltz v0, :cond_1

    :cond_0
    cmpl-double v0, p3, p1

    if-lez v0, :cond_2

    cmpl-double v0, p1, p5

    if-lez v0, :cond_2

    :cond_1
    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[isBetweenTwoLatitudes] Entering. New location is between two latitudes. ==> return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[isBetweenTwoLatitudes] Entering. New location is out of range. ==> return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLineOnRightHandSide(DDLcom/vzw/location/VzwCoordinate;Lcom/vzw/location/VzwCoordinate;)Z
    .locals 12
    .param p1, "newLatitude"    # D
    .param p3, "newLongitude"    # D
    .param p5, "first"    # Lcom/vzw/location/VzwCoordinate;
    .param p6, "next"    # Lcom/vzw/location/VzwCoordinate;

    .prologue
    const-string v6, "VzwGeoFencePolygonParams"

    const-string v7, "[isLineOnRightHandSide] Entering"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Lcom/vzw/location/VzwCoordinate;->getLongitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    move-object/from16 v5, p5

    .local v5, "tmp":Lcom/vzw/location/VzwCoordinate;
    move-object/from16 p5, p6

    move-object/from16 p6, v5

    .end local v5    # "tmp":Lcom/vzw/location/VzwCoordinate;
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v6

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p6 .. p6}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v6

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual/range {p6 .. p6}, Lcom/vzw/location/VzwCoordinate;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double v0, v6, v8

    .local v0, "m":D
    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v6

    sub-double v6, p1, v6

    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLongitude()D

    move-result-wide v8

    sub-double v8, p3, v8

    div-double v2, v6, v8

    .local v2, "mm":D
    const-string v6, "VzwGeoFencePolygonParams"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isLineOnRightHandSide] m="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | mm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p5 .. p5}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-gez v6, :cond_4

    cmpl-double v6, v2, v0

    if-gtz v6, :cond_2

    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_3

    :cond_2
    const/4 v4, 0x1

    .local v4, "ret":Z
    goto :goto_0

    .end local v4    # "ret":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "ret":Z
    goto :goto_0

    .end local v4    # "ret":Z
    :cond_4
    cmpg-double v6, v2, v0

    if-ltz v6, :cond_5

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_6

    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "ret":Z
    goto :goto_0

    .end local v4    # "ret":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "ret":Z
    goto :goto_0
.end method

.method private setSquare()V
    .locals 10

    .prologue
    iget-object v6, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    if-eqz v6, :cond_5

    const-string v6, "VzwGeoFencePolygonParams"

    const-string v7, "[setSquare] Entering. Polygon Area is not null. ==> Get iterator."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    invoke-virtual {v6}, Lcom/vzw/location/PolygonArea;->getPolygonCoordinates()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/VzwCoordinate;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwCoordinate;

    .local v0, "c":Lcom/vzw/location/VzwCoordinate;
    invoke-virtual {v0}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v2

    .local v2, "lat":D
    invoke-virtual {v0}, Lcom/vzw/location/VzwCoordinate;->getLongitude()D

    move-result-wide v4

    .local v4, "lon":D
    iget-wide v6, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    cmpl-double v6, v6, v2

    if-lez v6, :cond_1

    iput-wide v2, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    :cond_1
    iget-wide v6, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    cmpg-double v6, v6, v2

    if-gez v6, :cond_2

    iput-wide v2, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    :cond_2
    iget-wide v6, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    cmpg-double v6, v6, v4

    if-gez v6, :cond_3

    iput-wide v4, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    :cond_3
    iget-wide v6, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    cmpl-double v6, v6, v4

    if-lez v6, :cond_0

    iput-wide v4, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    goto :goto_0

    .end local v0    # "c":Lcom/vzw/location/VzwCoordinate;
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    :cond_4
    const-string v6, "VzwGeoFencePolygonParams"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setSquare] North="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | South = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | East= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | West="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/VzwCoordinate;>;"
    :cond_5
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "[setSquare] Polygon Area is null. Cannot proceed."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isInPolygon(DD)Z
    .locals 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    if-eqz v0, :cond_7

    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[isInPolygon] Entering. Polygon Area is not null. ==> Proceed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_6

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_6

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_6

    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[isInPolygon] New location is in the imaginary square. ==> Get iterator."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, "origin":Lcom/vzw/location/VzwCoordinate;
    const/4 v8, 0x0

    .local v8, "first":Lcom/vzw/location/VzwCoordinate;
    const/4 v10, 0x0

    .local v10, "next":Lcom/vzw/location/VzwCoordinate;
    const/4 v7, 0x0

    .local v7, "count":I
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    invoke-virtual {v0}, Lcom/vzw/location/PolygonArea;->getPolygonCoordinates()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/VzwCoordinate;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "first":Lcom/vzw/location/VzwCoordinate;
    check-cast v8, Lcom/vzw/location/VzwCoordinate;

    .restart local v8    # "first":Lcom/vzw/location/VzwCoordinate;
    move-object v11, v8

    goto :goto_0

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "next":Lcom/vzw/location/VzwCoordinate;
    check-cast v10, Lcom/vzw/location/VzwCoordinate;

    .restart local v10    # "next":Lcom/vzw/location/VzwCoordinate;
    invoke-virtual {v8}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v10}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->isBetweenTwoLatitudes(DDD)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v8

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->isLineOnRightHandSide(DDLcom/vzw/location/VzwCoordinate;Lcom/vzw/location/VzwCoordinate;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v7, v7, 0x1

    const-string v0, "VzwGeoFencePolygonParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isInPolygon] Current count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v8, v10

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v11}, Lcom/vzw/location/VzwCoordinate;->getLatitude()D

    move-result-wide v5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->isBetweenTwoLatitudes(DDD)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->isLineOnRightHandSide(DDLcom/vzw/location/VzwCoordinate;Lcom/vzw/location/VzwCoordinate;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    const-string v0, "VzwGeoFencePolygonParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isInPolygon] Current count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    rem-int/lit8 v0, v7, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    .end local v7    # "count":I
    .end local v8    # "first":Lcom/vzw/location/VzwCoordinate;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/VzwCoordinate;>;"
    .end local v10    # "next":Lcom/vzw/location/VzwCoordinate;
    .end local v11    # "origin":Lcom/vzw/location/VzwCoordinate;
    :goto_1
    return v0

    .restart local v7    # "count":I
    .restart local v8    # "first":Lcom/vzw/location/VzwCoordinate;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/VzwCoordinate;>;"
    .restart local v10    # "next":Lcom/vzw/location/VzwCoordinate;
    .restart local v11    # "origin":Lcom/vzw/location/VzwCoordinate;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .end local v7    # "count":I
    .end local v8    # "first":Lcom/vzw/location/VzwCoordinate;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/VzwCoordinate;>;"
    .end local v10    # "next":Lcom/vzw/location/VzwCoordinate;
    .end local v11    # "origin":Lcom/vzw/location/VzwCoordinate;
    :cond_6
    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[isInPolygon] New location is out of imaginary square ==> return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "[isInPolygon] Polygon Area is null. Cannot proceed."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[writeToParcel] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latSouthMost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->latNorthMost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonEastMost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->lonWestMost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;->mPolygonArea:Lcom/vzw/location/PolygonArea;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
