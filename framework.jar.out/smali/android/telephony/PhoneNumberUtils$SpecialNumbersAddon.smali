.class Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialNumbersAddon"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public resString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "resString"    # Ljava/lang/String;

    .prologue
    .line 3011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3012
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;->number:Ljava/lang/String;

    .line 3013
    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;->resString:Ljava/lang/String;

    .line 3014
    return-void
.end method
