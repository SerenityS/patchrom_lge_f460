.class final Lcom/vzw/location/VzwGpsConfigInit$1;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsConfigInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vzw/location/VzwGpsConfigInit;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwGpsConfigInit.Creator"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsConfigInit;
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    new-instance v2, Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsConfigInit;-><init>()V

    .local v2, "configObj":Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .local v3, "id":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "password":Ljava/lang/String;
    invoke-virtual {v2, v3, v4, v9}, Lcom/vzw/location/VzwGpsConfigInit;->setCredentials(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "smsPrefix":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {v2, v10, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "mpcHostIndicator":I
    const/4 v5, 0x0

    .local v5, "mpcHost":Ljava/net/InetAddress;
    const/4 v11, -0x1

    if-eq v7, v11, :cond_0

    move v1, v7

    .local v1, "arraySize":I
    new-array v6, v1, [B

    .local v6, "mpcHostAsByteArray":[B
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    :try_start_0
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v1    # "arraySize":I
    .end local v6    # "mpcHostAsByteArray":[B
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "mpcHostPort":I
    invoke-virtual {v2, v5, v8}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/net/InetAddress;I)V

    return-object v2

    .end local v8    # "mpcHostPort":I
    .restart local v1    # "arraySize":I
    .restart local v6    # "mpcHostAsByteArray":[B
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsConfigInit;
    .locals 1
    .param p1, "i"    # I

    .prologue
    new-array v0, p1, [Lcom/vzw/location/VzwGpsConfigInit;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit$1;->newArray(I)[Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v0

    return-object v0
.end method
