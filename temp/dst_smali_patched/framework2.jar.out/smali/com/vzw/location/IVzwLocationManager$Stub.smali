.class public abstract Lcom/vzw/location/IVzwLocationManager$Stub;
.super Landroid/os/Binder;
.source "IVzwLocationManager.java"

# interfaces
.implements Lcom/vzw/location/IVzwLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwLocationManager"

.field static final TRANSACTION_addProximityAlert:I = 0xb

.field static final TRANSACTION_addVzwGpsStatusListener:I = 0x7

.field static final TRANSACTION_getAllProviders:I = 0x2

.field static final TRANSACTION_getBestProvider:I = 0x3

.field static final TRANSACTION_getProviderInfo:I = 0x4

.field static final TRANSACTION_getProviders:I = 0xa

.field static final TRANSACTION_isProviderEnabled:I = 0x9

.field static final TRANSACTION_removeProximityAlert:I = 0xc

.field static final TRANSACTION_removeUpdates:I = 0x6

.field static final TRANSACTION_removeVzwGpsStatusListener:I = 0x8

.field static final TRANSACTION_reportGpsDeviceStatusChanged:I = 0xf

.field static final TRANSACTION_reportLocation:I = 0xd

.field static final TRANSACTION_reportSvStatusChanged:I = 0xe

.field static final TRANSACTION_requestLocationUpdates:I = 0x5

.field static final TRANSACTION_setVzwGpsConfigInit:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.vzw.location.IVzwLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/IVzwLocationManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vzw/location/IVzwLocationManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vzw/location/IVzwLocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vzw/location/IVzwLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwGpsConfigInit;

    .local v2, "_arg1":Lcom/vzw/location/VzwGpsConfigInit;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/vzw/location/IVzwLocationManager$Stub;->setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v2    # "_arg1":Lcom/vzw/location/VzwGpsConfigInit;
    .end local v8    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/vzw/location/VzwGpsConfigInit;
    goto :goto_1

    .restart local v8    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/vzw/location/VzwGpsConfigInit;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v9

    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->getBestProvider(Z)Ljava/lang/String;

    move-result-object v8

    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :sswitch_4
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwCriteria;

    .local v2, "_arg1":Lcom/vzw/location/VzwCriteria;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vzw/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/ILocationListener;

    move-result-object v3

    .local v3, "_arg2":Lcom/vzw/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    .local v4, "_arg3":Z
    :goto_6
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vzw/location/IVzwLocationManager$Stub;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/ILocationListener;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Lcom/vzw/location/VzwCriteria;
    .end local v3    # "_arg2":Lcom/vzw/location/ILocationListener;
    .end local v4    # "_arg3":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/vzw/location/VzwCriteria;
    goto :goto_5

    .restart local v3    # "_arg2":Lcom/vzw/location/ILocationListener;
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/vzw/location/VzwCriteria;
    .end local v3    # "_arg2":Lcom/vzw/location/ILocationListener;
    :sswitch_6
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vzw/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/ILocationListener;

    move-result-object v1

    .local v1, "_arg0":Lcom/vzw/location/ILocationListener;
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->removeUpdates(Lcom/vzw/location/ILocationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/vzw/location/ILocationListener;
    :sswitch_7
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .local v1, "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .end local v1    # "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    .end local v8    # "_result":Z
    :sswitch_8
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .restart local v1    # "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    :sswitch_9
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_a
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_9
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->getProviders(Z)Ljava/util/List;

    move-result-object v9

    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    :sswitch_b
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .local v1, "_arg0":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->addProximityAlert(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    goto :goto_a

    .end local v1    # "_arg0":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :sswitch_c
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->removeProximityAlert(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_b

    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_d
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "_arg0":Landroid/location/Location;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/vzw/location/IVzwLocationManager$Stub;->reportLocation(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/location/Location;
    .end local v2    # "_arg1":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/location/Location;
    goto :goto_c

    .end local v1    # "_arg0":Landroid/location/Location;
    :sswitch_e
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .local v4, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .local v5, "_arg4":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    .local v6, "_arg5":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    .local v7, "_arg6":[F
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/IVzwLocationManager$Stub;->reportSvStatusChanged(II[I[I[F[F[F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":[F
    .end local v6    # "_arg5":[F
    .end local v7    # "_arg6":[F
    :sswitch_f
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/vzw/location/VzwGpsDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsDeviceStatus;

    .local v1, "_arg0":Lcom/vzw/location/VzwGpsDeviceStatus;
    :goto_d
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->reportGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/vzw/location/VzwGpsDeviceStatus;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/vzw/location/VzwGpsDeviceStatus;
    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
