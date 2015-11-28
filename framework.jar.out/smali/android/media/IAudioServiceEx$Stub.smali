.class public Landroid/media/IAudioServiceEx$Stub;
.super Ljava/lang/Object;
.source "IAudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_GETACTIVESTREAMTYPE:I = 0x3ed

.field static final TRANSACTION_GETPLAYERLIST:I = 0x2714

.field static final TRANSACTION_GETPLAYERPLAYBACKSTATE:I = 0x2713

.field static final TRANSACTION_SETSTREAMVOLUMEALL:I = 0x2712

.field static final TRANSACTION_isSpeakerOnForMedia:I = 0x2710

.field static final TRANSACTION_setSpeakerOnForMedia:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static asInterface(Landroid/media/IAudioService;)Landroid/media/IAudioServiceEx;
    .locals 1
    .param p0, "obj"    # Landroid/media/IAudioService;

    .prologue
    .line 38
    new-instance v0, Landroid/media/IAudioServiceEx$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IAudioServiceEx$Stub$Proxy;-><init>(Landroid/media/IAudioService;)V

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServiceEx;
    .locals 1
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServiceEx$Stub;->asInterface(Landroid/media/IAudioService;)Landroid/media/IAudioServiceEx;

    move-result-object v0

    return-object v0
.end method

.method public static onTransasct(Landroid/media/IAudioServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p0, "server"    # Landroid/media/IAudioServiceEx;
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 84
    const/4 v9, 0x0

    :goto_0
    return v9

    .line 44
    :sswitch_0
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-interface {p0}, Landroid/media/IAudioServiceEx;->isSpeakerOnForMedia()Z

    move-result v5

    .line 46
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    if-eqz v5, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    const/4 v9, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 50
    .end local v5    # "_result":Z
    :sswitch_1
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    .line 53
    .local v0, "_arg0":Z
    :goto_2
    invoke-interface {p0, v0}, Landroid/media/IAudioServiceEx;->setSpeakerOnForMedia(Z)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v9, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "_arg0":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 57
    :sswitch_2
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, "_arg3":I
    invoke-interface {p0, v1, v2, v3}, Landroid/media/IAudioServiceEx;->setStreamVolumeAll(III)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v9, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_3
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Landroid/media/IAudioServiceEx;->getPlayerPlayBackState()Ljava/util/List;

    move-result-object v6

    .line 67
    .local v6, "_result1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 69
    const/4 v9, 0x1

    goto :goto_0

    .line 71
    .end local v6    # "_result1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-interface {p0}, Landroid/media/IAudioServiceEx;->getPlayerList()Ljava/util/List;

    move-result-object v7

    .line 73
    .local v7, "_result2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 75
    const/4 v9, 0x1

    goto :goto_0

    .line 77
    .end local v7    # "_result2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .local v4, "_arg4":I
    invoke-interface {p0, v4}, Landroid/media/IAudioServiceEx;->getActiveStreamType(I)I

    move-result v8

    .line 80
    .local v8, "_result3":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v9, 0x1

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_5
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_4
    .end sparse-switch
.end method
