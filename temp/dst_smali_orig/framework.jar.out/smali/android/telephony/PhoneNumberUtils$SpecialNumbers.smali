.class Landroid/telephony/PhoneNumberUtils$SpecialNumbers;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialNumbers"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public resIDOfNums:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "resIDOfNums"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbers;->resIDOfNums:I

    return-void
.end method
