.class public Lcom/android/internal/telephony/gsm/BrazilianAreaInfo;
.super Ljava/lang/Object;
.source "BrazilianAreaInfo.java"


# static fields
.field private static sBrAreaLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/BrazilianAreaInfo;->sBrAreaLocation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAreaInfoIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "lac"    # I

    .prologue
    .line 22
    sput p3, Lcom/android/internal/telephony/gsm/BrazilianAreaInfo;->sBrAreaLocation:I

    .line 24
    return-void
.end method

.method static areaChanged(I)Z
    .locals 1
    .param p0, "lac"    # I

    .prologue
    .line 17
    if-lez p0, :cond_0

    sget v0, Lcom/android/internal/telephony/gsm/BrazilianAreaInfo;->sBrAreaLocation:I

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
