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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;->number:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;->resString:Ljava/lang/String;

    return-void
.end method
