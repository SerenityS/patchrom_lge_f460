.class public abstract Lcom/android/internal/telephony/dataconnection/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DataProfile"


# instance fields
.field public apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public carrier:Ljava/lang/String;

.field public carrierEnabled:Z

.field public final id:I

.field public inactivityTimer:I

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field public maxconn:I

.field public maxconn_t:I

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public roamingProtocol:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public wait_time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "types"    # [Ljava/lang/String;
    .param p8, "protocol"    # Ljava/lang/String;
    .param p9, "roamingProtocol"    # Ljava/lang/String;
    .param p10, "bearer"    # I

    .prologue
    .line 94
    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v17}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "types"    # [Ljava/lang/String;
    .param p8, "protocol"    # Ljava/lang/String;
    .param p9, "roamingProtocol"    # Ljava/lang/String;
    .param p10, "bearer"    # I
    .param p11, "carrier"    # Ljava/lang/String;
    .param p12, "proxy"    # Ljava/lang/String;
    .param p13, "port"    # Ljava/lang/String;
    .param p14, "mmsc"    # Ljava/lang/String;
    .param p15, "mmsProxy"    # Ljava/lang/String;
    .param p16, "mmsPort"    # Ljava/lang/String;
    .param p17, "carrierEnabled"    # Z

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 102
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    .line 103
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    .line 108
    iput p6, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    .line 109
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    .line 110
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 111
    iput p10, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    .line 113
    iput-object p11, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrier:Ljava/lang/String;

    .line 114
    iput-object p12, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    .line 115
    iput-object p13, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsc:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsProxy:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsPort:Ljava/lang/String;

    .line 119
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    .line 123
    const/16 v1, 0x3ff

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn:I

    .line 124
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn_t:I

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->wait_time:I

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->inactivityTimer:I

    .line 130
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIII)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "types"    # [Ljava/lang/String;
    .param p8, "protocol"    # Ljava/lang/String;
    .param p9, "roamingProtocol"    # Ljava/lang/String;
    .param p10, "bearer"    # I
    .param p11, "carrier"    # Ljava/lang/String;
    .param p12, "proxy"    # Ljava/lang/String;
    .param p13, "port"    # Ljava/lang/String;
    .param p14, "mmsc"    # Ljava/lang/String;
    .param p15, "mmsProxy"    # Ljava/lang/String;
    .param p16, "mmsPort"    # Ljava/lang/String;
    .param p17, "carrierEnabled"    # Z
    .param p18, "maxconn"    # I
    .param p19, "maxconn_t"    # I
    .param p20, "wait_time"    # I
    .param p21, "inactivityTimer"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 141
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    .line 142
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    .line 144
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    .line 147
    iput p6, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    .line 148
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    .line 149
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 150
    iput p10, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    .line 152
    iput-object p11, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrier:Ljava/lang/String;

    .line 153
    iput-object p12, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    .line 154
    iput-object p13, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsc:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsProxy:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsPort:Ljava/lang/String;

    .line 158
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    .line 160
    const/4 v1, -0x1

    move/from16 v0, p18

    if-ne v0, v1, :cond_0

    const/16 v1, 0x3ff

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn:I

    .line 162
    :goto_0
    const/4 v1, -0x1

    move/from16 v0, p19

    if-ne v0, v1, :cond_1

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn_t:I

    .line 164
    :goto_1
    const/4 v1, -0x1

    move/from16 v0, p20

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->wait_time:I

    .line 168
    :goto_2
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->inactivityTimer:I

    .line 170
    return-void

    .line 161
    :cond_0
    move/from16 v0, p18

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn:I

    goto :goto_0

    .line 163
    :cond_1
    move/from16 v0, p19

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn_t:I

    goto :goto_1

    .line 165
    :cond_2
    move/from16 v0, p20

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->wait_time:I

    goto :goto_2
.end method


# virtual methods
.method public abstract canHandleType(Ljava/lang/String;)Z
.end method

.method public abstract getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
.end method

.method public abstract getProfileId()I
.end method

.method public getServiceTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAsActive(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 180
    return-void
.end method

.method setAsInactive()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 184
    return-void
.end method

.method public abstract toHash()Ljava/lang/String;
.end method

.method public abstract toPcoString()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[DataProfile] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 200
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn_t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->wait_time:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
