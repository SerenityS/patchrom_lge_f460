.class final Landroid/content/thm/ThemePackageInfo$1;
.super Ljava/lang/Object;
.source "ThemePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/thm/ThemePackageInfo;
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
        "Landroid/content/thm/ThemePackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/thm/ThemePackageInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Landroid/content/thm/ThemePackageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/thm/ThemePackageInfo;-><init>(Landroid/os/Parcel;Landroid/content/thm/ThemePackageInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/thm/ThemePackageInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/thm/ThemePackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/thm/ThemePackageInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Landroid/content/thm/ThemePackageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/thm/ThemePackageInfo$1;->newArray(I)[Landroid/content/thm/ThemePackageInfo;

    move-result-object v0

    return-object v0
.end method
