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
    .line 2977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2978
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    .line 2979
    iput p2, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbers;->resIDOfNums:I

    .line 2980
    return-void
.end method
