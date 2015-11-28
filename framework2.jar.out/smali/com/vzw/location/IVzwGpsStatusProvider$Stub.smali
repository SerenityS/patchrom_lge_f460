.class public abstract Lcom/vzw/location/IVzwGpsStatusProvider$Stub;
.super Landroid/os/Binder;
.source "IVzwGpsStatusProvider.java"

# interfaces
.implements Lcom/vzw/location/IVzwGpsStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwGpsStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwGpsStatusProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwGpsStatusProvider"

.field static final TRANSACTION_addVzwGpsStatusListener:I = 0x1

.field static final TRANSACTION_removeVzwGpsStatusListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.vzw.location.IVzwGpsStatusProvider"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwGpsStatusProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.vzw.location.IVzwGpsStatusProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/IVzwGpsStatusProvider;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/vzw/location/IVzwGpsStatusProvider;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/vzw/location/IVzwGpsStatusProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vzw/location/IVzwGpsStatusProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "com.vzw.location.IVzwGpsStatusProvider"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.vzw.location.IVzwGpsStatusProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/IVzwGpsStatusProvider$Stub;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;II)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_2
    const-string v4, "com.vzw.location.IVzwGpsStatusProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Lcom/vzw/location/IVzwGpsStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/IVzwGpsStatusProvider$Stub;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;II)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
