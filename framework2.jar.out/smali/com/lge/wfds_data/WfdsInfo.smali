.class public Lcom/lge/wfds_data/WfdsInfo;
.super Ljava/lang/Object;
.source "WfdsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds_data/WfdsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WfdsInfo"


# instance fields
.field public mWfdsAdvertiseId:I

.field public mWfdsInterfaceAddress:Ljava/lang/String;

.field public mWfdsRequestRole:I

.field public mWfdsServiceInfo:Ljava/lang/String;

.field public mWfdsServiceName:Ljava/lang/String;

.field public mWfdsServiceStatus:I

.field public mWfdsSessionDeviceName:Ljava/lang/String;

.field public mWfdsSessionId:I

.field public mWfdsSessionInfo:Ljava/lang/String;

.field public mWfdsSessionMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/lge/wfds_data/WfdsInfo$1;

    invoke-direct {v0}, Lcom/lge/wfds_data/WfdsInfo$1;-><init>()V

    sput-object v0, Lcom/lge/wfds_data/WfdsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 78
    iput v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    .line 79
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    .line 81
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    .line 84
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsRequestRole:I

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/lge/wfds_data/WfdsInfo;)V
    .locals 1
    .param p1, "source"    # Lcom/lge/wfds_data/WfdsInfo;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 108
    iget v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    .line 109
    iget-object v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 110
    iget v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    .line 111
    iget-object v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 113
    iget v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    .line 114
    iget-object v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 116
    iget v0, p1, Lcom/lge/wfds_data/WfdsInfo;->mWfdsRequestRole:I

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsRequestRole:I

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "advId"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    .line 94
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    .line 96
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    .line 99
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsRequestRole:I

    .line 102
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v2, "0x%08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "strId":Ljava/lang/String;
    const-string v2, " advertise id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 175
    const-string v2, "\n service name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "\n service info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v2, "\n service status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 182
    const-string v2, "\n session id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 183
    const-string v2, "\n session Mac: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v2, "\n session info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v2, "\n session device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsAdvertiseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsServiceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/lge/wfds_data/WfdsInfo;->mWfdsRequestRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
