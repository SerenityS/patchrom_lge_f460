.class public abstract Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.super Landroid/os/Binder;
.source "IVzwGpsStatusListener.java"

# interfaces
.implements Lcom/vzw/location/IVzwGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwGpsStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwGpsStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwGpsStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x1

.field static final TRANSACTION_onGpsDeviceStatusChanged:I = 0x5

.field static final TRANSACTION_onGpsStatusChanged:I = 0x4

.field static final TRANSACTION_onSatStatusChanged:I = 0x3

.field static final TRANSACTION_onSvStatusChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.vzw.location.IVzwGpsStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/IVzwGpsStatusListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vzw/location/IVzwGpsStatusListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vzw/location/IVzwGpsStatusListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onFirstFix(I)V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
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

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onSvStatusChanged(II[I[I[F[F[F)V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":[F
    .end local v6    # "_arg5":[F
    .end local v7    # "_arg6":[F
    :sswitch_3
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .restart local v3    # "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .restart local v4    # "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .restart local v5    # "_arg4":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    .restart local v6    # "_arg5":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    .restart local v7    # "_arg6":[F
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onSatStatusChanged(II[I[I[F[F[F)V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":[F
    .end local v6    # "_arg5":[F
    .end local v7    # "_arg6":[F
    :sswitch_4
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onGpsStatusChanged(I)V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":I
    :sswitch_5
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vzw/location/VzwGpsDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsDeviceStatus;

    .local v1, "_arg0":Lcom/vzw/location/VzwGpsDeviceStatus;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    move v0, v8

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/vzw/location/VzwGpsDeviceStatus;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/vzw/location/VzwGpsDeviceStatus;
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
