.class public abstract Landroid/net/INetworkManagementEventObserverEx$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserverEx.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserverEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserverEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserverEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserverEx"

.field static final TRANSACTION_DnsFailed:I = 0x2

.field static final TRANSACTION_DsqnNotification:I = 0x3

.field static final TRANSACTION_PlayerEvNotification:I = 0x4

.field static final TRANSACTION_interfaceLinkStateChanged:I = 0x1

.field static final TRANSACTION_interfaceThrottleStateChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserverEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserverEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.INetworkManagementEventObserverEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkManagementEventObserverEx;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/INetworkManagementEventObserverEx;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/INetworkManagementEventObserverEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkManagementEventObserverEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 57
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkManagementEventObserverEx$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v1    # "_arg1":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v3, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkManagementEventObserverEx$Stub;->DnsFailed(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v3, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkManagementEventObserverEx$Stub;->DsqnNotification(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v3, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkManagementEventObserverEx$Stub;->PlayerEvNotification(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_5
    const-string v3, "android.net.INetworkManagementEventObserverEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkManagementEventObserverEx$Stub;->interfaceThrottleStateChanged(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
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
