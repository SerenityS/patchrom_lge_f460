.class final Lcom/lge/wfds_data/WfdsInfo$1;
.super Ljava/lang/Object;
.source "WfdsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds_data/WfdsInfo;
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
        "Lcom/lge/wfds_data/WfdsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds_data/WfdsInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 150
    new-instance v0, Lcom/lge/wfds_data/WfdsInfo;

    invoke-direct {v0}, Lcom/lge/wfds_data/WfdsInfo;-><init>()V

    .line 151
    .local v0, "info":Lcom/lge/wfds_data/WfdsInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsRequestRole:I

    .line 162
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/lge/wfds_data/WfdsInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds_data/WfdsInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds_data/WfdsInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 166
    new-array v0, p1, [Lcom/lge/wfds_data/WfdsInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/lge/wfds_data/WfdsInfo$1;->newArray(I)[Lcom/lge/wfds_data/WfdsInfo;

    move-result-object v0

    return-object v0
.end method
