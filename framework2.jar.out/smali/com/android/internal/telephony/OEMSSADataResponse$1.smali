.class final Lcom/android/internal/telephony/OEMSSADataResponse$1;
.super Ljava/lang/Object;
.source "OEMSSADataResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OEMSSADataResponse;
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
        "Lcom/android/internal/telephony/OEMSSADataResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OEMSSADataResponse;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "send_buf_num":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "data_len":I
    new-array v0, v1, [B

    .line 62
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 63
    new-instance v3, Lcom/android/internal/telephony/OEMSSADataResponse;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/internal/telephony/OEMSSADataResponse;-><init>(II[B)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OEMSSADataResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OEMSSADataResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/OEMSSADataResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 67
    new-array v0, p1, [Lcom/android/internal/telephony/OEMSSADataResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OEMSSADataResponse$1;->newArray(I)[Lcom/android/internal/telephony/OEMSSADataResponse;

    move-result-object v0

    return-object v0
.end method
