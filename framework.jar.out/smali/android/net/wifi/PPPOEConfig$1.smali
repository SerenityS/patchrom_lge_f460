.class final Landroid/net/wifi/PPPOEConfig$1;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PPPOEConfig;
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
        "Landroid/net/wifi/PPPOEConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 152
    new-instance v0, Landroid/net/wifi/PPPOEConfig;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEConfig;-><init>()V

    .line 153
    .local v0, "info":Landroid/net/wifi/PPPOEConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->mru:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    .line 162
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/PPPOEConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 166
    new-array v0, p1, [Landroid/net/wifi/PPPOEConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEConfig$1;->newArray(I)[Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    return-object v0
.end method
