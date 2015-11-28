.class public Landroid/net/wifi/PPPOEConfig;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PPPOEConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPPOE_DEFAULT_INTERFACE:Ljava/lang/String; = "wlan0"

.field public static final PPPOE_DEFAULT_LCP_ECHO_FAILURE:I = 0x3

.field public static final PPPOE_DEFAULT_LCP_ECHO_INTERVAL:I = 0x14

.field public static final PPPOE_DEFAULT_MRU:I = 0x5d4

.field public static final PPPOE_DEFAULT_MSS:I = 0x584

.field public static final PPPOE_DEFAULT_MTU:I = 0x5d4

.field public static final PPPOE_DEFAULT_TIMEOUT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "PPPOEConfig"


# instance fields
.field public MSS:I

.field public interf:Ljava/lang/String;

.field public lcp_echo_failure:I

.field public lcp_echo_interval:I

.field public mru:I

.field public mtu:I

.field public password:Ljava/lang/String;

.field public timeout:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/PPPOEConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    const-string v0, "wlan0"

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/PPPOEConfig;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->mru:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->MSS:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultPPPOEConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x5d4

    iput-object p1, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    const-string v0, "wlan0"

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    const/16 v0, 0x14

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    const/16 v0, 0x1e

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    const/16 v0, 0x584

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .local v0, "none":Ljava/lang/String;
    const-string v2, "username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    if-nez v3, :cond_2

    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", lcp_echo_interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", lcp_echo_failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mtu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mru: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MSS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
